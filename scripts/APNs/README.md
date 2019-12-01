# APNs Test Script

## Description

Simulate push notifications on your device.

## Shell

### Requirements

- [curl](https://curl.haxx.se) : `brew install curl`
- [OpenSSL](https://www.openssl.org) : `brew install openssl`

### Usage

```sh
sh apns.sh ENV DEVICE_TOKEN
// Example:
sh apns.sh development 32b7eb64e34214012de57b92d504dbec52a2b322d44cf8456b50303fa80b0bdf
```

**Environments available:**: `development`, `testing`, `staging`, `sanity`, `beta`, `release`   

**Note 2:** The easiest way to get your device token is to launch the application and search a log starting by `# DEVICE TOKEN APNs - Dashboard:`
