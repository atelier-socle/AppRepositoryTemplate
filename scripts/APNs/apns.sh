#!/bin/bash

# apple documentation: https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/sending_notification_requests_to_apns

# --------------------------------------------------------------------------

if [ "$#" -ne 2 ] ; then
  echo "Usage: $0 ENV DEVICE_TOKEN" >&2
  exit 1
fi

authKeyId="U88BPL"
teamId="FXN48T"
endpoint="https://api.sandbox.push.apple.com:443"
authKey='./NodeJS/AuthKey/AuthKey.p8'
deviceToken=$2

env="$(tr [A-Z] [a-z] <<< "$1")"
if [ "$env" = "adhoc" ]; then
    bundleId='com.myApp.adhoc'
elif [ "$env" = "beta" ]; then
    bundleId="com.myApp.beta"
else [ "$env" = "release" ]
    bundleId="com.myApp.release"
fi

read -r -d '' payload <<-'EOF'
{
   "aps": {
      "badge": 0,
      "category": "DemoSceno",
      "alert": {
         "title": "My Title",
         "subtitle": "My Subtitle",
         "body": "My Body"
      },
      "mutable-content": 1
   },
   "data": {
   "attachment-url": "https://cdn.cnn.com/cnnnext/dam/assets/141216183300-simpsons-25-anniversary-image-4-horizontal-large-gallery.jpg"
   }
}
EOF

# --------------------------------------------------------------------------

base64() {
   openssl base64 -e -A | tr -- '+/' '-_' | tr -d =
}

sign() {
   printf "$1"| openssl dgst -binary -sha256 -sign "$authKey" | base64
}

time=$(date +%s)
header=$(printf '{ "alg": "ES256", "kid": "%s" }' "$authKeyId" | base64)
claims=$(printf '{ "iss": "%s", "iat": %d }' "$teamId" "$time" | base64)
jwt="$header.$claims.$(sign $header.$claims)"

curl --verbose \
   --header "content-type: application/json" \
   --header "authorization: bearer $jwt" \
   --header "apns-topic: $bundleId" \
   --data "$payload" \
   $endpoint/3/device/$deviceToken
