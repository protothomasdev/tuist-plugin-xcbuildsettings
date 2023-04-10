# TuistXCBuildSettings
A plugin that helps adding Xcode Build Settings in Tuist

This plugin provides an easy to use API to comfortably set Xcode BuildSettings in Tuist. It extends Tuist with methods to easily initialize and extend `ProjectDescription.SettingsDictionary` by using Swift Enums.

This offers to advantages:
1. No more typos in the setting's key name.
2. Enforced type safety for values by using associated values.

The methods and Enum cases of this plugin are automatically generated with the help of the [XcodeBuildSettingsExtractor](https://github.com/protothomasdev/XcodeBuildSettingsExtractor) tool.

**Updated for Xcode 14.3.**

## Requirements

| Xcode | 13.0+ |
| Tuist | 3.0+ |

## Installation

If you like to use this plugin, please checkout the [documentation](https://docs.tuist.io/plugins/using-plugins) on how to use plugins with Tuist.

## Usage

This plugin provides an extension for `ProjectDescription.SettingsDictionary` to initialize the dictionary with Enum cases of the settings you want.

You could either use the initializer that takes an array of BuildSettings as a parameter:

```Swift
// Array
var settings = SettingsDictionary(buildSettings: [
    .enableBitcode(true),
    .swiftStrictConcurrency(.targeted),
    ...
])

```

Or you could use the initializer with the ArrayLiteral:

```Swift
// ArrayLiteral
var settings: SettingsDictionary = [
    .enableBitcode(true),
    .swiftStrictConcurrency(.targeted),
    ...
]
```

If you want to extend an existing `SettingsDictionary`, you could simply use the `extend` or `extending` methods:

```Swift
settings.extending(with: [.enableBitcode(true)])
```