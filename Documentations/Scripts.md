
# General Scripts

**Note:** This section will explain the scripts from the [scripts directory](../scripts/).

### APNs

If you need to simulate push notification, everything is explained in the [APNs README](../scripts/APNs/README.md).

# Xcode Scripts

**Note:** This section will explain the scripts from the [xcode scripts directory](../scripts/xcode/).

**Note 2:** All these scripts will be run by `Xcode` using a `run script phase`

### Copy Plists

**Script:** `path/to/project/scripts/xcode/copy_plists.sh`

##### Description

Some of our dependencies such as `Firebase` is generating one plist by project configuration (such as `dev`, `testing`, `release`, ...). Since we can't specify in `Xcode` which `plist` is used for which `configuration`, this script will copy the right `plist` following the `configuration` used to build.

##### Usage

If you need to debug this script, here the usage to run it locally:

```sh
cd /path/to/project/scripts/xcode/
sh export_localizables.sh ENVIRONMENT DESTINATION
```