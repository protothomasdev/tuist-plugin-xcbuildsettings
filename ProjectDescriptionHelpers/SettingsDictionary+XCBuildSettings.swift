import ProjectDescription

public typealias Path = String

public extension SettingsDictionary {
    
    /// A string identifying the build system action being performed.
    func action(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ACTION"] = .string(value)
        return newDict
    }
    
    /// The locations of any sparse SDKs that should be layered on top of the one specified by [Base SDK (SDKROOT)](itcaec37c2a6.html#devabcaadbaf). If more than one SDK is listed, the first one has highest precedence. Every SDK specified in this setting should be a "sparse" SDK, for example, not an SDK for an entire macOS release.
    func additionalSdks(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ADDITIONAL_SDKS"] = .array(values)
        return newDict
    }
    
    func allOtherLdflags(_ values: [String] = ["$(LD_FLAGS)", "$(SECTORDER_FLAGS)", "$(OTHER_LDFLAGS)", "$(OTHER_LDFLAGS_$(variant))", "$(OTHER_LDFLAGS_$(arch))", "$(OTHER_LDFLAGS_$(variant)_$(arch))", "$(PRODUCT_SPECIFIC_LDFLAGS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALL_OTHER_LDFLAGS"] = .array(values)
        return newDict
    }
    
    func allOtherLibtoolflags(_ values: [String] = ["$(OTHER_LIBTOOLFLAGS)", "$(OTHER_LIBTOOLFLAGS_$(variant))", "$(OTHER_LIBTOOLFLAGS_$(arch))", "$(OTHER_LIBTOOLFLAGS_$(variant)_$(arch))", "$(PRODUCT_SPECIFIC_LIBTOOLFLAGS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALL_OTHER_LIBTOOLFLAGS"] = .array(values)
        return newDict
    }
    
    /// The group name or gid for the files listed under the [Alternate Permissions Files (ALTERNATE\_PERMISSIONS\_FILES)](itcaec37c2a6.html#dev40b8becae) setting.
    func alternateGroup(_ value: String = "$(INSTALL_GROUP)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALTERNATE_GROUP"] = .string(value)
        return newDict
    }
    
    func alternateLinker(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALTERNATE_LINKER"] = .string(value)
        return newDict
    }
    
    /// Permissions used for the files listed under the [Alternate Permissions Files (ALTERNATE\_PERMISSIONS\_FILES)](itcaec37c2a6.html#dev40b8becae) setting.
    func alternateMode(_ value: String = "$(INSTALL_MODE_FLAG)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALTERNATE_MODE"] = .string(value)
        return newDict
    }
    
    /// The owner name or uid for the files listed under the [Alternate Permissions Files (ALTERNATE\_PERMISSIONS\_FILES)](itcaec37c2a6.html#dev40b8becae) setting.
    func alternateOwner(_ value: String = "$(INSTALL_OWNER)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALTERNATE_OWNER"] = .string(value)
        return newDict
    }
    
    /// List of files to which the alternate owner, group and permissions are applied.
    func alternatePermissionsFiles(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALTERNATE_PERMISSIONS_FILES"] = .array(values)
        return newDict
    }
    
    /// Always embed the Swift standard libraries in the target's products, even if the target does not contain any Swift code. For example, this should be enabled if the target is embedding other products which contain Swift, or if it is a test target which does not contain Swift but which is testing a product which does. This setting only applies to wrapped products, not to standalone binary products.
    func alwaysEmbedSwiftStandardLibraries(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// This setting is deprecated as of Xcode 8.3 and may not be supported in future versions. It is recommended that you disable the setting.
    ///
    /// If enabled, both `#include <header.h>`-style and `#include "header.h"`-style directives search the paths in [User Header Search Paths (USER\_HEADER\_SEARCH\_PATHS)](itcaec37c2a6.html#deved642222b) before [Header Search Paths (HEADER\_SEARCH\_PATHS)](itcaec37c2a6.html#dev3c9f85d97). As a consequence, user headers, such as your own `String.h` header, have precedence over system headers when using `#include <header.h>`. This is done using the `-iquote` flag for the paths provided in [User Header Search Paths (USER\_HEADER\_SEARCH\_PATHS)](itcaec37c2a6.html#deved642222b). If disabled and your compiler fully supports separate user paths, user headers are only accessible with `#include "header.h"`-style preprocessor directives.
    ///
    /// For backwards compatibility reasons, this setting is enabled by default. Disabling it is strongly recommended.
    func alwaysSearchUserPaths(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALWAYS_SEARCH_USER_PATHS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func alwaysUseSeparateHeadermaps(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALWAYS_USE_SEPARATE_HEADERMAPS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// When enabled, this causes the compiler and linker to disallow use of APIs that are not available to app extensions and to disallow linking to frameworks that have not been built with this setting enabled.
    func applicationExtensionApiOnly(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["APPLICATION_EXTENSION_API_ONLY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enabling this setting will cause files in the target's Copy Files build phases to be processed by build rules. For example, property list files (`.plist`) and strings files will be converted as specified by [Property List Output Encoding (PLIST\_FILE\_OUTPUT\_FORMAT)](itcaec37c2a6.html#dev70f6976ed) and [Strings File Output Encoding (STRINGS\_FILE\_OUTPUT\_ENCODING)](itcaec37c2a6.html#dev8d71dff90), respectively.
    func applyRulesInCopyFiles(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["APPLY_RULES_IN_COPY_FILES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enabling this setting will cause all Public and Private headers in the target's Copy Headers build phase to be processed by build rules. This allows custom build rules to be defined to process these headers. Custom script rules can define their outputs relative to `HEADER_OUTPUT_DIR`, which will be provided to that script, taking the header visibility into account. The scripts are also passed `SCRIPT_HEADER_VISIBILITY` ("public" or "private"). Files that should not be processed by build rules may need to be moved to a Copy Files build phase when this setting is enabled.
    func applyRulesInCopyHeaders(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["APPLY_RULES_IN_COPY_HEADERS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// A list of the architectures for which the product will be built. This is usually set to a predefined build setting provided by the platform. If more than one architecture is specified, a universal binary will be produced.
    func archs(_ values: [String] = ["$(ARCHS_STANDARD)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ARCHS"] = .array(values)
        return newDict
    }
    
    func archsStandard3264Bit(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ARCHS_STANDARD_32_64_BIT"] = .array(values)
        return newDict
    }
    
    func archsStandard32Bit(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ARCHS_STANDARD_32_BIT"] = .array(values)
        return newDict
    }
    
    func archsStandard64Bit(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ARCHS_STANDARD_64_BIT"] = .array(values)
        return newDict
    }
    
    func archsStandardIncluding64Bit(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ARCHS_STANDARD_INCLUDING_64_BIT"] = .array(values)
        return newDict
    }
    
    /// Name of an asset catalog app icon set whose contents will be merged into the `Info.plist`.
    func assetcatalogCompilerAppiconName(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_APPICON_NAME"] = .string(value)
        return newDict
    }
    
    /// The name of a watch complication to use from the asset catalog.
    func assetcatalogCompilerComplicationName(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_COMPLICATION_NAME"] = .string(value)
        return newDict
    }
    
    func assetcatalogCompilerCompressPngs(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_COMPRESS_PNGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func assetcatalogCompilerDependencyInfoFile(_ value: String = "$(TARGET_TEMP_DIR)/assetcatalog_dependencies") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_DEPENDENCY_INFO_FILE"] = .string(value)
        return newDict
    }
    
    func assetcatalogCompilerEnableOnDemandResources(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_ENABLE_ON_DEMAND_RESOURCES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func assetcatalogCompilerFlattenedAppIconPath(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_FLATTENED_APP_ICON_PATH"] = .string(value)
        return newDict
    }
    
    /// The name of a color resource to use as a the target's accent color, used as the default tint color on iOS and watchOS, and accent color on macOS.
    func assetcatalogCompilerGlobalAccentColorName(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME"] = .string(value)
        return newDict
    }
    
    /// When enabled, includes the localization information of the selected assets in the generated partial Info.plist file under the CFBundleLocalizations key. This will allow the assets to be used at runtime in the absence of a corresponding lproj directory in the bundle.
    func assetcatalogCompilerIncludeInfoplistLocalizations(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_INCLUDE_INFOPLIST_LOCALIZATIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func assetcatalogCompilerIncludeStickerContent(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_INCLUDE_STICKER_CONTENT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func assetcatalogCompilerInfoplistContentFile(_ path: Path = "$(TARGET_TEMP_DIR)/assetcatalog_generated_info.plist") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_INFOPLIST_CONTENT_FILE"] = .string(path)
        return newDict
    }
    
    /// Name of an asset catalog launch image set whose contents will be merged into the `Info.plist`.
    func assetcatalogCompilerLaunchimageName(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_LAUNCHIMAGE_NAME"] = .string(value)
        return newDict
    }
    
    /// Leaderboards in the asset catalog may optionally specify a Game Center identifier. If they do not, their name will be prefixed by this value to form an automatically generated identifier.
    func assetcatalogCompilerLeaderboardIdentifierPrefix(_ value: String = "$(PRODUCT_NAME:identifier).game-center.leaderboard.") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_LEADERBOARD_IDENTIFIER_PREFIX"] = .string(value)
        return newDict
    }
    
    /// Leaderboard sets in the asset catalog may optionally specify a Game Center identifier. If they do not, their name will be prefixed by this value to form an automatically generated identifier.
    func assetcatalogCompilerLeaderboardSetIdentifierPrefix(_ value: String = "$(PRODUCT_NAME:identifier).game-center.leaderboard-set.") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_LEADERBOARD_SET_IDENTIFIER_PREFIX"] = .string(value)
        return newDict
    }
    
    enum AssetcatalogCompilerOptimizationValue: String {
        case empty = ""
        case time = "time"
        case space = "space"
    }
    
    /// With no value, the compiler uses the default optimization. You can also specify `time` to optimize for speed of access or `space` to optimize for a smaller compiled asset catalogs.
    func assetcatalogCompilerOptimization(_ value: AssetcatalogCompilerOptimizationValue = .empty) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_OPTIMIZATION"] = .string(value.rawValue)
        return newDict
    }
    
    enum AssetcatalogCompilerStandaloneIconBehaviorValue: String {
        case Default = "default"
        case all = "all"
        case none = "none"
    }
    
    /// Controls whether loose PNG or ICNS files are created for the app icon, in addition to including the content in the Assets.car file. By default, a small subset of sizes are included as loose files, allowing external management tools to display a representative icon without reading the CAR file. This can be set to 'all' or 'none' to include more or fewer icon sizes as loose files.
    func assetcatalogCompilerStandaloneIconBehavior(_ value: AssetcatalogCompilerStandaloneIconBehaviorValue = .Default) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_STANDALONE_ICON_BEHAVIOR"] = .string(value.rawValue)
        return newDict
    }
    
    /// Sticker Packs in the asset catalog may optionally specify an identifier. If they do not, their name will be prefixed by this value to form an automatically generated identifier.
    func assetcatalogCompilerStickerPackIdentifierPrefix(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_STICKER_PACK_IDENTIFIER_PREFIX"] = .string(value)
        return newDict
    }
    
    func assetcatalogCompilerStickerPackStrings(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_STICKER_PACK_STRINGS"] = .array(values)
        return newDict
    }
    
    enum AssetcatalogCompilerTargetStickersIconRoleValue: String {
        case empty = ""
        case hostApp = "host-app"
        case Extension = "extension"
    }
    
    func assetcatalogCompilerTargetStickersIconRole(_ value: AssetcatalogCompilerTargetStickersIconRoleValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_TARGET_STICKERS_ICON_ROLE"] = .string(value.rawValue)
        return newDict
    }
    
    /// The name of a color resource to use as the background color for a widget.
    func assetcatalogCompilerWidgetBackgroundColorName(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_WIDGET_BACKGROUND_COLOR_NAME"] = .string(value)
        return newDict
    }
    
    func assetcatalogFilterForDeviceModel(_ value: String = "$(TARGET_DEVICE_MODEL)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_FILTER_FOR_DEVICE_MODEL"] = .string(value)
        return newDict
    }
    
    func assetcatalogFilterForDeviceOsVersion(_ value: String = "$(TARGET_DEVICE_OS_VERSION)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_FILTER_FOR_DEVICE_OS_VERSION"] = .string(value)
        return newDict
    }
    
    /// Show notices encountered during the compilation of asset catalogs.
    func assetcatalogNotices(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_NOTICES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Pass additional flags through to the asset catalog compiler.
    func assetcatalogOtherFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_OTHER_FLAGS"] = .array(values)
        return newDict
    }
    
    enum AssetcatalogOutputFormatValue: String {
        case humanReadableText = "human-readable-text"
    }
    
    func assetcatalogOutputFormat(_ value: AssetcatalogOutputFormatValue = .humanReadableText) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_OUTPUT_FORMAT"] = .string(value.rawValue)
        return newDict
    }
    
    /// Show warnings encountered during the compilation of asset catalogs.
    func assetcatalogWarnings(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// If set to anything other than the empty string, every URL in the `AssetPackManifest.plist` file will consist of this string with the name of the asset pack appended. If not set, the URLs in the `AssetPackManifest.plist` will be formed as appropriate for the build location of the asset packs. The prefix string is not escaped or quoted in any way, so any necessary escaping must be part of the URL string. This setting affects only URLs in the `AssetPackManifest.plist` file — it does not affect where asset packs are built in the local file system.
    func assetPackManifestUrlPrefix(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSET_PACK_MANIFEST_URL_PREFIX"] = .string(value)
        return newDict
    }
    
    func additionalcommandlinearguments(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["AdditionalCommandLineArguments"] = .array(values)
        return newDict
    }
    
    func additionalcontentfilepaths(_ paths: [Path]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["AdditionalContentFilePaths"] = .array(paths)
        return newDict
    }
    
    func additionalinfofilekeys(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["AdditionalInfoFileKeys"] = .string(value)
        return newDict
    }
    
    func additionalinfofilevalues(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["AdditionalInfoFileValues"] = .string(value)
        return newDict
    }
    
    enum BitcodeGenerationModeValue: String {
        case marker = "marker"
        case bitcode = "bitcode"
    }
    
    func bitcodeGenerationMode(_ value: BitcodeGenerationModeValue = .marker) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BITCODE_GENERATION_MODE"] = .string(value.rawValue)
        return newDict
    }
    
    func buildActiveResourcesOnly(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUILD_ACTIVE_RESOURCES_ONLY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// A list of components being built during this action.
    func buildComponents(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUILD_COMPONENTS"] = .array(values)
        return newDict
    }
    
    func buildDir(_ path: Path = "$(SYMROOT)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUILD_DIR"] = .string(path)
        return newDict
    }
    
    /// Ensures that your libraries are built for distribution. For Swift, this enables support for library evolution and generation of a module interface file.
    func buildLibraryForDistribution(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUILD_LIBRARY_FOR_DISTRIBUTION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func buildRoot(_ path: Path = "$(SYMROOT)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUILD_ROOT"] = .string(path)
        return newDict
    }
    
    func buildStyle(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUILD_STYLE"] = .string(value)
        return newDict
    }
    
    /// A list of the build variants of the linked binary that will be produced. By default, only the `normal` variant is produced. Other common values include `debug` and `profile`.
    func buildVariants(_ values: [String] = ["normal"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUILD_VARIANTS"] = .array(values)
        return newDict
    }
    
    /// Identifies the directory under which all the product’s files can be found. This directory contains either product files or symbolic links to them. Run Script build phases can use the value of this build setting as a convenient way to refer to the product files built by one or more targets even when these files are scattered throughout a directory hierarchy (for example, when `DEPLOYMENT_LOCATION` is set to `YES`.
    func builtProductsDir(_ path: Path = "$(CONFIGURATION_BUILD_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUILT_PRODUCTS_DIR"] = .string(path)
        return newDict
    }
    
    func bundleContentsFolderPath(_ value: String = "$(BUNDLE_CONTENTS_FOLDER_PATH_$(BUNDLE_FORMAT))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUNDLE_CONTENTS_FOLDER_PATH"] = .string(value)
        return newDict
    }
    
    func bundleContentsFolderPathDeep(_ value: String = "Contents/") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUNDLE_CONTENTS_FOLDER_PATH_deep"] = .string(value)
        return newDict
    }
    
    func bundleExecutableFolderNameDeep(_ value: String = "MacOS") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUNDLE_EXECUTABLE_FOLDER_NAME_deep"] = .string(value)
        return newDict
    }
    
    func bundleExecutableFolderPath(_ value: String = "$(BUNDLE_CONTENTS_FOLDER_PATH)$(BUNDLE_EXECUTABLE_FOLDER_NAME_$(BUNDLE_FORMAT))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUNDLE_EXECUTABLE_FOLDER_PATH"] = .string(value)
        return newDict
    }
    
    enum BundleFormatValue: String {
        case deep = "deep"
        case shallow = "shallow"
    }
    
    func bundleFormat(_ value: BundleFormatValue = .shallow) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUNDLE_FORMAT"] = .string(value.rawValue)
        return newDict
    }
    
    func bundleFrameworksFolderPath(_ value: String = "$(BUNDLE_CONTENTS_FOLDER_PATH)Frameworks") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUNDLE_FRAMEWORKS_FOLDER_PATH"] = .string(value)
        return newDict
    }
    
    /// Specifies the executable that will load the bundle output file being linked. Undefined symbols from the bundle are checked against the specified executable as if it is one of the dynamic libraries the bundle was linked with.
    func bundleLoader(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUNDLE_LOADER"] = .string(value)
        return newDict
    }
    
    func bundlePluginsFolderPath(_ value: String = "$(BUNDLE_CONTENTS_FOLDER_PATH)PlugIns") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUNDLE_PLUGINS_FOLDER_PATH"] = .string(value)
        return newDict
    }
    
    func bundlePrivateHeadersFolderPath(_ value: String = "$(BUNDLE_CONTENTS_FOLDER_PATH)PrivateHeaders") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUNDLE_PRIVATE_HEADERS_FOLDER_PATH"] = .string(value)
        return newDict
    }
    
    func bundlePublicHeadersFolderPath(_ value: String = "$(BUNDLE_CONTENTS_FOLDER_PATH)Headers") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUNDLE_PUBLIC_HEADERS_FOLDER_PATH"] = .string(value)
        return newDict
    }
    
    func cc(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CC"] = .string(path)
        return newDict
    }
    
    func cchroot(_ path: Path = "$(CACHE_ROOT)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CCHROOT"] = .string(path)
        return newDict
    }
    
    func chmod(_ path: Path = "/bin/chmod") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CHMOD"] = .string(path)
        return newDict
    }
    
    func chown(_ path: Path = "/usr/sbin/chown") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CHOWN"] = .string(path)
        return newDict
    }
    
    func clang(_ path: Path = "clang") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG"] = .string(path)
        return newDict
    }
    
    func clangAddressSanitizer(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ADDRESS_SANITIZER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangAddressSanitizerAllowErrorRecovery(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ADDRESS_SANITIZER_ALLOW_ERROR_RECOVERY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Check for C++ container overflow when Address Sanitizer is enabled. This check requires the entire application to be built with Address Sanitizer. If not, it may report false positives.
    func clangAddressSanitizerContainerOverflow(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ADDRESS_SANITIZER_CONTAINER_OVERFLOW"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangAddressSanitizerUseAfterScope(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ADDRESS_SANITIZER_USE_AFTER_SCOPE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enabling this setting allows non-modular includes to be used from within framework modules. This is inherently unsafe, as such headers might cause duplicate definitions when used by any client that imports both the framework and the non-modular includes.
    func clangAllowNonModularIncludesInFrameworkModules(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangAnalyzerAlternateEdges(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_ALTERNATE_EDGES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Check for values stored to variables and never read again.
    func clangAnalyzerDeadcodeDeadstores(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_DEADCODE_DEADSTORES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangAnalyzerDefines(_ value: String = "-D__clang_analyzer__") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_DEFINES"] = .string(value)
        return newDict
    }
    
    func clangAnalyzerDivideByZero(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_DIVIDE_BY_ZERO"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangAnalyzerExec(_ path: Path = "clang") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_EXEC"] = .string(path)
        return newDict
    }
    
    /// Check for misuses of the Grand Central Dispatch API.
    func clangAnalyzerGcd(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_GCD"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangAnalyzerGcdPerformanceValue: String {
        case yes = "YES"
        case no = "NO"
    }
    
    /// Check for Grand Central Dispatch idioms that may lead to poor performance.
    func clangAnalyzerGcdPerformance(_ value: ClangAnalyzerGcdPerformanceValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_GCD_PERFORMANCE"] = .string(value.rawValue)
        return newDict
    }
    
    /// Finds leaks and overreleases associated with objects inheriting from OSObject
    func clangAnalyzerLibkernRetainCount(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_LIBKERN_RETAIN_COUNT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangAnalyzerLocalizabilityEmptyContextValue: String {
        case yes = "YES"
        case no = "NO"
    }
    
    /// Warn when a call to an `NSLocalizedString()` macro is missing a context comment for the localizer.
    func clangAnalyzerLocalizabilityEmptyContext(_ value: ClangAnalyzerLocalizabilityEmptyContextValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_LOCALIZABILITY_EMPTY_CONTEXT"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangAnalyzerLocalizabilityNonlocalizedValue: String {
        case yes = "YES"
        case no = "NO"
    }
    
    /// Warn when a nonlocalized string is passed to a user interface method expecting a localized string.
    func clangAnalyzerLocalizabilityNonlocalized(_ value: ClangAnalyzerLocalizabilityNonlocalizedValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_LOCALIZABILITY_NONLOCALIZED"] = .string(value.rawValue)
        return newDict
    }
    
    func clangAnalyzerMalloc(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_MALLOC"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn about memory leaks, use-after-free, and other API misuses.
    func clangAnalyzerMemoryManagement(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_MEMORY_MANAGEMENT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangAnalyzerMigConventionsValue: String {
        case yes = "YES"
        case no = "NO"
    }
    
    /// Warn when a MIG routine violates memory management conventions.
    func clangAnalyzerMigConventions(_ value: ClangAnalyzerMigConventionsValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_MIG_CONVENTIONS"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangAnalyzerNonnullValue: String {
        case yes = "YES"
        case yesNonaggressive = "YES_NONAGGRESSIVE"
        case no = "NO"
    }
    
    /// Check for misuses of `nonnull` parameter and return types.
    func clangAnalyzerNonnull(_ value: ClangAnalyzerNonnullValue = .yesNonaggressive) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_NONNULL"] = .string(value.rawValue)
        return newDict
    }
    
    func clangAnalyzerNullDereference(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_NULL_DEREFERENCE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangAnalyzerNumberObjectConversionValue: String {
        case yesAggressive = "YES_AGGRESSIVE"
        case yes = "YES"
        case no = "NO"
    }
    
    /// Warn when a number object, such as an instance of `NSNumber`, `CFNumberRef`, `OSNumber`, or `OSBoolean` is compared or converted to a primitive value instead of another object.
    func clangAnalyzerNumberObjectConversion(_ value: ClangAnalyzerNumberObjectConversionValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION"] = .string(value.rawValue)
        return newDict
    }
    
    /// Warn on `nil` pointers used as mutexes for `@synchronized`.
    func clangAnalyzerObjcAtsync(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_ATSYNC"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn if `CF` collections are created with non-pointer-size values. Check if `NS` collections are initialized with non-Objective-C type elements.
    func clangAnalyzerObjcCollections(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_COLLECTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn when an instance is improperly cleaned up in `-dealloc`.
    func clangAnalyzerObjcDealloc(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_DEALLOC"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn if a specialized generic type is converted to an incompatible type.
    func clangAnalyzerObjcGenerics(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_GENERICS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn about Objective-C method signatures with type incompatibilities.
    func clangAnalyzerObjcIncompMethodTypes(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_INCOMP_METHOD_TYPES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn if functions accepting `CFErrorRef` or `NSError` cannot indicate that an error occurred.
    func clangAnalyzerObjcNscferror(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_NSCFERROR"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn on leaks and improper reference count management.
    func clangAnalyzerObjcRetainCount(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_RETAIN_COUNT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Check that `super init` is properly called within an Objective-C initialization method.
    func clangAnalyzerObjcSelfInit(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_SELF_INIT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn about private ivars that are never used.
    func clangAnalyzerObjcUnusedIvars(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_UNUSED_IVARS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangAnalyzerOtherCheckers(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OTHER_CHECKERS"] = .array(values)
        return newDict
    }
    
    func clangAnalyzerOtherFlags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OTHER_FLAGS"] = .array(values)
        return newDict
    }
    
    enum ClangAnalyzerOutputValue: String {
        case Default = "default"
        case plistMultiFile = "plist-multi-file"
    }
    
    func clangAnalyzerOutput(_ value: ClangAnalyzerOutputValue = .plistMultiFile) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OUTPUT"] = .string(value.rawValue)
        return newDict
    }
    
    func clangAnalyzerOutputDir(_ path: Path = "$(TEMP_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OUTPUT_DIR"] = .string(path)
        return newDict
    }
    
    func clangAnalyzerReportMainSourceFile(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_REPORT_MAIN_SOURCE_FILE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Check for potential buffer overflows.
    func clangAnalyzerSecurityBufferOverflowExperimental(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_BUFFER_OVERFLOW_EXPERIMENTAL"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn on using a floating point value as a loop counter (CERT: FLP30-C, FLP30-CPP).
    func clangAnalyzerSecurityFloatloopcounter(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_FLOATLOOPCOUNTER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn on uses of `getpw` and `gets`. The functions are dangerous as they may trigger a buffer overflow.
    func clangAnalyzerSecurityInsecureapiGetpwGets(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_INSECUREAPI_GETPW_GETS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn on uses of `mktemp`, which produces predictable temporary files. It is obsoleted by `mktemps`. Warn when `mkstemp` is passed fewer than 6 `X`'s in the format string.
    func clangAnalyzerSecurityInsecureapiMkstemp(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_INSECUREAPI_MKSTEMP"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn on uses of `rand`, `random`, and related functions, which produce predictable random number sequences. Use `arc4random` instead.
    func clangAnalyzerSecurityInsecureapiRand(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_INSECUREAPI_RAND"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn on uses of the `strcpy` and `strcat` functions, which can result in buffer overflows. Use `strlcpy` or `strlcat` instead.
    func clangAnalyzerSecurityInsecureapiStrcpy(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_INSECUREAPI_STRCPY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn on uses of sensitive functions whose return values must be always checked.
    func clangAnalyzerSecurityInsecureapiUncheckedreturn(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_INSECUREAPI_UNCHECKEDRETURN"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn on uses of the `vfork` function, which is inherently insecure. Use the safer `posix_spawn` function instead.
    func clangAnalyzerSecurityInsecureapiVfork(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_INSECUREAPI_VFORK"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Check for leaks of keychain attribute lists and data buffers returned by the Keychain Services API.
    func clangAnalyzerSecurityKeychainApi(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_KEYCHAIN_API"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangAnalyzerUseAfterMoveValue: String {
        case yesAggressive = "YES_AGGRESSIVE"
        case yes = "YES"
        case no = "NO"
    }
    
    /// Warn when a C++ object is used after it has been moved from.
    func clangAnalyzerUseAfterMove(_ value: ClangAnalyzerUseAfterMoveValue = .yesAggressive) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_USE_AFTER_MOVE"] = .string(value.rawValue)
        return newDict
    }
    
    func clangArcMigrateDir(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ARC_MIGRATE_DIR"] = .string(path)
        return newDict
    }
    
    func clangArcMigrateEmitError(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ARC_MIGRATE_EMIT_ERROR"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangArcMigratePrecheckValue: String {
        case donothing = "donothing"
        case precheck = "precheck"
    }
    
    func clangArcMigratePrecheck(_ value: ClangArcMigratePrecheckValue = .donothing) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ARC_MIGRATE_PRECHECK"] = .string(value.rawValue)
        return newDict
    }
    
    func clangArcMigrateReportOutput(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ARC_MIGRATE_REPORT_OUTPUT"] = .string(path)
        return newDict
    }
    
    enum ClangBitcodeGenerationModeValue: String {
        case none = "none"
        case marker = "marker"
        case bitcode = "bitcode"
    }
    
    func clangBitcodeGenerationMode(_ value: ClangBitcodeGenerationModeValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_BITCODE_GENERATION_MODE"] = .string(value.rawValue)
        return newDict
    }
    
    func clangColorDiagnostics(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_COLOR_DIAGNOSTICS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangCoverageMapping(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_COVERAGE_MAPPING"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangCoverageMappingLinkerArgs(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_COVERAGE_MAPPING_LINKER_ARGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangCxxLanguageStandardValue: String {
        case c98 = "c++98"
        case gnu98 = "gnu++98"
        case c0X = "c++0x"
        case gnu0X = "gnu++0x"
        case c14 = "c++14"
        case gnu14 = "gnu++14"
        case c17 = "c++17"
        case gnu17 = "gnu++17"
        case compilerDefault = "compiler-default"
    }
    
    /// Choose a standard or non-standard C++ language dialect. Options include:
    ///
    /// - _C++98:_ Accept ISO C++ 1998 with amendments, but not GNU extensions. `-std=c++98`
    ///
    /// - _GNU++98:_ Accept ISO C++ 1998 with amendments and GNU extensions. `-std=gnu++98`
    ///
    /// - _C++11:_ Accept the ISO C++ 2011 standard with amendments, but not GNU extensions. `-std=c++11`
    ///
    /// - _GNU++11:_ Accept the ISO C++ 2011 standard with amendments and GNU extensions. `-std=gnu++11`
    ///
    /// - _C++14:_ Accept the ISO C++ 2014 standard with amendments, but not GNU extensions. `-std=c++14`
    ///
    /// - _GNU++14:_ Accept the ISO C++ 2014 standard with amendments and GNU extensions. `-std=gnu++14`
    ///
    /// - _C++17:_ Accept the ISO C++ 2017 standard with amendments, but not GNU extensions. `-std=c++17`
    ///
    /// - _GNU++17:_ Accept the ISO C++ 2017 standard with amendments and GNU extensions. `-std=gnu++17`
    ///
    /// - _Compiler Default:_ Tells the compiler to use its default C++ language dialect. This is normally the best choice unless you have specific needs. (Currently equivalent to GNU++98.)
    func clangCxxLanguageStandard(_ value: ClangCxxLanguageStandardValue = .compilerDefault) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_CXX_LANGUAGE_STANDARD"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangCxxLibraryValue: String {
        case libstdc = "libstdc++"
        case libc = "libc++"
        case compilerDefault = "compiler-default"
    }
    
    /// Choose a version of the C++ standard library to use.
    ///
    /// - _libstdc++:_ A traditional C++ standard library that works with GCC and Clang (default).
    ///
    /// - _libc++:_ A highly optimized C++ standard library that works only with Clang, and is designed to support new C++11 features.
    func clangCxxLibrary(_ value: ClangCxxLibraryValue = .compilerDefault) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_CXX_LIBRARY"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangDebugInformationLevelValue: String {
        case Default = "default"
        case lineTablesOnly = "line-tables-only"
    }
    
    /// Toggles the amount of debug information emitted when debug symbols are enabled. This can impact the size of the generated debug information, which may matter in some cases for large projects, such as when using LTO.
    func clangDebugInformationLevel(_ value: ClangDebugInformationLevelValue = .Default) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_DEBUG_INFORMATION_LEVEL"] = .string(value.rawValue)
        return newDict
    }
    
    func clangDebugModules(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_DEBUG_MODULES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangDiagnosticsFile(_ path: Path = "$(MTLCOMPILER_OUTPUT_FILE:dir)$(InputFileBase)$(InputFileBaseUniquefier).dia") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_DIAGNOSTICS_FILE"] = .string(path)
        return newDict
    }
    
    func clangEnableAppExtension(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ENABLE_APP_EXTENSION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enables building with code coverage instrumentation. This is only used when the build has code coverage enabled, which is typically done via the Xcode scheme settings.
    func clangEnableCodeCoverage(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ENABLE_CODE_COVERAGE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Controls whether variables with static or thread storage duration should have their exit-time destructors run.
    func clangEnableCppStaticDestructors(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ENABLE_CPP_STATIC_DESTRUCTORS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enables the use of modules for system APIs. System headers are imported as semantic modules instead of raw headers. This can result in faster builds and project indexing.
    func clangEnableModules(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ENABLE_MODULES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// When this setting is enabled, `clang` will use the shared debug info available in `clang` modules and precompiled headers. This results in smaller build artifacts, faster compile times, and more complete debug info. This setting should only be disabled when building static libraries with debug info for distribution.
    func clangEnableModuleDebugging(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ENABLE_MODULE_DEBUGGING"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangEnableModuleImplementationOf(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ENABLE_MODULE_IMPLEMENTATION_OF"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Compiles reference-counted Objective-C code (when garbage collection is not enabled) to use Automatic Reference Counting. Code compiled using automated reference counting is compatible with other code (such as frameworks) compiled using either manual reference counting (for example, traditional `retain` and `release` messages) or automated reference counting. Using this mode is currently incompatible with compiling code to use Objective-C Garbage Collection.
    func clangEnableObjcArc(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ENABLE_OBJC_ARC"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Compiles Objective-C code to enable weak references for code compiled with manual retain release (MRR) semantics.
    func clangEnableObjcWeak(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ENABLE_OBJC_WEAK"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangIndexStoreEnable(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_INDEX_STORE_ENABLE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangIndexStorePath(_ path: Path = "$(INDEX_DATA_STORE_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_INDEX_STORE_PATH"] = .string(path)
        return newDict
    }
    
    func clangInstrumentForOptimizationProfiling(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_INSTRUMENT_FOR_OPTIMIZATION_PROFILING"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// When linking a target using Objective-C code, implicitly link in Foundation (and if deploying back to an older OS) a backwards compatibility library to allow newer language features to run on an OS where the runtime support is not natively available. Most targets that use Objective-C should use this, although there are rare cases where a target should opt out of this behavior.
    func clangLinkObjcRuntime(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_LINK_OBJC_RUNTIME"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangMacroBacktraceLimit(_ value: String = "0") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MACRO_BACKTRACE_LIMIT"] = .string(value)
        return newDict
    }
    
    /// Add attribute annotations to properties and methods.
    func clangMigratorAnnotations(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MIGRATOR_ANNOTATIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Infer `instancetype` for method result type instead of `id`.
    func clangMigratorInstanceType(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MIGRATOR_INSTANCE_TYPE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Use `NS_ENUM`/`NS_OPTIONS` macros for enumerators.
    func clangMigratorNsenumMacros(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MIGRATOR_NSENUM_MACROS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Infer `NS_DESIGNATED_INITIALIZER` for designated initializer methods.
    func clangMigratorObjcDesignatedInit(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MIGRATOR_OBJC_DESIGNATED_INIT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enable migration to modern ObjC literals syntax.
    func clangMigratorObjcLiterals(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MIGRATOR_OBJC_LITERALS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enable migration to modern ObjC subscripting syntax.
    func clangMigratorObjcSubscripting(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MIGRATOR_OBJC_SUBSCRIPTING"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangMigratorPropertyAtomicityValue: String {
        case nonatomic = "nonatomic"
        case atomic = "atomic"
        case nsNonatomicIosonly = "NS_NONATOMIC_IOSONLY"
    }
    
    /// Choose the atomicity of the inferred properties.
    func clangMigratorPropertyAtomicity(_ value: ClangMigratorPropertyAtomicityValue = .nsNonatomicIosonly) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MIGRATOR_PROPERTY_ATOMICITY"] = .string(value.rawValue)
        return newDict
    }
    
    /// Enable migration of setter/getter messages to property-dot syntax.
    func clangMigratorPropertyDotSyntax(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MIGRATOR_PROPERTY_DOT_SYNTAX"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Infer protocol conformance from the interface methods.
    func clangMigratorProtocolConformance(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MIGRATOR_PROTOCOL_CONFORMANCE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Only modify public headers of a target.
    func clangMigratorPublicHeadersOnly(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MIGRATOR_PUBLIC_HEADERS_ONLY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Infer readonly properties from getter methods.
    func clangMigratorReadonlyProperty(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MIGRATOR_READONLY_PROPERTY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Infer readwrite properties from a getter and setter method.
    func clangMigratorReadwriteProperty(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MIGRATOR_READWRITE_PROPERTY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Automatically link SDK frameworks that are referenced using `#import` or `#include`. This feature requires also enabling support for modules. This build setting only applies to C-family languages.
    func clangModulesAutolink(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MODULES_AUTOLINK"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangModulesBuildSessionFile(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MODULES_BUILD_SESSION_FILE"] = .string(value)
        return newDict
    }
    
    /// Disable warnings related to the recommended use of private module naming. This only makes sense when support for modules is enabled.
    func clangModulesDisablePrivateWarning(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MODULES_DISABLE_PRIVATE_WARNING"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangModulesIgnoreMacros(_ values: [String] = ["$(GCC_PREPROCESSOR_DEFINITIONS_NOT_USED_IN_PRECOMPS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MODULES_IGNORE_MACROS"] = .array(values)
        return newDict
    }
    
    func clangModulesPruneAfter(_ value: String = "345600") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MODULES_PRUNE_AFTER"] = .string(value)
        return newDict
    }
    
    func clangModulesPruneInterval(_ value: String = "86400") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MODULES_PRUNE_INTERVAL"] = .string(value)
        return newDict
    }
    
    func clangModulesValidateSystemHeaders(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MODULES_VALIDATE_SYSTEM_HEADERS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangModuleCachePath(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MODULE_CACHE_PATH"] = .string(path)
        return newDict
    }
    
    func clangModuleLsv(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_MODULE_LSV"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangObjcMigrateDir(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_OBJC_MIGRATE_DIR"] = .string(path)
        return newDict
    }
    
    /// The path to the file of the profile data to use when [Use Optimization Profile (CLANG\_USE\_OPTIMIZATION\_PROFILE)](itcaec37c2a6.html#devb3d935f24) is enabled.
    func clangOptimizationProfileFile(_ path: Path = "$(SRCROOT)/OptimizationProfiles/$(PROJECT_NAME).profdata") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_OPTIMIZATION_PROFILE_FILE"] = .string(path)
        return newDict
    }
    
    func clangRetainCommentsFromSystemHeaders(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_RETAIN_COMMENTS_FROM_SYSTEM_HEADERS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangStaticAnalyzerModeValue: String {
        case shallow = "shallow"
        case deep = "deep"
    }
    
    /// The depth the static analyzer uses during the Build action. Use `Deep` to exercise the full power of the analyzer. Use `Shallow` for faster analysis.
    func clangStaticAnalyzerMode(_ value: ClangStaticAnalyzerModeValue = .shallow) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_STATIC_ANALYZER_MODE"] = .string(value.rawValue)
        return newDict
    }
    
    func clangStaticAnalyzerModeActionDeep(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_STATIC_ANALYZER_MODE_ACTION_deep"] = .string(value)
        return newDict
    }
    
    func clangStaticAnalyzerModeActionShallow(_ value: String = "Shallow") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_STATIC_ANALYZER_MODE_ACTION_shallow"] = .string(value)
        return newDict
    }
    
    enum ClangStaticAnalyzerModeOnAnalyzeActionValue: String {
        case shallow = "shallow"
        case deep = "deep"
    }
    
    /// The depth the static analyzer uses during the Analyze action. Use `Deep` to exercise the full power of the analyzer. Use `Shallow` for faster analysis.
    func clangStaticAnalyzerModeOnAnalyzeAction(_ value: ClangStaticAnalyzerModeOnAnalyzeActionValue = .deep) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_STATIC_ANALYZER_MODE_ON_ANALYZE_ACTION"] = .string(value.rawValue)
        return newDict
    }
    
    func clangTargetTripleArchs(_ values: [String] = ["$(CURRENT_ARCH)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_TARGET_TRIPLE_ARCHS"] = .array(values)
        return newDict
    }
    
    func clangTargetTripleVariants(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_TARGET_TRIPLE_VARIANTS"] = .array(values)
        return newDict
    }
    
    func clangThreadSanitizer(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_THREAD_SANITIZER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func clangToolchainFlags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_TOOLCHAIN_FLAGS"] = .array(values)
        return newDict
    }
    
    enum ClangTrivialAutoVarInitValue: String {
        case uninitialized = "uninitialized"
        case pattern = "pattern"
    }
    
    /// Specify whether stack variables should be uninitialized, which can cause inadvertent information disclosure when uninitialized stack variables are used, or whether they should be pattern-initialized.
    func clangTrivialAutoVarInit(_ value: ClangTrivialAutoVarInitValue = .uninitialized) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_TRIVIAL_AUTO_VAR_INIT"] = .string(value.rawValue)
        return newDict
    }
    
    func clangUndefinedBehaviorSanitizer(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_UNDEFINED_BEHAVIOR_SANITIZER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Check for unsigned integer overflow, in addition to checks for signed integer overflow.
    func clangUndefinedBehaviorSanitizerInteger(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_UNDEFINED_BEHAVIOR_SANITIZER_INTEGER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Check for violations of nullability annotations in function calls, return statements, and assignments.
    func clangUndefinedBehaviorSanitizerNullability(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_UNDEFINED_BEHAVIOR_SANITIZER_NULLABILITY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// When this setting is enabled, `clang` will use the optimization profile collected for a target when building it.
    func clangUseOptimizationProfile(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_USE_OPTIMIZATION_PROFILE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn about assigning integer constants to enum values that are out of the range of the enumerated type.
    func clangWarnAssignEnum(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_ASSIGN_ENUM"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warns when an atomic is used with an implicitly sequentially-consistent memory order, instead of explicitly specifying memory order.
    func clangWarnAtomicImplicitSeqCst(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_ATOMIC_IMPLICIT_SEQ_CST"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangWarnBlockCaptureAutoreleasingValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }
    
    /// Warn about block captures of implicitly autoreleasing parameters.
    func clangWarnBlockCaptureAutoreleasing(_ value: ClangWarnBlockCaptureAutoreleasingValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangWarnBoolConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warn about implicit conversions to boolean values that are suspicious. For example, writing `if (foo)` where `foo` is the name a function will trigger a warning.
    func clangWarnBoolConversion(_ value: ClangWarnBoolConversionValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_BOOL_CONVERSION"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangWarnCommaValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }
    
    /// Warn about suspicious uses of the comma operator.
    func clangWarnComma(_ value: ClangWarnCommaValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_COMMA"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangWarnConstantConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warn about implicit conversions of constant values that cause the constant value to change, either through a loss of precision, or entirely in its meaning.
    func clangWarnConstantConversion(_ value: ClangWarnConstantConversionValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_CONSTANT_CONVERSION"] = .string(value.rawValue)
        return newDict
    }
    
    /// When compiling C++ code using a language standard older than C++11, warn about the use of C++11 extensions.
    func clangWarnCxx0XExtensions(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_CXX0X_EXTENSIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangWarnDeleteNonVirtualDtorValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warn when deleting an instance of a polymorphic class with virtual functions but without a virtual destructor.
    func clangWarnDeleteNonVirtualDtor(_ value: ClangWarnDeleteNonVirtualDtorValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_DELETE_NON_VIRTUAL_DTOR"] = .string(value.rawValue)
        return newDict
    }
    
    /// Warn if an Objective-C class either subclasses a deprecated class or overrides a method that has been marked deprecated or unavailable.
    func clangWarnDeprecatedObjcImplementations(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangWarnDirectObjcIsaUsageValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }
    
    /// Warn about direct accesses to the Objective-C `isa` pointer instead of using a runtime API.
    func clangWarnDirectObjcIsaUsage(_ value: ClangWarnDirectObjcIsaUsageValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_DIRECT_OBJC_ISA_USAGE"] = .string(value.rawValue)
        return newDict
    }
    
    /// Warns about issues in documentation comments (`doxygen`-style) such as missing or incorrect documentation tags.
    func clangWarnDocumentationComments(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_DOCUMENTATION_COMMENTS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn about loop bodies that are suspiciously empty.
    func clangWarnEmptyBody(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_EMPTY_BODY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangWarnEnumConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warn about implicit conversions between different kinds of enum values. For example, this can catch issues when using the wrong enum flag as an argument to a function or method.
    func clangWarnEnumConversion(_ value: ClangWarnEnumConversionValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_ENUM_CONVERSION"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangWarnFloatConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warn about implicit conversions that turn floating-point numbers into integers.
    func clangWarnFloatConversion(_ value: ClangWarnFloatConversionValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_FLOAT_CONVERSION"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangWarnFrameworkIncludePrivateFromPublicValue: String {
        case yes = "YES"
        case no = "NO"
    }
    
    func clangWarnFrameworkIncludePrivateFromPublic(_ value: ClangWarnFrameworkIncludePrivateFromPublicValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_FRAMEWORK_INCLUDE_PRIVATE_FROM_PUBLIC"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangWarnImplicitSignConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warn about implicit integer conversions that change the signedness of an integer value.
    func clangWarnImplicitSignConversion(_ value: ClangWarnImplicitSignConversionValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_IMPLICIT_SIGN_CONVERSION"] = .string(value.rawValue)
        return newDict
    }
    
    /// Warn if all paths through a function call itself.
    func clangWarnInfiniteRecursion(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_INFINITE_RECURSION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangWarnIntConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warn about implicit conversions between pointers and integers. For example, this can catch issues when one incorrectly intermixes using `NSNumber*`'s and raw integers.
    func clangWarnIntConversion(_ value: ClangWarnIntConversionValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_INT_CONVERSION"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangWarnMissingNoescapeValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warn about noescape annotations that are missing in a method's signature.
    func clangWarnMissingNoescape(_ value: ClangWarnMissingNoescapeValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_MISSING_NOESCAPE"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangWarnNonLiteralNullConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warn about non-literal expressions that evaluate to zero being treated as a null pointer.
    func clangWarnNonLiteralNullConversion(_ value: ClangWarnNonLiteralNullConversionValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_NON_LITERAL_NULL_CONVERSION"] = .string(value.rawValue)
        return newDict
    }
    
    /// Warns when a nullable expression is used somewhere it’s not allowed, such as when passed as a `_Nonnull` parameter.
    func clangWarnNullableToNonnullConversion(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_NULLABLE_TO_NONNULL_CONVERSION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn about implicit ownership types on Objective-C object references as out parameters. For example, declaring a parameter with type `NSObject**` will produce a warning because the compiler will assume that the out parameter's ownership type is `__autoreleasing`.
    func clangWarnObjcExplicitOwnershipType(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_OBJC_EXPLICIT_OWNERSHIP_TYPE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn about `@property` declarations that are implicitly atomic.
    func clangWarnObjcImplicitAtomicProperties(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_OBJC_IMPLICIT_ATOMIC_PROPERTIES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn about implicit retains of `self` within blocks, which can create a retain-cycle.
    func clangWarnObjcImplicitRetainSelf(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangWarnObjcInterfaceIvarsValue: String {
        case no = "NO"
        case yes = "YES"
        case yesError = "YES_ERROR"
    }
    
    /// Warn about instance variable declarations in `@interface`.
    func clangWarnObjcInterfaceIvars(_ value: ClangWarnObjcInterfaceIvarsValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_OBJC_INTERFACE_IVARS"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangWarnObjcLiteralConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warn about implicit conversions from Objective-C literals to values of incompatible type.
    func clangWarnObjcLiteralConversion(_ value: ClangWarnObjcLiteralConversionValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_OBJC_LITERAL_CONVERSION"] = .string(value.rawValue)
        return newDict
    }
    
    /// Starting in Xcode 4.4, Apple Clang will implicitly synthesize properties that are not explicitly synthesized using `@synthesize`. This setting warns about such implicit behavior, even though the property is still synthesized. This is essentially a backwards compatibility warning, or for those who wish to continue to explicitly use `@synthesize`.
    func clangWarnObjcMissingPropertySynthesis(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_OBJC_MISSING_PROPERTY_SYNTHESIS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangWarnObjcRepeatedUseOfWeakValue: String {
        case yes = "YES"
        case no = "NO"
        case yesAggressive = "YES_AGGRESSIVE"
    }
    
    /// Warn about repeatedly using a weak reference without assigning the weak reference to a strong reference. This is often symptomatic of a race condition where the weak reference can become `nil` between accesses, resulting in unexpected behavior. Assigning to temporary strong reference ensures the object stays alive during the related accesses.
    func clangWarnObjcRepeatedUseOfWeak(_ value: ClangWarnObjcRepeatedUseOfWeakValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_OBJC_REPEATED_USE_OF_WEAK"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangWarnObjcRootClassValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }
    
    /// Warn about classes that unintentionally do not subclass a root class, such as `NSObject`.
    func clangWarnObjcRootClass(_ value: ClangWarnObjcRootClassValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_OBJC_ROOT_CLASS"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangWarnPragmaPackValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warn when a translation unit is missing terminating '#pragma pack (pop)' directives or when the '#pragma pack' state immediately after an #include is different from the state immediately before.
    func clangWarnPragmaPack(_ value: ClangWarnPragmaPackValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_PRAGMA_PACK"] = .string(value.rawValue)
        return newDict
    }
    
    /// Warn about private modules that do not use the recommended private module layout.
    func clangWarnPrivateModule(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_PRIVATE_MODULE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangWarnQuotedIncludeInFrameworkHeaderValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warns when a quoted include is used instead of a framework style include in a framework header.
    func clangWarnQuotedIncludeInFrameworkHeader(_ value: ClangWarnQuotedIncludeInFrameworkHeaderValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER"] = .string(value.rawValue)
        return newDict
    }
    
    /// Warn about ranged-based for loops.
    func clangWarnRangeLoopAnalysis(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_RANGE_LOOP_ANALYSIS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn about ignored semicolon between a method implementation's signature and body.
    func clangWarnSemicolonBeforeMethodBody(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_SEMICOLON_BEFORE_METHOD_BODY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangWarnStrictPrototypesValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }
    
    /// Warn about non-prototype declarations.
    func clangWarnStrictPrototypes(_ value: ClangWarnStrictPrototypesValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_STRICT_PROTOTYPES"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangWarnSuspiciousImplicitConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warn about various implicit conversions that can lose information or are otherwise suspicious.
    func clangWarnSuspiciousImplicitConversion(_ value: ClangWarnSuspiciousImplicitConversionValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION"] = .string(value.rawValue)
        return newDict
    }
    
    /// Warn about suspicious uses of `std::move`.
    func clangWarnSuspiciousMove(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_SUSPICIOUS_MOVE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangWarnUnguardedAvailabilityValue: String {
        case yes = "YES"
        case yesAggressive = "YES_AGGRESSIVE"
        case no = "NO"
    }
    
    /// Warn if an API that is newer than the deployment target is used without "if (@available(...))" guards.
    func clangWarnUnguardedAvailability(_ value: ClangWarnUnguardedAvailabilityValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_UNGUARDED_AVAILABILITY"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangWarnUnreachableCodeValue: String {
        case yes = "YES"
        case yesAggressive = "YES_AGGRESSIVE"
        case no = "NO"
    }
    
    /// Warns about potentially unreachable code.
    func clangWarnUnreachableCode(_ value: ClangWarnUnreachableCodeValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_UNREACHABLE_CODE"] = .string(value.rawValue)
        return newDict
    }
    
    enum ClangWarnVexingParseValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warn about a parsing ambiguity between a variable declaration and a function-style cast.
    func clangWarnVexingParse(_ value: ClangWarnVexingParseValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_VEXING_PARSE"] = .string(value.rawValue)
        return newDict
    }
    
    /// Warn about using `__bridge` casts when not using ARC, where they have no effect.
    func clangWarnArcBridgeCastNonarc(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN__ARC_BRIDGE_CAST_NONARC"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn about declaring the same method more than once within the same `@interface`.
    func clangWarnDuplicateMethodMatch(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN__DUPLICATE_METHOD_MATCH"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn about destructors for C++ objects that are called when an application is terminating.
    func clangWarnExitTimeDestructors(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN__EXIT_TIME_DESTRUCTORS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ClangX86VectorInstructionsValue: String {
        case Default = "default"
        case sse3 = "sse3"
        case ssse3 = "ssse3"
        case sse41 = "sse4.1"
        case sse42 = "sse4.2"
        case avx = "avx"
        case avx2 = "avx2"
        case avx512 = "avx512"
    }
    
    /// Enables the use of extended vector instructions. Only used when targeting Intel architectures.
    func clangX86VectorInstructions(_ value: ClangX86VectorInstructionsValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_X86_VECTOR_INSTRUCTIONS"] = .string(value.rawValue)
        return newDict
    }
    
    func classFileDir(_ path: Path = "$(TARGET_TEMP_DIR)/JavaClasses") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLASS_FILE_DIR"] = .string(path)
        return newDict
    }
    
    func cleanPrecomps(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLEAN_PRECOMPS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func cloneHeaders(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLONE_HEADERS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func codesigningFolderPath(_ path: Path = "$(TARGET_BUILD_DIR)/$(FULL_PRODUCT_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CODESIGNING_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    func codeSigningAllowed(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CODE_SIGNING_ALLOWED"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// The path to a file specifying code-signing entitlements.
    func codeSignEntitlements(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CODE_SIGN_ENTITLEMENTS"] = .string(value)
        return newDict
    }
    
    /// The name, also known as the _common name_, of a valid code-signing certificate in a keychain within your keychain path. A missing or invalid certificate will cause a build error.
    func codeSignIdentity(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CODE_SIGN_IDENTITY"] = .string(value)
        return newDict
    }
    
    /// Automatically inject entitlements from the platform's BaseEntitlements.plist into the code signatures of executables.
    func codeSignInjectBaseEntitlements(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CODE_SIGN_INJECT_BASE_ENTITLEMENTS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func codeSignKeychain(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CODE_SIGN_KEYCHAIN"] = .string(value)
        return newDict
    }
    
    enum CodeSignLocalExecutionIdentityValue: String {
        case empty = ""
        case adHoc = "Ad Hoc"
        case localCertificate = "Local Certificate"
    }
    
    func codeSignLocalExecutionIdentity(_ value: CodeSignLocalExecutionIdentityValue = .empty) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CODE_SIGN_LOCAL_EXECUTION_IDENTITY"] = .string(value.rawValue)
        return newDict
    }
    
    func codeSignResourceRulesInBundle(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CODE_SIGN_RESOURCE_RULES_IN_BUNDLE"] = .string(value)
        return newDict
    }
    
    enum CodeSignStyleValue: String {
        case automatic = "Automatic"
        case manual = "Manual"
    }
    
    /// This setting specifies the method used to acquire and locate signing assets. Choose `Automatic` to let Xcode automatically create and update profiles, app IDs, and certificates. Choose `Manual` to create and update these yourself on the developer website.
    func codeSignStyle(_ value: CodeSignStyleValue = .automatic) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CODE_SIGN_STYLE"] = .string(value.rawValue)
        return newDict
    }
    
    func colorDiagnostics(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COLOR_DIAGNOSTICS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func combineHidpiImages(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COMBINE_HIDPI_IMAGES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum CompilerIndexStoreEnableValue: String {
        case Default = "Default"
        case yes = "YES"
        case no = "NO"
    }
    
    /// Control whether the compiler should emit index data while building.
    func compilerIndexStoreEnable(_ value: CompilerIndexStoreEnableValue = .Default) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COMPILER_INDEX_STORE_ENABLE"] = .string(value.rawValue)
        return newDict
    }
    
    func compositeSdkDirs(_ paths: [Path] = ["$(OBJROOT)/CompositeSDKs"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COMPOSITE_SDK_DIRS"] = .array(paths)
        return newDict
    }
    
    /// If enabled, PNG resource files are compressed as they are copied.
    func compressPngFiles(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COMPRESS_PNG_FILES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func compressTiffFilesWhileCopying(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COMPRESS_TIFF_FILES_WHILE_COPYING"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Identifies the build configuration, such as `Debug` or `Release`, that the target uses to generate the product.
    func configuration(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CONFIGURATION"] = .string(value)
        return newDict
    }
    
    /// The base path where build products will be placed during a build for a given configuration. By default, this is set to `$(BUILD_DIR)/$(CONFIGURATION)`.
    func configurationBuildDir(_ path: Path = "$(BUILD_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CONFIGURATION_BUILD_DIR"] = .string(path)
        return newDict
    }
    
    /// The base path where intermediates will be placed during a build for a given configuration. By default, this is set to `$(PROJECT_TEMP_DIR)/$(CONFIGURATION)`.
    func configurationTempDir(_ path: Path = "$(PROJECT_TEMP_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CONFIGURATION_TEMP_DIR"] = .string(path)
        return newDict
    }
    
    /// Specifies the directory inside the generated bundle that contains the product’s files.
    func contentsFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CONTENTS_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    /// Causes the copying of resources to preserve resource forks and Finder info.
    func copyingPreservesHfsData(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COPYING_PRESERVES_HFS_DATA"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// If enabled, headers are run through the `unifdef(1)` tool when copied to the product.
    func copyHeadersRunUnifdef(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COPY_HEADERS_RUN_UNIFDEF"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Specifies the flags to pass to `unifdef(1)` when invoking that tool to copy headers. This setting has no effect unless [Run unifdef on Product Headers (COPY\_HEADERS\_RUN\_UNIFDEF)](itcaec37c2a6.html#devc2606cc19) is enabled.
    func copyHeadersUnifdefFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COPY_HEADERS_UNIFDEF_FLAGS"] = .array(values)
        return newDict
    }
    
    /// Specifies whether binary files that are copied during the build, such as in a Copy Bundle Resources or Copy Files build phase, should be stripped of debugging symbols. It does not cause the linked product of a target to be stripped—use [Strip Linked Product (STRIP\_INSTALLED\_PRODUCT)](itcaec37c2a6.html#dev5c0105d2a) for that.
    func copyPhaseStrip(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COPY_PHASE_STRIP"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func copyResourcesFromStaticFrameworks(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COPY_RESOURCES_FROM_STATIC_FRAMEWORKS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum CoremlCodegenLanguageValue: String {
        case swift = "Swift"
        case objectiveC = "Objective-C"
        case automatic = "Automatic"
        case none = "None"
    }
    
    /// The Source-code language to use for generated CoreML model class. By default "Automatic" will analyze your project to determine the correct language. Adjust this setting to explicitly select "Swift" or "Objective-C", or select "None" to disable model class generation.
    func coremlCodegenLanguage(_ value: CoremlCodegenLanguageValue = .automatic) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COREML_CODEGEN_LANGUAGE"] = .string(value.rawValue)
        return newDict
    }
    
    /// Generate Swift model classes that are marked with @objc and are descendants of NSObject, in order to be accessible and usable in Objective-C. This setting has no effect if "CoreML Model Class Generation Language" is set to "Objective-C".
    func coremlCodegenSwiftGlobalModule(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COREML_CODEGEN_SWIFT_GLOBAL_MODULE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func coremlCodegenSwiftVersion(_ value: String = "$(SWIFT_VERSION)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COREML_CODEGEN_SWIFT_VERSION"] = .string(value)
        return newDict
    }
    
    func coremlCompilerInfoplistContentFile(_ path: Path = "$(TARGET_TEMP_DIR)/$(InputFileBase)-CoreMLPartialInfo.plist") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COREML_COMPILER_INFOPLIST_CONTENT_FILE"] = .string(path)
        return newDict
    }
    
    func coremlDeploymentTarget(_ value: String = "$(COREML_DEPLOYMENT_TARGET__$(IS_MACCATALYST:default=NO))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COREML_DEPLOYMENT_TARGET"] = .string(value)
        return newDict
    }
    
    func coremlDeploymentTargetNo(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COREML_DEPLOYMENT_TARGET__NO"] = .string(value)
        return newDict
    }
    
    func coremlDeploymentTargetYes(_ value: String = "$(IPHONEOS_DEPLOYMENT_TARGET)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COREML_DEPLOYMENT_TARGET__YES"] = .string(value)
        return newDict
    }
    
    func coremlPlatformName(_ value: String = "$(COREML_PLATFORM_NAME__$(IS_MACCATALYST:default=NO))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COREML_PLATFORM_NAME"] = .string(value)
        return newDict
    }
    
    func coremlPlatformNameNo(_ value: String = "$(SWIFT_PLATFORM_TARGET_PREFIX)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COREML_PLATFORM_NAME__NO"] = .string(value)
        return newDict
    }
    
    func coremlPlatformNameYes(_ value: String = "maccatalyst") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COREML_PLATFORM_NAME__YES"] = .string(value)
        return newDict
    }
    
    func cp(_ path: Path = "/bin/cp") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CP"] = .string(path)
        return newDict
    }
    
    func cppHeadermapFile(_ path: Path = "$(TEMP_DIR)/$(PRODUCT_NAME).hmap") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CPP_HEADERMAP_FILE"] = .string(path)
        return newDict
    }
    
    func cppHeadermapFileForAllNonFrameworkTargetHeaders(_ path: Path = "$(TEMP_DIR)/$(PRODUCT_NAME)-all-non-framework-target-headers.hmap") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CPP_HEADERMAP_FILE_FOR_ALL_NON_FRAMEWORK_TARGET_HEADERS"] = .string(path)
        return newDict
    }
    
    func cppHeadermapFileForAllTargetHeaders(_ path: Path = "$(TEMP_DIR)/$(PRODUCT_NAME)-all-target-headers.hmap") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CPP_HEADERMAP_FILE_FOR_ALL_TARGET_HEADERS"] = .string(path)
        return newDict
    }
    
    func cppHeadermapFileForGeneratedFiles(_ path: Path = "$(TEMP_DIR)/$(PRODUCT_NAME)-generated-files.hmap") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CPP_HEADERMAP_FILE_FOR_GENERATED_FILES"] = .string(path)
        return newDict
    }
    
    func cppHeadermapFileForOwnTargetHeaders(_ path: Path = "$(TEMP_DIR)/$(PRODUCT_NAME)-own-target-headers.hmap") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CPP_HEADERMAP_FILE_FOR_OWN_TARGET_HEADERS"] = .string(path)
        return newDict
    }
    
    func cppHeadermapFileForProjectFiles(_ path: Path = "$(TEMP_DIR)/$(PRODUCT_NAME)-project-headers.hmap") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CPP_HEADERMAP_FILE_FOR_PROJECT_FILES"] = .string(path)
        return newDict
    }
    
    func cppHeadermapProductHeadersVfsFile(_ path: Path = "$(PROJECT_TEMP_DIR)/all-product-headers.yaml") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CPP_HEADERMAP_PRODUCT_HEADERS_VFS_FILE"] = .string(path)
        return newDict
    }
    
    func cppHeaderSymlinksDir(_ path: Path = "$(TEMP_DIR)/$(PRODUCT_NAME).hdrs") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CPP_HEADER_SYMLINKS_DIR"] = .string(path)
        return newDict
    }
    
    /// Other flags to pass to the C preprocessor when using the standalone C Preprocessor rule.
    func cppOtherPreprocessorFlags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CPP_OTHER_PREPROCESSOR_FLAGS"] = .array(values)
        return newDict
    }
    
    /// Implicitly include the given file when preprocessing using the standalone C Preprocessor rule. The path given should either be a project relative path or an absolute path.
    func cppPrefixHeader(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CPP_PREFIX_HEADER"] = .string(value)
        return newDict
    }
    
    /// Space-separated list of preprocessor macros of the form `foo` or `foo=bar`. These macros are used when preprocessing using the standalone C Preprocessor rule.
    func cppPreprocessorDefinitions(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CPP_PREPROCESSOR_DEFINITIONS"] = .array(values)
        return newDict
    }
    
    /// Enabling this setting will create a section in the product's linked binary containing the processed `Info.plist` file for the target. This setting only applies to command-line tool targets.
    func createInfoplistSectionInBinary(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CREATE_INFOPLIST_SECTION_IN_BINARY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// The name of the active architecture being processed.
    func currentArch(_ value: String = "$(arch)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CURRENT_ARCH"] = .string(value)
        return newDict
    }
    
    /// This setting defines the current version of the project. The value must be a integer or floating point number, such as `57` or `365.8`.
    func currentProjectVersion(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CURRENT_PROJECT_VERSION"] = .string(value)
        return newDict
    }
    
    /// The name of the active variant being processed.
    func currentVariant(_ value: String = "$(variant)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CURRENT_VARIANT"] = .string(value)
        return newDict
    }
    
    func currentVersion(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CURRENT_VERSION"] = .string(value)
        return newDict
    }
    
    func codesignentitlements(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CodeSignEntitlements"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func codesignresourcerules(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CodeSignResourceRules"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Activating this setting causes the `-dead_strip` flag to be passed to `ld(1)` via `cc(1)` to turn on dead code stripping.
    func deadCodeStripping(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEAD_CODE_STRIPPING"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func debuggingSymbols(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEBUGGING_SYMBOLS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum DebugInformationFormatValue: String {
        case dwarf = "dwarf"
        case dwarfWithDsym = "dwarf-with-dsym"
    }
    
    /// The type of debug information to produce.
    ///
    /// - _DWARF:_ Object files and linked products will use DWARF as the debug information format. `dwarf`
    ///
    /// - _DWARF with dSYM File:_ Object files and linked products will use DWARF as the debug information format, and Xcode will also produce a dSYM file containing the debug information from the individual object files (except that a dSYM file is not needed and will not be created for static library or object file products). `dwarf-with-dsym`
    func debugInformationFormat(_ value: DebugInformationFormatValue = .dwarf) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEBUG_INFORMATION_FORMAT"] = .string(value.rawValue)
        return newDict
    }
    
    func defaultCompiler(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEFAULT_COMPILER"] = .string(value)
        return newDict
    }
    
    func defaultDextInstallPath(_ value: String = "$(SYSTEM_DEXT_INSTALL_PATH)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEFAULT_DEXT_INSTALL_PATH"] = .string(value)
        return newDict
    }
    
    func defaultKextInstallPath(_ value: String = "$(SYSTEM_KEXT_INSTALL_PATH)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEFAULT_KEXT_INSTALL_PATH"] = .string(value)
        return newDict
    }
    
    func defaultSseLevel3No(_ value: String = "default") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEFAULT_SSE_LEVEL_3_NO"] = .string(value)
        return newDict
    }
    
    func defaultSseLevel3SupplementalNo(_ value: String = "$(DEFAULT_SSE_LEVEL_3_$(GCC_ENABLE_SSE3_EXTENSIONS))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_NO"] = .string(value)
        return newDict
    }
    
    func defaultSseLevel3SupplementalYes(_ value: String = "ssse3") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_YES"] = .string(value)
        return newDict
    }
    
    func defaultSseLevel3Yes(_ value: String = "sse3") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEFAULT_SSE_LEVEL_3_YES"] = .string(value)
        return newDict
    }
    
    func defaultSseLevel41No(_ value: String = "$(DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_$(GCC_ENABLE_SUPPLEMENTAL_SSE3_INSTRUCTIONS))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEFAULT_SSE_LEVEL_4_1_NO"] = .string(value)
        return newDict
    }
    
    func defaultSseLevel41Yes(_ value: String = "sse4.1") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEFAULT_SSE_LEVEL_4_1_YES"] = .string(value)
        return newDict
    }
    
    func defaultSseLevel42No(_ value: String = "$(DEFAULT_SSE_LEVEL_4_1_$(GCC_ENABLE_SSE41_EXTENSIONS))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEFAULT_SSE_LEVEL_4_2_NO"] = .string(value)
        return newDict
    }
    
    func defaultSseLevel42Yes(_ value: String = "sse4.2") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEFAULT_SSE_LEVEL_4_2_YES"] = .string(value)
        return newDict
    }
    
    /// If enabled, the product will be treated as defining its own module. This enables automatic production of LLVM module map files when appropriate, and allows the product to be imported as a module.
    func definesModule(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEFINES_MODULE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// If enabled, built products are placed in their installed locations in addition to the built products folder.
    func deploymentLocation(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEPLOYMENT_LOCATION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// If enabled, indicates that binaries should be stripped and file mode, owner, and group information should be set to standard values.
    func deploymentPostprocessing(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEPLOYMENT_POSTPROCESSING"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func deploymentTarget(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEPLOYMENT_TARGET"] = .string(value)
        return newDict
    }
    
    func derivedFilesDir(_ path: Path = "$(DERIVED_FILE_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DERIVED_FILES_DIR"] = .string(path)
        return newDict
    }
    
    func derivedFileDir(_ path: Path = "$(TARGET_TEMP_DIR)/DerivedSources") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DERIVED_FILE_DIR"] = .string(path)
        return newDict
    }
    
    func derivedPaths(_ paths: [Path] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DERIVED_PATHS"] = .array(paths)
        return newDict
    }
    
    func derivedSourcesDir(_ path: Path = "$(DERIVED_FILE_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DERIVED_SOURCES_DIR"] = .string(path)
        return newDict
    }
    
    /// When enabled, Xcode will automatically derive a bundle identifier for this target from its original bundle identifier when it's building for Mac Catalyst.
    func deriveMaccatalystProductBundleIdentifier(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DERIVE_MACCATALYST_PRODUCT_BUNDLE_IDENTIFIER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func developerDir(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEVELOPER_DIR"] = .string(path)
        return newDict
    }
    
    /// Files and directories used only for development. Archive and install builds will exclude this content.
    func developmentAssetPaths(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEVELOPMENT_ASSET_PATHS"] = .array(values)
        return newDict
    }
    
    func developmentLanguage(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEVELOPMENT_LANGUAGE"] = .string(value)
        return newDict
    }
    
    /// The team ID of a development team to use for signing certificates and provisioning profiles.
    func developmentTeam(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEVELOPMENT_TEAM"] = .string(value)
        return newDict
    }
    
    /// Identifies the directory that contains the bundle’s documentation files.
    func documentationFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCUMENTATION_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    /// If enabled, don't automatically generate an Info.plist file for wrapped products when the [Info.plist File (INFOPLIST\_FILE)](itcaec37c2a6.html#dev131d2e1c2) build setting is empty.
    func dontGenerateInfoplistFile(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DONT_GENERATE_INFOPLIST_FILE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func doHeaderScanningInJam(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DO_HEADER_SCANNING_IN_JAM"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// The path at which all products will be rooted when performing an install build. For instance, to install your products on the system proper, set this path to `/`. Defaults to `/tmp/$(PROJECT_NAME).dst` to prevent a _test_ install build from accidentally overwriting valid and needed data in the ultimate install path.
    ///
    /// Typically this path is not set per target, but is provided as an option on the command line when performing an `xcodebuild install`. It may also be set in a build configuration in special circumstances.
    func dstroot(_ path: Path = "/tmp/$(PROJECT_NAME).dst") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DSTROOT"] = .string(path)
        return newDict
    }
    
    func dsymutilVerbose(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DSYMUTIL_VERBOSE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Space-separated list of additional flags to pass to the `dtrace` compiler. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `dtrace` flag.
    func dtraceOtherFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DTRACE_OTHER_FLAGS"] = .array(values)
        return newDict
    }
    
    enum DtraceOutputFileTypeValue: String {
        case header = "Header"
    }
    
    func dtraceOutputFileType(_ value: DtraceOutputFileTypeValue = .header) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DTRACE_OUTPUT_FILE_TYPE"] = .string(value.rawValue)
        return newDict
    }
    
    func dwarfDsymFileName(_ value: String = "$(FULL_PRODUCT_NAME).dSYM") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DWARF_DSYM_FILE_NAME"] = .string(value)
        return newDict
    }
    
    func dwarfDsymFileShouldAccompanyProduct(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DWARF_DSYM_FILE_SHOULD_ACCOMPANY_PRODUCT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func dwarfDsymFolderPath(_ path: Path = "$(CONFIGURATION_BUILD_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DWARF_DSYM_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    /// Determines the compatibility version of the resulting library, bundle, or framework binary. See [Dynamic Library Design Guidelines](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/100-Articles/DynamicLibraryDesignGuidelines.html#//apple_ref/doc/uid/TP40002013-SW19) in [Dynamic Library Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/000-Introduction/Introduction.html) for details on assigning version numbers of dynamic libraries.
    func dylibCompatibilityVersion(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DYLIB_COMPATIBILITY_VERSION"] = .string(value)
        return newDict
    }
    
    /// This setting defines the current version of any framework built by the project. As with [Current Project Version (CURRENT\_PROJECT\_VERSION)](itcaec37c2a6.html#devd516a860b), the value must be an integer or floating point number, such as `57` or `365.8`. By default, it is set to `$(CURRENT_PROJECT_VERSION)`. See [Dynamic Library Design Guidelines](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/100-Articles/DynamicLibraryDesignGuidelines.html#//apple_ref/doc/uid/TP40002013-SW19) in [Dynamic Library Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/000-Introduction/Introduction.html) for details on assigning version numbers of dynamic libraries.
    func dylibCurrentVersion(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DYLIB_CURRENT_VERSION"] = .string(value)
        return newDict
    }
    
    /// Sets the base value for the internal `install path` (`LC_ID_DYLIB`) in a dynamic library. This will be combined with the [EXECUTABLE\_PATH](itcaec37c2a6.html#dev5a0a1bb80) to form the full install path. Setting [Dynamic Library Install Name (LD\_DYLIB\_INSTALL\_NAME)](itcaec37c2a6.html#devbb966571b) directly will override this setting. This setting defaults to the target's [Installation Directory (INSTALL\_PATH)](itcaec37c2a6.html#devabd541cd5). It is ignored when building any product other than a dynamic library.
    func dylibInstallNameBase(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DYLIB_INSTALL_NAME_BASE"] = .string(value)
        return newDict
    }
    
    func embeddedContentContainsSwift(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EMBEDDED_CONTENT_CONTAINS_SWIFT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func embeddedProfileName(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EMBEDDED_PROFILE_NAME"] = .string(value)
        return newDict
    }
    
    /// Embed all the built asset packs inside the product bundle. Since this negates the performance benefits of the On Demand Resources feature, it is only useful for testing purposes when it isn't practical to use an asset pack server.
    func embedAssetPacksInProductBundle(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EMBED_ASSET_PACKS_IN_PRODUCT_BUNDLE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func enableAppleKextCodeGeneration(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_APPLE_KEXT_CODE_GENERATION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Activating this setting indicates that the target or project should generate bitcode during compilation for platforms and architectures that support it. For Archive builds, bitcode will be generated in the linked binary for submission to the App Store. For other builds, the compiler and linker will check whether the code complies with the requirements for bitcode generation, but will not generate actual bitcode.
    func enableBitcode(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_BITCODE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func enableDefaultHeaderSearchPaths(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_DEFAULT_HEADER_SEARCH_PATHS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enable hardened runtime restrictions.
    func enableHardenedRuntime(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_HARDENED_RUNTIME"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Specifies whether to automatically track dependencies on included header files.
    func enableHeaderDependencies(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_HEADER_DEPENDENCIES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enabled the incremental `distill` option in the asset catalog compiler. This feature is experimental and should only be enabled with caution.
    func enableIncrementalDistill(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_INCREMENTAL_DISTILL"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Controls whether assertion logic provided by `NSAssert` is included in the preprocessed source code or is elided during preprocessing. Disabling assertions can improve code performance.
    func enableNsAssertions(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_NS_ASSERTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Omit inapplicable resources when building for a single device. For example, when building for a device with a Retina display, exclude 1x resources.
    func enableOnlyActiveResources(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_ONLY_ACTIVE_RESOURCES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// If enabled, tagged assets—files and asset catalog entries—are built into asset packs based on their combination of tags. Untagged resources are treated normally.
    func enableOnDemandResources(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_ON_DEMAND_RESOURCES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// If enabled, the product will be built with options appropriate for supporting previews.
    func enablePreviews(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_PREVIEWS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Controls whether `objc_msgSend` calls must be cast to the appropriate function pointer type before being called.
    func enableStrictObjcMsgsend(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_STRICT_OBJC_MSGSEND"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// When this setting is activated, the product will be built with options appropriate for running automated tests, such as making private interfaces accessible to the tests. This may result in tests running slower than they would without testability enabled.
    func enableTestability(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_TESTABILITY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Specifies whether the build system should add the search paths necessary for compiling and linking against XCTest. This setting is enabled by default if the target is a unit test target or if the target explicitly links to the XCTest framework.
    func enableTestingSearchPaths(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_TESTING_SEARCH_PATHS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func enableUsdzCompilation(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_USDZ_COMPILATION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum EntitlementsDestinationValue: String {
        case empty = ""
        case signature = "Signature"
        case entitlements = "__entitlements"
    }
    
    func entitlementsDestination(_ value: EntitlementsDestinationValue = .empty) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENTITLEMENTS_DESTINATION"] = .string(value.rawValue)
        return newDict
    }
    
    func excludedArchs(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXCLUDED_ARCHS"] = .array(values)
        return newDict
    }
    
    func excludedInstallsrcSubdirectoryPatterns(_ values: [String] = [".DS_Store", ".svn", ".git", ".hg", "CVS"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXCLUDED_INSTALLSRC_SUBDIRECTORY_PATTERNS"] = .array(values)
        return newDict
    }
    
    /// This is a list of `fnmatch()`-style patterns of file or directory names to exclude when performing a recursive search. By default, this is set to `*.nib *.lproj *.framework *.gch *.xcode (*) .DS_Store CVS .svn .git .hg`. Normally, if you override this value you should include the default values via the `$(inherited)` macro.
    func excludedRecursiveSearchPathSubdirectories(_ values: [String] = ["*.nib", "*.lproj", "*.framework", "*.gch", "*.xcode*", "*.xcassets", "(*)", ".DS_Store", "CVS", ".svn", ".git", ".hg", "*.pbproj", "*.pbxproj"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES"] = .array(values)
        return newDict
    }
    
    /// A list of patterns (as defined by `fnmatch(3)`) specifying the names of source files to explicitly _exclude_ when processing the files in the target's build phases (see also [Included Source File Names (INCLUDED\_SOURCE\_FILE\_NAMES)](itcaec37c2a6.html#dev278eb3050)). This setting can be used to define complex filters for which files from the phase should be built in response to other build settings; for example, a value of `*.$(CURRENT_ARCH).c` could serve to exclude particular files based on the architecture being built.
    func excludedSourceFileNames(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXCLUDED_SOURCE_FILE_NAMES"] = .array(values)
        return newDict
    }
    
    /// Identifies the directory that contains additional binary files.
    func executablesFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXECUTABLES_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    /// This is the extension used for the executable product generated by the target, which has a default value based on the product type.
    func executableExtension(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXECUTABLE_EXTENSION"] = .string(value)
        return newDict
    }
    
    /// Identifies the directory that contains the binary the target builds.
    func executableFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXECUTABLE_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    /// Specifies the name of the binary the target produces.
    func executableName(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXECUTABLE_NAME"] = .string(value)
        return newDict
    }
    
    /// Specifies the path to the binary the target produces within its bundle.
    func executablePath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXECUTABLE_PATH"] = .string(path)
        return newDict
    }
    
    /// The prefix used for the executable product generated by the target, which has a default value based on the product type.
    func executablePrefix(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXECUTABLE_PREFIX"] = .string(value)
        return newDict
    }
    
    /// Specifies the suffix of the binary filename, including the character that separates the extension from the rest of the bundle name.
    func executableSuffix(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXECUTABLE_SUFFIX"] = .string(value)
        return newDict
    }
    
    func executableVariantSuffix(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXECUTABLE_VARIANT_SUFFIX"] = .string(value)
        return newDict
    }
    
    /// This is a project-relative path to a file that lists the symbols to export. See `ld -exported_symbols_list` for details on exporting symbols.
    func exportedSymbolsFile(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXPORTED_SYMBOLS_FILE"] = .string(value)
        return newDict
    }
    
    func expandbuildsettings(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ExpandBuildSettings"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func fileList(_ path: Path = "$(OBJECT_FILE_DIR)/LinkFileList") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["FILE_LIST"] = .string(path)
        return newDict
    }
    
    func fixedFilesDir(_ path: Path = "$(TARGET_TEMP_DIR)/FixedFiles") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["FIXED_FILES_DIR"] = .string(path)
        return newDict
    }
    
    /// Specifies the directory that contains the product’s embedded frameworks.
    func frameworksFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["FRAMEWORKS_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    /// This is a list of paths to folders containing frameworks to be searched by the compiler for both included or imported header files when compiling C, Objective-C, C++, or Objective-C++, and by the linker for frameworks used by the product. Paths are delimited by whitespace, so any paths with spaces in them must be properly quoted.
    func frameworkSearchPaths(_ paths: [Path] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["FRAMEWORK_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    /// Framework bundles are versioned by having contents in subfolders of a version folder that has links to the current version and its contents.
    func frameworkVersion(_ value: String = "A") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["FRAMEWORK_VERSION"] = .string(value)
        return newDict
    }
    
    func fullProductName(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["FULL_PRODUCT_NAME"] = .string(value)
        return newDict
    }
    
    func gcc3Version(_ value: String = "3.3") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC3_VERSION"] = .string(value)
        return newDict
    }
    
    /// Enabling this setting causes `char` to be unsigned by default, disabling it causes `char` to be signed by default.
    func gccCharIsUnsignedChar(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_CHAR_IS_UNSIGNED_CHAR"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enable the CodeWarrior/Microsoft syntax for inline assembly code in addition to the standard GCC syntax.
    func gccCwAsmSyntax(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_CW_ASM_SYNTAX"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum GccCLanguageStandardValue: String {
        case ansi = "ansi"
        case c89 = "c89"
        case gnu89 = "gnu89"
        case c99 = "c99"
        case gnu99 = "gnu99"
        case c11 = "c11"
        case gnu11 = "gnu11"
        case compilerDefault = "compiler-default"
    }
    
    /// Choose a standard or non-standard C language dialect.
    ///
    /// - _ANSI C:_ Accept ISO C90 and ISO C++, turning off GNU extensions that are incompatible. `-ansi` Incompatible GNU extensions include the `asm`, `inline`, and `typeof` keywords (but not the equivalent ` __asm__ `, ` __inline__ `, and ` __typeof__ ` forms), and the `//` syntax for comments. This setting also enables trigraphs.
    ///
    /// - _C89:_ Accept ISO C90 (1990), but not GNU extensions. `-std=c89`
    ///
    /// - _GNU89:_ Accept ISO C90 and GNU extensions. `-std=gnu89`
    ///
    /// - _C99:_ Accept ISO C99 (1999), but not GNU extensions. `-std=c99`
    ///
    /// - _GNU99:_ Accept ISO C99 and GNU extensions. `-std=gnu99`
    ///
    /// - _C11:_ Accept ISO C11 (2011), but not GNU extensions. `-std=c11`
    ///
    /// - _GNU11:_ Accept ISO C11 and GNU extensions. `-std=gnu11`
    ///
    /// - _Compiler Default:_ Tells the compiler to use its default C language dialect. This is normally the best choice unless you have specific needs. (Currently equivalent to GNU99.)
    func gccCLanguageStandard(_ value: GccCLanguageStandardValue = .compilerDefault) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_C_LANGUAGE_STANDARD"] = .string(value.rawValue)
        return newDict
    }
    
    enum GccDebugInformationFormatValue: String {
        case dwarf = "dwarf"
        case dwarfWithDsym = "dwarf-with-dsym"
    }
    
    func gccDebugInformationFormat(_ value: GccDebugInformationFormatValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_DEBUG_INFORMATION_FORMAT"] = .string(value.rawValue)
        return newDict
    }
    
    /// Faster function calls for applications. Not appropriate for shared libraries, which need to be position-independent.
    func gccDynamicNoPic(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_DYNAMIC_NO_PIC"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Controls whether `asm`, `inline`, and `typeof` are treated as keywords or whether they can be used as identifiers.
    func gccEnableAsmKeyword(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_ASM_KEYWORD"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Controls whether builtin functions that do not begin with `__builtin_` as prefix are recognized.
    ///
    /// GCC normally generates special code to handle certain builtin functions more efficiently; for instance, calls to `alloca` may become single instructions that adjust the stack directly, and calls to `memcpy` may become inline copy loops. The resulting code is often both smaller and faster, but since the function calls no longer appear as such, you cannot set a breakpoint on those calls, nor can you change the behavior of the functions by linking with a different library. In addition, when a function is recognized as a builtin function, GCC may use information about that function to warn about problems with calls to that function, or to generate more efficient code, even if the resulting code still contains calls to that function. For example, warnings are given with `-Wformat` for bad calls to `printf`, when `printf` is built in, and `strlen` is known not to modify global memory.
    func gccEnableBuiltinFunctions(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_BUILTIN_FUNCTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enable C++ exception handling. Generates extra code needed to propagate exceptions. For some targets, this implies GCC will generate frame unwind information for all functions, which can produce significant data size overhead, although it does not affect execution. If you do not specify this option, GCC will enable it by default for languages like C++ that normally require exception handling, and disable it for languages like C that do not normally require it. However, you may need to enable this option when compiling C code that needs to interoperate properly with exception handlers written in C++.
    func gccEnableCppExceptions(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_CPP_EXCEPTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enable generation of information about every class with virtual functions for use by the C++ runtime type identification features (`dynamic_cast` and `typeid`). If you don't use those parts of the language, you can save some space by using this flag. Note that exception handling uses the same information, but it will generate it as needed.
    func gccEnableCppRtti(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_CPP_RTTI"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enable exception handling. Generates extra code needed to propagate exceptions. For some targets, this implies GCC will generate frame unwind information for all functions, which can produce significant data size overhead, although it does not affect execution. If you do not specify this option, GCC will enable it by default for languages like C++ and Objective-C that normally require exception handling, and disable it for languages like C that do not normally require it. However, you may need to enable this option when compiling C code that needs to interoperate properly with exception handlers written in other languages. You may also wish to disable this option if you are compiling older programs that don't use exception handling.
    func gccEnableExceptions(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_EXCEPTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Generate output containing library calls for floating point.
    func gccEnableFloatingPointLibraryCalls(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_FLOATING_POINT_LIBRARY_CALLS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Activating this setting enables kernel development mode.
    func gccEnableKernelDevelopment(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_KERNEL_DEVELOPMENT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// This setting enables `@try`/`@catch`/`@throw` syntax for handling exceptions in Objective-C code. Only applies to Objective-C.
    func gccEnableObjcExceptions(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_OBJC_EXCEPTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Recognize and construct Pascal-style string literals. Its use in new code is discouraged.
    ///
    /// Pascal string literals take the form `"\pstring"` . The special escape sequence `\p` denotes the Pascal length byte for the string, and will be replaced at compile time with the number of characters that follow. The `\p` may only appear at the beginning of a string literal, and may not appear in wide string literals or as an integral constant.
    func gccEnablePascalStrings(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_PASCAL_STRINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Specifies whether the binary uses the builtin functions that provide access to the SSE3 extensions to the IA-32 architecture.
    func gccEnableSse3Extensions(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_SSE3_EXTENSIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Specifies whether the binary uses the builtin functions that provide access to the SSE4.1 extensions to the IA-32 architecture.
    func gccEnableSse41Extensions(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_SSE41_EXTENSIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Specifies whether the binary uses the builtin functions that provide access to the SSE4.2 extensions to the IA-32 architecture.
    func gccEnableSse42Extensions(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_SSE42_EXTENSIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func gccEnableSupplementalSse3Instructions(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_SUPPLEMENTAL_SSE3_INSTRUCTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Controls whether or not trigraphs are permitted in the source code.
    func gccEnableTrigraphs(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_TRIGRAPHS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enables some floating point optimizations that are not IEEE754-compliant, but which usually work. Programs that require strict IEEE compliance may not work with this option.
    func gccFastMath(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_FAST_MATH"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enables or disables generation of debug symbols. When debug symbols are enabled, the level of detail can be controlled by the [Debug Information Format (DEBUG\_INFORMATION\_FORMAT)](itcaec37c2a6.html#dev881878d77) setting.
    func gccGenerateDebuggingSymbols(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_GENERATE_DEBUGGING_SYMBOLS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Activating this setting causes a `notes` file to be produced that the `gcov` code-coverage utility can use to show program coverage.
    func gccGenerateTestCoverageFiles(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_GENERATE_TEST_COVERAGE_FILES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enabling this option will enable increased sharing of precompiled headers among targets that share the same prefix header and precompiled header directory.
    ///
    /// Xcode distinguishes between precompiled header (PCH) files by generating a hash value based on the command-line options to the compiler used to create the PCH. Enabling this option will exclude certain compiler options from that hash. Presently this option will exclude search path options (`-I`, `-iquote`, `-isystem`, `-F`, `-L`) from the hash.
    ///
    /// Enabling increased sharing of PCH files carries some risk—if two targets use the same prefix header but have different include paths that cause the prefix header to include different files when they are precompiled, then subtle problems may result because one target will use a PCH that was built using files included by the other target. In this case, this option must be turned off in order to enforce correctness.
    func gccIncreasePrecompiledHeaderSharing(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_INCREASE_PRECOMPILED_HEADER_SHARING"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// When enabled, out-of-line copies of inline methods are declared `private extern`.
    func gccInlinesArePrivateExtern(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_INLINES_ARE_PRIVATE_EXTERN"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum GccInputFiletypeValue: String {
        case automatic = "automatic"
        case sourcecodeCC = "sourcecode.c.c"
        case sourcecodeCObjc = "sourcecode.c.objc"
        case sourcecodeCppCpp = "sourcecode.cpp.cpp"
        case sourcecodeCppObjcpp = "sourcecode.cpp.objcpp"
    }
    
    /// Specifies whether to compile each source file according to its file type, or whether to treat all source files in the target as if they are of a specific language.
    func gccInputFiletype(_ value: GccInputFiletypeValue = .automatic) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_INPUT_FILETYPE"] = .string(value.rawValue)
        return newDict
    }
    
    /// Activating this setting indicates that code should be added so program flow arcs are instrumented.
    func gccInstrumentProgramFlowArcs(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_INSTRUMENT_PROGRAM_FLOW_ARCS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enabling this option allows linking with the shared libraries. This is the default for most product types.
    func gccLinkWithDynamicLibraries(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_LINK_WITH_DYNAMIC_LIBRARIES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func gccMacosxVersionMin(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_MACOSX_VERSION_MIN"] = .string(value)
        return newDict
    }
    
    /// In C, allocate even uninitialized global variables in the data section of the object file, rather than generating them as common blocks. This has the effect that if the same variable is declared (without `extern`) in two different compilations, you will get an error when you link them.
    func gccNoCommonBlocks(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_NO_COMMON_BLOCKS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum GccObjcAbiVersionValue: String {
        case _1 = "1"
        case _2 = "2"
    }
    
    func gccObjcAbiVersion(_ value: GccObjcAbiVersionValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_OBJC_ABI_VERSION"] = .string(value.rawValue)
        return newDict
    }
    
    func gccObjcLegacyDispatch(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_OBJC_LEGACY_DISPATCH"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum GccOperationValue: String {
        case compile = "compile"
        case generatePreprocessed = "generate-preprocessed"
        case generateAssembler = "generate-assembler"
        case precompile = "precompile"
        case separateSymbols = "separate-symbols"
    }
    
    func gccOperation(_ value: GccOperationValue = .compile) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_OPERATION"] = .string(value.rawValue)
        return newDict
    }
    
    enum GccOptimizationLevelValue: String {
        case _0 = "0"
        case _1 = "1"
        case _2 = "2"
        case _3 = "3"
        case s = "s"
        case fast = "fast"
        case z = "z"
    }
    
    /// Specifies the degree to which the generated code is optimized for speed and binary size.
    ///
    /// - _None:_ Do not optimize. `-O0` With this setting, the compiler's goal is to reduce the cost of compilation and to make debugging produce the expected results. Statements are independent—if you stop the program with a breakpoint between statements, you can then assign a new value to any variable or change the program counter to any other statement in the function and get exactly the results you would expect from the source code.
    ///
    /// - _Fast:_ Optimizing compilation takes somewhat more time, and a lot more memory for a large function. `-O1` With this setting, the compiler tries to reduce code size and execution time, without performing any optimizations that take a great deal of compilation time. In Apple's compiler, strict aliasing, block reordering, and inter-block scheduling are disabled by default when optimizing.
    ///
    /// - _Faster:_ The compiler performs nearly all supported optimizations that do not involve a space-speed tradeoff. `-O2` With this setting, the compiler does not perform loop unrolling or function inlining, or register renaming. As compared to the `Fast` setting, this setting increases both compilation time and the performance of the generated code.
    ///
    /// - _Fastest:_ Turns on all optimizations specified by the `Faster` setting and also turns on function inlining and register renaming options. This setting may result in a larger binary. `-O3`
    ///
    /// - _Fastest, Smallest:_ Optimize for size. This setting enables all `Faster` optimizations that do not typically increase code size. It also performs further optimizations designed to reduce code size. `-Os`
    ///
    /// - _Fastest, Aggressive Optimizations:_ This setting enables `Fastest` but also enables aggressive optimizations that may break strict standards compliance but should work well on well-behaved code. `-Ofast`
    ///
    /// - _Smallest, Aggressive Size Optimizations:_ This setting enables additional size savings by isolating repetitive code patterns into a compiler generated function. `-Oz`
    func gccOptimizationLevel(_ value: GccOptimizationLevelValue = .s) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_OPTIMIZATION_LEVEL"] = .string(value.rawValue)
        return newDict
    }
    
    func gccPfeFileCDialects(_ values: [String] = ["c", "objective-c", "c++", "objective-c++"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_PFE_FILE_C_DIALECTS"] = .array(values)
        return newDict
    }
    
    /// Generates a precompiled header for the prefix header, which should reduce overall build times.
    ///
    /// Precompiling the prefix header will be most effective if the contents of the prefix header or any file it includes change rarely. If the contents of the prefix header or any file it includes change frequently, there may be a negative impact to overall build time.
    func gccPrecompilePrefixHeader(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_PRECOMPILE_PREFIX_HEADER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Implicitly include the named header. The path given should either be a project relative path or an absolute path.
    func gccPrefixHeader(_ path: Path = "$(PREFIX_HEADER)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_PREFIX_HEADER"] = .string(path)
        return newDict
    }
    
    /// Space-separated list of preprocessor macros of the form `foo` or `foo=bar`.
    func gccPreprocessorDefinitions(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_PREPROCESSOR_DEFINITIONS"] = .array(values)
        return newDict
    }
    
    /// Space-separated list of preprocessor macros of the form `foo` or `foo=bar`. These macros are not used when precompiling a prefix header file.
    func gccPreprocessorDefinitionsNotUsedInPrecomps(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_PREPROCESSOR_DEFINITIONS_NOT_USED_IN_PRECOMPS"] = .array(values)
        return newDict
    }
    
    func gccProductTypePreprocessorDefinitions(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_PRODUCT_TYPE_PREPROCESSOR_DEFINITIONS"] = .array(values)
        return newDict
    }
    
    /// Reuse string literals.
    func gccReuseStrings(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_REUSE_STRINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Make enums only as large as needed for the range of possible values.
    ///
    /// This setting generates code that may not binary compatible with code generated without this setting or with macOS frameworks.
    func gccShortEnums(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_SHORT_ENUMS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Optimize code by making more aggressive assumptions about whether pointers can point to the same objects as other pointers. Programs that use pointers a lot may benefit from this, but programs that don't strictly follow the ISO C rules about the type with which an object may be accessed may behave unexpectedly.
    func gccStrictAliasing(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_STRICT_ALIASING"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// When enabled, all symbols are declared `private extern` unless explicitly marked to be exported using ` __attribute__ ((visibility("default")))` in code. If not enabled, all symbols are exported unless explicitly marked as `private extern`. See [Controlling Symbol Visibility](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/CppRuntimeEnv/Articles/SymbolVisibility.html#//apple_ref/doc/uid/TP40001670-CJBGBHEJ) in [C++ Runtime Environment Programming Guide](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/CppRuntimeEnv/CPPRuntimeEnv.html).
    func gccSymbolsPrivateExtern(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_SYMBOLS_PRIVATE_EXTERN"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Emits extra code to use the routines specified in the C++ ABI for thread-safe initialization of local statics. You can disable this option to reduce code size slightly in code that doesn't need to be thread-safe.
    func gccThreadsafeStatics(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_THREADSAFE_STATICS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Causes warnings about missing function prototypes to be treated as errors. Only applies to C and Objective-C.
    func gccTreatImplicitFunctionDeclarationsAsErrors(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_TREAT_IMPLICIT_FUNCTION_DECLARATIONS_AS_ERRORS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enabling this option causes warnings about incompatible pointer types to be treated as errors.
    func gccTreatIncompatiblePointerTypeWarningsAsErrors(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_TREAT_INCOMPATIBLE_POINTER_TYPE_WARNINGS_AS_ERRORS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enabling this option causes all warnings to be treated as errors.
    func gccTreatWarningsAsErrors(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_TREAT_WARNINGS_AS_ERRORS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Unrolls loops. Unrolling makes the code larger, but may make it faster by reducing the number of branches executed.
    func gccUnrollLoops(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_UNROLL_LOOPS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func gccUseGcc3PfeSupport(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_USE_GCC3_PFE_SUPPORT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Controls whether the standard system directories are searched for header files. When disabled, only the directories you have specified with `-I` options (and the directory of the current file, if appropriate) are searched.
    func gccUseStandardIncludeSearching(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_USE_STANDARD_INCLUDE_SEARCHING"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// The compiler to use for C, C++, and Objective-C.
    func gccVersion(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_VERSION"] = .string(value)
        return newDict
    }
    
    func gccVersionIdentifier(_ value: String = "$(GCC_VERSION:identifier)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_VERSION_IDENTIFIER"] = .string(value)
        return newDict
    }
    
    enum GccWarn64To32BitConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }
    
    /// Warn if a value is implicitly converted from a 64-bit type to a 32-bit type. This is a subset of the warnings provided by -Wconversion.
    func gccWarn64To32BitConversion(_ value: GccWarn64To32BitConversionValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_64_TO_32_BIT_CONVERSION"] = .string(value.rawValue)
        return newDict
    }
    
    /// Warn about the use of deprecated functions, variables, and types (as indicated by the `deprecated` attribute).
    func gccWarnAboutDeprecatedFunctions(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Unchecking this setting will suppress warnings from applying the `offsetof` macro to a non-POD type. According to the 1998 ISO C++ standard, applying `offsetof` to a non-POD type is undefined. In existing C++ implementations, however, `offsetof` typically gives meaningful results even when applied to certain kinds of non-POD types, such as a simple struct that fails to be a POD type only by virtue of having a constructor. This flag is for users who are aware that they are writing nonportable code and who have deliberately chosen to ignore the warning about it.
    ///
    /// The restrictions on `offsetof` may be relaxed in a future version of the C++ standard.
    func gccWarnAboutInvalidOffsetofMacro(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_ABOUT_INVALID_OFFSETOF_MACRO"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn if a structure's initializer has some fields missing. For example, the following code would cause such a warning because `x.h` is implicitly zero:
    ///
    /// `struct s { int f, g, h; };``struct s x = { 3, 4 };`
    ///
    /// This option does not warn about designated initializers, so the following modification would not trigger a warning:
    ///
    /// `struct s { int f, g, h; };``struct s x = { .f = 3, .g = 4 };`
    func gccWarnAboutMissingFieldInitializers(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_ABOUT_MISSING_FIELD_INITIALIZERS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn when a source file does not end with a newline.
    func gccWarnAboutMissingNewline(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_ABOUT_MISSING_NEWLINE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Causes warnings to be emitted about missing prototypes.
    func gccWarnAboutMissingPrototypes(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_ABOUT_MISSING_PROTOTYPES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn when pointers passed via arguments or assigned to a variable differ in sign.
    func gccWarnAboutPointerSignedness(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_ABOUT_POINTER_SIGNEDNESS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum GccWarnAboutReturnTypeValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }
    
    /// Causes warnings to be emitted when a function with a defined return type (not `void`) contains a return statement without a return-value or when it does not contain any return statements. Also emits a warning when a function with a void return type tries to return a value.
    func gccWarnAboutReturnType(_ value: GccWarnAboutReturnTypeValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_ABOUT_RETURN_TYPE"] = .string(value.rawValue)
        return newDict
    }
    
    /// Warn if methods required by a protocol are not implemented in the class adopting it. Only applies to Objective-C.
    func gccWarnAllowIncompleteProtocol(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_ALLOW_INCOMPLETE_PROTOCOL"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn whenever a switch statement has an index of enumeral type and lacks a case for one or more of the named codes of that enumeration. The presence of a default label prevents this warning. Case labels outside the enumeration range also provoke warnings when this option is used.
    func gccWarnCheckSwitchStatements(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_CHECK_SWITCH_STATEMENTS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn about four-char literals (for example, macOS-style `OSTypes`: `'APPL'`).
    func gccWarnFourCharacterConstants(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_FOUR_CHARACTER_CONSTANTS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn when a function declaration hides virtual functions from a base class.
    ///
    /// For example, in the following example, the `A` class version of `f()` is hidden in `B`.
    ///
    /// `struct A {`` virtual void f();``};``struct B: public A {`` void f(int);``};`
    ///
    /// As a result, the following code will fail to compile.
    ///
    /// `B* b;``b-&gt;f();`
    ///
    /// This setting only applies to C++ and Objective-C++ sources.
    func gccWarnHiddenVirtualFunctions(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_HIDDEN_VIRTUAL_FUNCTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Inhibit all warning messages.
    func gccWarnInhibitAllWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_INHIBIT_ALL_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn if an aggregate or union initializer is not fully bracketed. In the following example, the initializer for `a` is not fully bracketed, but the initializer for `b` is fully bracketed.
    ///
    /// `int a`2``2` = { 0, 1, 2, 3 };``int b`2``2` = { { 0, 1 }, { 2, 3 } };`
    func gccWarnInitializerNotFullyBracketed(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_INITIALIZER_NOT_FULLY_BRACKETED"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn if parentheses are omitted in certain contexts, such as when there is an assignment in a context where a truth value is expected, or when operators are nested whose precedence causes confusion. Also, warn about constructions where there may be confusion as to which `if` statement an `else` branch belongs. For example:
    ///
    /// `{`` if (a)`` if (b)`` foo ();`` else`` bar ();``}`
    ///
    /// In C, every `else` branch belongs to the innermost possible `if` statement, which in the example above is `if (b)`. This is often not what the programmer expects, as illustrated by indentation used in the example above. This build setting causes GCC to issue a warning when there is the potential for this confusion. To eliminate the warning, add explicit braces around the innermost `if` statement so there is no way the `else` could belong to the enclosing `if`. For example:
    ///
    /// `{`` if (a)`` {`` if (b)`` foo ();`` else`` bar ();`` }``}`
    func gccWarnMissingParentheses(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_MISSING_PARENTHESES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func gccWarnMultipleDefinitionTypesForSelector(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_MULTIPLE_DEFINITION_TYPES_FOR_SELECTOR"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn when a class declares an nonvirtual destructor that should probably be virtual, because it looks like the class will be used polymorphically. This is only active for C++ or Objective-C++ sources.
    func gccWarnNonVirtualDestructor(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_NON_VIRTUAL_DESTRUCTOR"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Issue all the warnings demanded by strict ISO C and ISO C++; reject all programs that use forbidden extensions, and some other programs that do not follow ISO C and ISO C++. For ISO C, follows the version of the ISO C standard specified by any `-std` option used.
    func gccWarnPedantic(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_PEDANTIC"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn whenever a local variable shadows another local variable, parameter or global variable or whenever a builtin function is shadowed.
    func gccWarnShadow(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_SHADOW"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn when a comparison between signed and unsigned values could produce an incorrect result when the signed value is converted to unsigned.
    func gccWarnSignCompare(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_SIGN_COMPARE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn if multiple methods with differing argument and/or return types are found for a given selector when attempting to send a message using this selector to a receiver of type `id` or `Class`. When this setting is disabled, the compiler will omit such warnings if any differences found are confined to types that share the same size and alignment.
    func gccWarnStrictSelectorMatch(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_STRICT_SELECTOR_MATCH"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Check calls to `printf` and `scanf` to make sure that the arguments supplied have types appropriate to the format string specified, and that the conversions specified in the format string make sense.
    func gccWarnTypecheckCallsToPrintf(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_TYPECHECK_CALLS_TO_PRINTF"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn if a `@selector(...)` expression referring to an undeclared selector is found. A selector is considered undeclared if no method with that name has been declared before the `@selector(...)` expression, either explicitly in an `@interface` or `@protocol` declaration, or implicitly in an `@implementation` section. This option always performs its checks as soon as a `@selector(...)` expression is found, while `-Wselector` only performs its checks in the final stage of compilation. This also enforces the coding style convention that methods and selectors must be declared before being used.
    func gccWarnUndeclaredSelector(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_UNDECLARED_SELECTOR"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum GccWarnUninitializedAutosValue: String {
        case yes = "YES"
        case yesAggressive = "YES_AGGRESSIVE"
        case no = "NO"
    }
    
    /// Warn if a variable might be clobbered by a `setjmp` call or if an automatic variable is used without prior initialization.
    ///
    /// The compiler may not detect all cases where an automatic variable is initialized or all usage patterns that may lead to use prior to initialization. You can toggle between the normal uninitialized value checking or the more aggressive (conservative) checking, which finds more issues but the checking is much stricter.
    func gccWarnUninitializedAutos(_ value: GccWarnUninitializedAutosValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_UNINITIALIZED_AUTOS"] = .string(value.rawValue)
        return newDict
    }
    
    /// Warn when a `#pragma` directive is encountered that is not understood by GCC. If this command line option is used, warnings will even be issued for unknown pragmas in system header files. This is not the case if the warnings were only enabled by the `-Wall` command-line option.
    func gccWarnUnknownPragmas(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_UNKNOWN_PRAGMAS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn whenever a static function is declared but not defined or a noninline static function is unused.
    func gccWarnUnusedFunction(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_UNUSED_FUNCTION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn whenever a label is declared but not used.
    func gccWarnUnusedLabel(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_UNUSED_LABEL"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn whenever a function parameter is unused aside from its declaration.
    func gccWarnUnusedParameter(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_UNUSED_PARAMETER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn whenever a statement computes a result that is explicitly not used.
    func gccWarnUnusedValue(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_UNUSED_VALUE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Warn whenever a local variable or nonconstant static variable is unused aside from its declaration.
    func gccWarnUnusedVariable(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_UNUSED_VARIABLE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func generatedModulemapDir(_ value: String = "$(OBJROOT)/GeneratedModuleMaps$(EFFECTIVE_PLATFORM_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GENERATED_MODULEMAP_DIR"] = .string(value)
        return newDict
    }
    
    /// Activating this setting will cause the object files built by a target to be prelinked using `ld -r` into a single object file, and that object file will then be linked into the final product. This is useful to force the linker to resolve symbols and link the object files into a single module before building a static library. Also, a separate set of link flags can be applied to the prelink allowing additional control over, for instance, exported symbols.
    func generateMasterObjectFile(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GENERATE_MASTER_OBJECT_FILE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Forces the `PkgInfo` file to be written to wrapped products even if this file is not expected.
    func generatePkginfoFile(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GENERATE_PKGINFO_FILE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Activating this setting will cause the compiler and linker to generate profiling code. For example, GCC will generate code suitable for use with `gprof(1)`.
    func generateProfilingCode(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GENERATE_PROFILING_CODE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enables the generation of Text-Based stubs for dynamic libraries and frameworks.
    func generateTextBasedStubs(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GENERATE_TEXT_BASED_STUBS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func globalCflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GLOBAL_CFLAGS"] = .array(values)
        return newDict
    }
    
    func generatedpkginfofile(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GeneratedPkgInfoFile"] = .string(path)
        return newDict
    }
    
    enum HeadermapFileFormatValue: String {
        case traditional = "traditional"
    }
    
    func headermapFileFormat(_ value: HeadermapFileFormatValue = .traditional) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["HEADERMAP_FILE_FORMAT"] = .string(value.rawValue)
        return newDict
    }
    
    /// Specifies whether the header map contains a name/path entry for every header in the target being built.
    func headermapIncludesFlatEntriesForTargetBeingBuilt(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["HEADERMAP_INCLUDES_FLAT_ENTRIES_FOR_TARGET_BEING_BUILT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Specifies whether the header map contains a framework-name/path entry for every header in the target being built, including targets that do not build frameworks.
    func headermapIncludesFrameworkEntriesForAllProductTypes(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["HEADERMAP_INCLUDES_FRAMEWORK_ENTRIES_FOR_ALL_PRODUCT_TYPES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func headermapIncludesNonpublicNonprivateHeaders(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["HEADERMAP_INCLUDES_NONPUBLIC_NONPRIVATE_HEADERS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Specifies whether the header map contains a name/path entry for every header in the project, regardless of the headers’ target membership.
    func headermapIncludesProjectHeaders(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["HEADERMAP_INCLUDES_PROJECT_HEADERS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func headermapUsesFrameworkPrefixEntries(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["HEADERMAP_USES_FRAMEWORK_PREFIX_ENTRIES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func headermapUsesVfs(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["HEADERMAP_USES_VFS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// This is a list of paths to folders to be searched by the compiler for included or imported header files when compiling C, Objective-C, C++, or Objective-C++. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted.
    func headerSearchPaths(_ paths: [Path] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["HEADER_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    func hideBitcodeSymbols(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["HIDE_BITCODE_SYMBOLS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func home(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["HOME"] = .string(path)
        return newDict
    }
    
    /// Instructs the XIB compiler to add custom fonts to the application's `Info.plist`, which will cause the fonts to activate upon application launch.
    func ibcCompilerAutoActivateCustomFonts(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_COMPILER_AUTO_ACTIVATE_CUSTOM_FONTS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func ibcCompilerUseNibarchivesForMacos(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_COMPILER_USE_NIBARCHIVES_FOR_MACOS"] = .string(value)
        return newDict
    }
    
    /// Show errors encountered during the compilation of XIB files.
    func ibcErrors(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_ERRORS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// If enabled, compile XIB files into flattened (non-wrapper) NIB files. After flattening, the resulting NIB is more compact but no longer editable by Interface Builder. When this option is disabled, the resulting NIB file remains editable in Interface Builder.
    func ibcFlattenNibs(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_FLATTEN_NIBS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Defines the module name for Swift classes referenced without a specific module name.
    func ibcModule(_ value: String = "$(PRODUCT_MODULE_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_MODULE"] = .string(value)
        return newDict
    }
    
    /// Show notices encountered during the compilation of XIB files.
    func ibcNotices(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_NOTICES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// A list of additional flags to pass to the Interface Builder Compiler. Use this setting if Xcode does not already provide UI for a particular Interface Builder Compiler flag.
    func ibcOtherFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_OTHER_FLAGS"] = .array(values)
        return newDict
    }
    
    /// Instructs Interface Builder to load frameworks and Interface Builder plugins from the specified directory. Setting this value to `$(BUILD_DIR)/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME)` will ensure that Interface Builder will load frameworks and plug-ins from the built products directory of the current build configuration.
    func ibcOverridingPluginsAndFrameworksDir(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_OVERRIDING_PLUGINS_AND_FRAMEWORKS_DIR"] = .string(path)
        return newDict
    }
    
    /// A list of paths to Interface Builder plugins to load when compiling XIB files.
    func ibcPlugins(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_PLUGINS"] = .array(values)
        return newDict
    }
    
    /// A list of paths to be searched for Interface Builder plug-ins to load when compiling XIB files.
    func ibcPluginSearchPaths(_ paths: [Path] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_PLUGIN_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    func ibcRegionsAndStringsFiles(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_REGIONS_AND_STRINGS_FILES"] = .array(values)
        return newDict
    }
    
    /// Strips an Interface Builder NIB to reduce its size for deployment. The resulting NIB is more compact but no longer editable by Interface Builder. When this option is disabled, the resulting NIB file remains editable by Interface Builder.
    func ibcStripNibs(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_STRIP_NIBS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Show warnings encountered during the compilation of XIB files.
    func ibcWarnings(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Instructs the Storyboard compiler to add custom fonts to the application's `Info.plist` that will cause the fonts to activate upon application launch.
    func ibscCompilerAutoActivateCustomFonts(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_COMPILER_AUTO_ACTIVATE_CUSTOM_FONTS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func ibscCompilerUseNibarchivesForMacos(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_COMPILER_USE_NIBARCHIVES_FOR_MACOS"] = .string(value)
        return newDict
    }
    
    /// Show errors encountered during the compilation of Storyboard files.
    func ibscErrors(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_ERRORS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Compiles a Storyboard file into flattened (non-wrapper) Storyboard file. After flattening, the resulting Storyboard is more compact but no longer editable by Interface Builder. When this option is disabled, the resulting Storyboard file remains editable in Interface Builder.
    func ibscFlattenNibs(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_FLATTEN_NIBS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Defines the module name for Swift classes referenced without a specific module name.
    func ibscModule(_ value: String = "$(PRODUCT_MODULE_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_MODULE"] = .string(value)
        return newDict
    }
    
    /// Show notices encountered during the compilation of Storyboard files.
    func ibscNotices(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_NOTICES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// A list of additional flags to pass to the Interface Builder Compiler. Use this setting if Xcode does not already provide UI for a particular Interface Builder Compiler flag.
    func ibscOtherFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_OTHER_FLAGS"] = .array(values)
        return newDict
    }
    
    func ibscRegionsAndStringsFiles(_ values: [String] = ["$(IBC_REGIONS_AND_STRINGS_FILES)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_REGIONS_AND_STRINGS_FILES"] = .array(values)
        return newDict
    }
    
    /// Strips an editable Interface Builder storyboardc file to reduce its size for deployment. The resulting storyboardc is more compact but no longer editable by Interface Builder. When this option is disabled, the resulting storyboardc file remains editable by Interface Builder.
    func ibscStripNibs(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_STRIP_NIBS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Show warnings encountered during the compilation of Storyboard files.
    func ibscWarnings(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func iconv(_ path: Path = "/usr/bin/iconv") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ICONV"] = .string(path)
        return newDict
    }
    
    func iigCxxLanguageStandard(_ value: String = "$(CLANG_CXX_LANGUAGE_STANDARD)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IIG_CXX_LANGUAGE_STANDARD"] = .string(value)
        return newDict
    }
    
    func iigDerivedFileDir(_ value: String = "$(DERIVED_FILE_DIR)/$(IIG_FRAMEWORK_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IIG_DERIVED_FILE_DIR"] = .string(value)
        return newDict
    }
    
    func iigFrameworkName(_ value: String = "$(PRODUCT_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IIG_FRAMEWORK_NAME"] = .string(value)
        return newDict
    }
    
    func iigHeadersDir(_ value: String = "$(IIG_DERIVED_FILE_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IIG_HEADERS_DIR"] = .string(value)
        return newDict
    }
    
    func iigImplementationDir(_ value: String = "$(IIG_DERIVED_FILE_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IIG_IMPLEMENTATION_DIR"] = .string(value)
        return newDict
    }
    
    func iigPreprocessorDefinitions(_ values: [String] = ["__IIG=1"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IIG_PREPROCESSOR_DEFINITIONS"] = .array(values)
        return newDict
    }
    
    /// This is a list of `fnmatch()`-style patterns of file or directory names to include when performing a recursive search. By default, this is empty and is only customized when you want to provide exceptions to the list of filename patterns provided in [Sub-Directories to Exclude in Recursive Searches (EXCLUDED\_RECURSIVE\_SEARCH\_PATH\_SUBDIRECTORIES)](itcaec37c2a6.html#dev454fb3164).
    func includedRecursiveSearchPathSubdirectories(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES"] = .array(values)
        return newDict
    }
    
    /// A list of patterns (as defined by `fnmatch(3)`) specifying the names of source files to explicitly _include_ when processing the files in the target's build phases. This setting is only useful when combined with [Excluded Source File Names (EXCLUDED\_SOURCE\_FILE\_NAMES)](itcaec37c2a6.html#devd20926192), and can be used to define complex filters for which files from the phase should be built in response to other build settings.
    func includedSourceFileNames(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INCLUDED_SOURCE_FILE_NAMES"] = .array(values)
        return newDict
    }
    
    /// Expand build settings in the `Info.plist` file.
    func infoplistExpandBuildSettings(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_EXPAND_BUILD_SETTINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// The project-relative path to the property list file that contains the `Info.plist` information used by bundles. For details on information property list files, see [Information Property List Files](https://developer.apple.com/library/content/documentation/MacOSX/Conceptual/BPRuntimeConfig/Articles/ConfigFiles.html#//apple_ref/doc/uid/20002091-CJBJIEDH) in [Runtime Configuration Guidelines](https://developer.apple.com/library/content/documentation/MacOSX/Conceptual/BPRuntimeConfig/000-Introduction/introduction.html).
    func infoplistFile(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_FILE"] = .string(path)
        return newDict
    }
    
    /// Other flags to pass to the C preprocessor when preprocessing the `Info.plist` file.
    func infoplistOtherPreprocessorFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_OTHER_PREPROCESSOR_FLAGS"] = .array(values)
        return newDict
    }
    
    enum InfoplistOutputFormatValue: String {
        case sameAsInput = "same-as-input"
        case xml = "XML"
        case binary = "binary"
    }
    
    /// Specifies the output encoding for the output `Info.plist`. The output encodings can be `binary` or `XML`. By default, the output encoding will be unchanged from the input.
    func infoplistOutputFormat(_ value: InfoplistOutputFormatValue = .sameAsInput) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_OUTPUT_FORMAT"] = .string(value.rawValue)
        return newDict
    }
    
    /// Specifies the path to the bundle’s information property list file.
    func infoplistPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_PATH"] = .string(path)
        return newDict
    }
    
    /// Implicitly include the given file when preprocessing the `Info.plist` file. The path given should either be a project relative path or an absolute path.
    func infoplistPrefixHeader(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_PREFIX_HEADER"] = .string(value)
        return newDict
    }
    
    /// Preprocess the `Info.plist` file using the C Preprocessor.
    func infoplistPreprocess(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_PREPROCESS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Space-separated list of preprocessor macros of the form `foo` or `foo=bar`. These macros are used when preprocessing the `Info.plist` file.
    func infoplistPreprocessorDefinitions(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_PREPROCESSOR_DEFINITIONS"] = .array(values)
        return newDict
    }
    
    /// Specifies the file that contains the bundle’s localized strings file.
    func infostringsPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOSTRINGS_PATH"] = .string(path)
        return newDict
    }
    
    /// This is the name of the routine to use for initialization.
    func initRoutine(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INIT_ROUTINE"] = .string(value)
        return newDict
    }
    
    /// Enables private framework inlining for Text-Based Stubs.
    func inlinePrivateFrameworks(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INLINE_PRIVATE_FRAMEWORKS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Specifies whether the target’s Copy Files build phases are executed in `installhdr` builds.
    func installhdrsCopyPhase(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTALLHDRS_COPY_PHASE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Specifies whether the target’s Run Script build phases are executed in `installhdr` builds. See [Active Build Action (ACTION)](itcaec37c2a6.html#dev9697f81df) for details on `installhdr` builds.
    func installhdrsScriptPhase(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTALLHDRS_SCRIPT_PHASE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Identifies the directory in the developer’s filesystem into which the *installed* product is placed.
    func installDir(_ path: Path = "$(DSTROOT)$(INSTALL_PATH)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTALL_DIR"] = .string(path)
        return newDict
    }
    
    /// The group name or `gid` for installed products.
    func installGroup(_ value: String = "$(GROUP)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTALL_GROUP"] = .string(value)
        return newDict
    }
    
    /// Permissions used for installed product files.
    func installModeFlag(_ value: String = "u+w,go-w,a+rX") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTALL_MODE_FLAG"] = .string(value)
        return newDict
    }
    
    /// The owner name or `uid` for installed products.
    func installOwner(_ value: String = "$(USER)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTALL_OWNER"] = .string(value)
        return newDict
    }
    
    /// The directory in which to install the build products. This path is prepended by the [Installation Build Products Location (DSTROOT)](itcaec37c2a6.html#dev438d356c2).
    func installPath(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTALL_PATH"] = .string(value)
        return newDict
    }
    
    func installRoot(_ path: Path = "$(DSTROOT)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTALL_ROOT"] = .string(path)
        return newDict
    }
    
    func instrumentsPackageBuilder(_ path: Path = "instrumentbuilder") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTRUMENTS_PACKAGE_BUILDER"] = .string(path)
        return newDict
    }
    
    func instrumentsPackageBuilderDependencyInfoFile(_ value: String = "$(TARGET_TEMP_DIR)/instruments-package-builder.dependencies") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTRUMENTS_PACKAGE_BUILDER_DEPENDENCY_INFO_FILE"] = .string(value)
        return newDict
    }
    
    func instrumentsPackageBuilderLinkedPackages(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTRUMENTS_PACKAGE_BUILDER_LINKED_PACKAGES"] = .array(values)
        return newDict
    }
    
    func instrumentsPackageBuilderNoSystemSearch(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTRUMENTS_PACKAGE_BUILDER_NO_SYSTEM_SEARCH"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func instrumentsPackageBuilderSearchPaths(_ values: [String] = ["$(BUILT_PRODUCTS_DIR)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTRUMENTS_PACKAGE_BUILDER_SEARCH_PATHS"] = .array(values)
        return newDict
    }
    
    func instrumentsPackageBuilderVersionOverride(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTRUMENTS_PACKAGE_BUILDER_VERSION_OVERRIDE"] = .string(value)
        return newDict
    }
    
    enum IntentsCodegenLanguageValue: String {
        case swift = "Swift"
        case objectiveC = "Objective-C"
        case automatic = "Automatic"
    }
    
    /// The Source-code language to use for generated Intent class. By default "Automatic" will analyze your project to determine the correct language. Adjust this setting to explicitly select "Swift" or "Objective-C".
    func intentsCodegenLanguage(_ value: IntentsCodegenLanguageValue = .automatic) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INTENTS_CODEGEN_LANGUAGE"] = .string(value.rawValue)
        return newDict
    }
    
    /// Indicates whether the target is building for Mac Catalyst. This build setting is intended for use in shell scripts and build setting composition and should be considered read-only.
    func isMaccatalyst(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IS_MACCATALYST"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func infoplistpath(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["InfoPlistPath"] = .string(path)
        return newDict
    }
    
    func javacDefaultFlags(_ values: [String] = ["-J-Xms64m", "-J-XX:NewSize=4M", "-J-Dfile.encoding=UTF8"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["JAVAC_DEFAULT_FLAGS"] = .array(values)
        return newDict
    }
    
    func javaAppStub(_ path: Path = "$(SYSTEM_LIBRARY_DIR)/Frameworks/JavaVM.framework/Resources/MacOS/JavaApplicationStub") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["JAVA_APP_STUB"] = .string(path)
        return newDict
    }
    
    func javaArchiveClasses(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["JAVA_ARCHIVE_CLASSES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func javaArchiveType(_ value: String = "JAR") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["JAVA_ARCHIVE_TYPE"] = .string(value)
        return newDict
    }
    
    func javaCompiler(_ path: Path = "/usr/bin/javac") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["JAVA_COMPILER"] = .string(path)
        return newDict
    }
    
    func javaFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["JAVA_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    func javaFrameworkJars(_ paths: [Path] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["JAVA_FRAMEWORK_JARS"] = .array(paths)
        return newDict
    }
    
    func javaFrameworkResourcesDirs(_ paths: [Path] = ["Resources"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["JAVA_FRAMEWORK_RESOURCES_DIRS"] = .array(paths)
        return newDict
    }
    
    func javaJarFlags(_ values: [String] = ["cv"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["JAVA_JAR_FLAGS"] = .array(values)
        return newDict
    }
    
    func javaSourceSubdir(_ path: Path = ".") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["JAVA_SOURCE_SUBDIR"] = .string(path)
        return newDict
    }
    
    func javaUseDependencies(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["JAVA_USE_DEPENDENCIES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func javaZipFlags(_ values: [String] = ["-urg"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["JAVA_ZIP_FLAGS"] = .array(values)
        return newDict
    }
    
    func jikesDefaultFlags(_ values: [String] = ["+E", "+OLDCSO"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["JIKES_DEFAULT_FLAGS"] = .array(values)
        return newDict
    }
    
    /// Activating this setting will preserve private external symbols, rather than turning them into static symbols. This setting is also respected when performing a single-object prelink.
    func keepPrivateExterns(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["KEEP_PRIVATE_EXTERNS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func kextCflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["KEXT_CFLAGS"] = .array(values)
        return newDict
    }
    
    func kextCplusplusflags(_ values: [String] = ["$(KEXT_CFLAGS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["KEXT_CPLUSPLUSFLAGS"] = .array(values)
        return newDict
    }
    
    func ldAdditionalDeploymentTargetFlags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_ADDITIONAL_DEPLOYMENT_TARGET_FLAGS"] = .array(values)
        return newDict
    }
    
    enum LdBitcodeGenerationModeValue: String {
        case marker = "marker"
        case bitcode = "bitcode"
    }
    
    func ldBitcodeGenerationMode(_ value: LdBitcodeGenerationModeValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_BITCODE_GENERATION_MODE"] = .string(value.rawValue)
        return newDict
    }
    
    func ldDebugVariant(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_DEBUG_VARIANT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// This setting defines the path to which the linker should emit information about what files it used as inputs and generated. Xcode uses this information for its dependency tracking. Setting the value of this setting to empty will disable passing this option to the linker.
    func ldDependencyInfoFile(_ path: Path = "$(OBJECT_FILE_DIR_$(CURRENT_VARIANT))/$(CURRENT_ARCH)/$(PRODUCT_NAME)_dependency_info.dat") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_DEPENDENCY_INFO_FILE"] = .string(path)
        return newDict
    }
    
    func ldDeploymentTarget(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_DEPLOYMENT_TARGET"] = .string(value)
        return newDict
    }
    
    func ldDontRunDeduplication(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_DONT_RUN_DEDUPLICATION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// This setting restricts the clients allowed to link a dylib by passing `-allowable_client` to the linker for each supplied value.
    func ldDylibAllowableClients(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_DYLIB_ALLOWABLE_CLIENTS"] = .array(values)
        return newDict
    }
    
    /// Sets an internal `install path` (`LC_ID_DYLIB`) in a dynamic library. Any clients linked against the library will record that path as the way `dyld` should locate this library. If this option is not specified, then the `-o` path will be used. This setting is ignored when building any product other than a dynamic library. See [Dynamic Library Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/000-Introduction/Introduction.html).
    func ldDylibInstallName(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_DYLIB_INSTALL_NAME"] = .string(path)
        return newDict
    }
    
    func ldEntitlementsSection(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_ENTITLEMENTS_SECTION"] = .string(value)
        return newDict
    }
    
    func ldExportGlobalSymbols(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_EXPORT_GLOBAL_SYMBOLS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func ldFinalOutputFile(_ path: Path = "$(INSTALL_PATH)/$(EXECUTABLE_PATH)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_FINAL_OUTPUT_FILE"] = .string(path)
        return newDict
    }
    
    func ldFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_FLAGS"] = .array(values)
        return newDict
    }
    
    func ldGenerateBitcodeSymbolMap(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_GENERATE_BITCODE_SYMBOL_MAP"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Activating this setting will cause the linker to write a map file to disk, which details all symbols and their addresses in the output image. The path to the map file is defined by the [Path to Link Map File (LD\_MAP\_FILE\_PATH)](itcaec37c2a6.html#dev0f5aa9fe1) setting.
    func ldGenerateMapFile(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_GENERATE_MAP_FILE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func ldHideBitcodeSymbols(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_HIDE_BITCODE_SYMBOLS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func ldLtoObjectFile(_ path: Path = "$(OBJECT_FILE_DIR_$(CURRENT_VARIANT))/$(CURRENT_ARCH)/$(PRODUCT_NAME)_lto.o") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_LTO_OBJECT_FILE"] = .string(path)
        return newDict
    }
    
    /// This setting defines the path to the map file written by the linker when the [Write Link Map File (LD\_GENERATE\_MAP\_FILE)](itcaec37c2a6.html#devc1145996b) setting is activated. By default, a separate file will be written for each architecture and build variant, and these will be generated in the Intermediates directory for the target whose product is being linked.
    func ldMapFilePath(_ path: Path = "$(TARGET_TEMP_DIR)/$(PRODUCT_NAME)-LinkMap-$(CURRENT_VARIANT)-$(CURRENT_ARCH).txt") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_MAP_FILE_PATH"] = .string(path)
        return newDict
    }
    
    /// Activating this setting will prevent Xcode from building a main executable that is position independent (PIE). When targeting macOS 10.7 or later, PIE is the default for main executables, so activating this setting will change that behavior. When targeting OS X 10.6 or earlier, or when building for i386, PIE is not the default, so activating this setting does nothing.
    ///
    /// You cannot create a PIE from `.o` files compiled with `-mdynamic-no-pic`. Using PIE means the codegen is less optimal, but the address randomization adds some security.
    func ldNoPie(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_NO_PIE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum LdObjcAbiVersionValue: String {
        case _1 = "1"
        case _2 = "2"
    }
    
    func ldObjcAbiVersion(_ value: LdObjcAbiVersionValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_OBJC_ABI_VERSION"] = .string(value.rawValue)
        return newDict
    }
    
    /// This setting controls whether arguments to the linker should be quoted using `-Xlinker`. By default, Xcode invokes the linker by invoking the driver of the compiler used to build the source files in the target, and passing `-Xlinker` to quote arguments will cause the compiler driver to pass them through to the linker (rather than trying to evaluate them within the driver). By default, this setting is enabled. Disabling it will cause Xcode to not use `-Xlinker` to pass arguments to the linker. Disabling this setting is useful if the target has instructed Xcode to use an alternate linker (for example, by setting the `LD` setting to the path to another linker) and that alternate linker does not recognize `-Xlinker`.
    func ldQuoteLinkerArgumentsForCompilerDriver(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_QUOTE_LINKER_ARGUMENTS_FOR_COMPILER_DRIVER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// This is a list of paths to be added to the `runpath` search path list for the image being created. At runtime, `dyld` uses the `runpath` when searching for dylibs whose load path begins with `@rpath/`. See [Dynamic Library Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/000-Introduction/Introduction.html).
    func ldRunpathSearchPaths(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_RUNPATH_SEARCH_PATHS"] = .array(values)
        return newDict
    }
    
    func ldTargetTripleArchs(_ values: [String] = ["$(CURRENT_ARCH)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_TARGET_TRIPLE_ARCHS"] = .array(values)
        return newDict
    }
    
    func ldTargetTripleVariants(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_TARGET_TRIPLE_VARIANTS"] = .array(values)
        return newDict
    }
    
    func ldThreadSanitizer(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_THREAD_SANITIZER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func ldVerifyBitcode(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_VERIFY_BITCODE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func lex(_ path: Path = "lex") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LEX"] = .string(path)
        return newDict
    }
    
    /// Space-separated list of additional flags to pass to `lex`. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a `lex` flag.
    func lexflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LEXFLAGS"] = .array(values)
        return newDict
    }
    
    /// Enabling this option causes `lex` to generate a case-insensitive scanner. The case of letters given in the `lex` input patterns will be ignored, and tokens in the input will be matched regardless of case. The matched text given in `yytext` will have the preserved case (for example, it will not be folded).
    func lexCaseInsensitiveScanner(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LEX_CASE_INSENSITIVE_SCANNER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enabling this option instructs `lex` to insert `#line` directives so error messages in the actions will be correctly located with respect to either the original `lex` input file (if the errors are due to code in the input file), or `lex.yy.c` (if the errors are `lex`'s fault). This option is enabled by default; disabling it passes a flag to `lex` to not insert `#line` directives.
    func lexInsertLineDirectives(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LEX_INSERT_LINE_DIRECTIVES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enabling this option causes the default rule (that unmatched scanner input is echoed to `stdout`) to be suppressed. If the scanner encounters input that does not match any of its rules, it aborts with an error. This option is useful for finding holes in a scanner's rule set.
    func lexSuppressDefaultRule(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LEX_SUPPRESS_DEFAULT_RULE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enabling this option causes `lex` to suppress its warning messages.
    func lexSuppressWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LEX_SUPPRESS_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func libraryDextInstallPath(_ value: String = "$(LOCAL_LIBRARY_DIR)/DriverExtensions") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LIBRARY_DEXT_INSTALL_PATH"] = .string(value)
        return newDict
    }
    
    func libraryFlagNospace(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LIBRARY_FLAG_NOSPACE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func libraryFlagPrefix(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LIBRARY_FLAG_PREFIX"] = .string(value)
        return newDict
    }
    
    func libraryKextInstallPath(_ value: String = "$(LOCAL_LIBRARY_DIR)/Extensions") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LIBRARY_KEXT_INSTALL_PATH"] = .string(value)
        return newDict
    }
    
    /// This is a list of paths to folders to be searched by the linker for libraries used by the product. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted.
    func librarySearchPaths(_ paths: [Path] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LIBRARY_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    func libtool(_ path: Path = "libtool") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LIBTOOL"] = .string(path)
        return newDict
    }
    
    func libtoolDependencyInfoFile(_ path: Path = "$(OBJECT_FILE_DIR_$(CURRENT_VARIANT))/$(CURRENT_ARCH)/$(PRODUCT_NAME)_libtool_dependency_info.dat") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LIBTOOL_DEPENDENCY_INFO_FILE"] = .string(path)
        return newDict
    }
    
    func libtoolDeploymentTarget(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LIBTOOL_DEPLOYMENT_TARGET"] = .string(value)
        return newDict
    }
    
    func libtoolDeterministicMode(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LIBTOOL_DETERMINISTIC_MODE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Activating this setting causes the linker to display mangled names for C++ symbols. Normally, this is not recommended, but turning it on can help to diagnose and solve C++ link errors.
    func linkerDisplaysMangledNames(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LINKER_DISPLAYS_MANGLED_NAMES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func linkerLibraryFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LINKER_LIBRARY_FLAGS"] = .array(values)
        return newDict
    }
    
    /// When this setting is enabled, the compiler driver will automatically pass its standard libraries to the linker to use during linking. If desired, this flag can be used to disable linking with the standard libraries, and then individual libraries can be passed as [Other Linker Flags (OTHER\_LDFLAGS)](itcaec37c2a6.html#dev4fc8ef90a).
    func linkWithStandardLibraries(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LINK_WITH_STANDARD_LIBRARIES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func llvmImplicitAggressiveOptimizations(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LLVM_IMPLICIT_AGGRESSIVE_OPTIMIZATIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum LlvmLtoValue: String {
        case yes = "YES"
        case yesThin = "YES_THIN"
        case no = "NO"
    }
    
    /// Enabling this setting allows optimization across file boundaries during linking.
    ///
    /// - _No:_ Disabled. Do not use link-time optimization.
    ///
    /// - _Monolithic Link-Time Optimization:_ This mode performs monolithic link-time optimization of binaries, combining all executable code into a single unit and running aggressive compiler optimizations.
    ///
    /// - _Incremental Link-Time Optimization:_ This mode performs partitioned link-time optimization of binaries, inlining between compilation units and running aggressive compiler optimizations on each unit in parallel. This enables fast incremental builds and uses less memory than Monolithic LTO.
    func llvmLto(_ value: LlvmLtoValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LLVM_LTO"] = .string(value.rawValue)
        return newDict
    }
    
    func llvmOptimizationLevelVal0(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LLVM_OPTIMIZATION_LEVEL_VAL_0"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func llvmOptimizationLevelVal1(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LLVM_OPTIMIZATION_LEVEL_VAL_1"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func llvmOptimizationLevelVal2(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LLVM_OPTIMIZATION_LEVEL_VAL_2"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func llvmOptimizationLevelVal3(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LLVM_OPTIMIZATION_LEVEL_VAL_3"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func llvmOptimizationLevelValFast(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LLVM_OPTIMIZATION_LEVEL_VAL_fast"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func llvmOptimizationLevelValS(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LLVM_OPTIMIZATION_LEVEL_VAL_s"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func llvmOptimizationLevelValZ(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LLVM_OPTIMIZATION_LEVEL_VAL_z"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func llvmTargetTripleOsVersion(_ value: String = "$(SWIFT_PLATFORM_TARGET_PREFIX)$($(DEPLOYMENT_TARGET_SETTING_NAME))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LLVM_TARGET_TRIPLE_OS_VERSION"] = .string(value)
        return newDict
    }
    
    func llvmTargetTripleSuffix(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LLVM_TARGET_TRIPLE_SUFFIX"] = .string(value)
        return newDict
    }
    
    func llvmTargetTripleVendor(_ value: String = "apple") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LLVM_TARGET_TRIPLE_VENDOR"] = .string(value)
        return newDict
    }
    
    func localizableContentDir(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LOCALIZABLE_CONTENT_DIR"] = .string(path)
        return newDict
    }
    
    func localizedResourcesFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LOCALIZED_RESOURCES_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    /// The base names for NSLocalizedString-like macros or functions used to produce localized strings in source code. The default base names of NSLocalizedString and CFCopyLocalizedString are always considered, even if this setting is empty.
    func localizedStringMacroNames(_ values: [String] = ["NSLocalizedString", "CFCopyLocalizedString"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LOCALIZED_STRING_MACRO_NAMES"] = .array(values)
        return newDict
    }
    
    /// When enabled, literal strings passed to the Text() initializer from Swift UI will be extracted during localization export.
    func localizedStringSwiftuiSupport(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LOCALIZED_STRING_SWIFTUI_SUPPORT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func locroot(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LOCROOT"] = .string(path)
        return newDict
    }
    
    func locsymroot(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LOCSYMROOT"] = .string(path)
        return newDict
    }
    
    func logname(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LOGNAME"] = .string(value)
        return newDict
    }
    
    enum MachOTypeValue: String {
        case mhExecute = "mh_execute"
        case mhDylib = "mh_dylib"
        case mhBundle = "mh_bundle"
        case staticlib = "staticlib"
        case mhObject = "mh_object"
        case empty = ""
    }
    
    /// This setting determines the format of the produced binary and how it can be linked when building other binaries. For information on binary types, see [Building Mach-O Files](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/MachOTopics/1-Articles/building_files.html#//apple_ref/doc/uid/TP40001828-SW1) in [Mach-O Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/MachOTopics/0-Introduction/introduction.html).
    ///
    /// - _Executable:_ Executables and standalone binaries and cannot be linked. `mh_execute`
    ///
    /// - _Dynamic Library:_ Dynamic libraries are linked at build time and loaded automatically when needed. `mh_dylib`
    ///
    /// - _Bundle:_ Bundle libraries are loaded explicitly at run time. `mh_bundle`
    ///
    /// - _Static Library:_ Static libraries are linked at build time and loaded at execution time. `staticlib`
    ///
    /// - _Relocatable Object File:_ Object files are single-module files that are linked at build time. `mh_object`
    func machOType(_ value: MachOTypeValue = .empty) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MACH_O_TYPE"] = .string(value.rawValue)
        return newDict
    }
    
    func macosCreator(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MACOS_CREATOR"] = .string(value)
        return newDict
    }
    
    func macosCreatorArg(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MACOS_CREATOR_ARG"] = .string(value)
        return newDict
    }
    
    func macosType(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MACOS_TYPE"] = .string(value)
        return newDict
    }
    
    func macosTypeArg(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MACOS_TYPE_ARG"] = .string(value)
        return newDict
    }
    
    func macOsXVersionMaxAllowed(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MAC_OS_X_VERSION_MAX_ALLOWED"] = .string(value)
        return newDict
    }
    
    func macOsXVersionMinRequired(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MAC_OS_X_VERSION_MIN_REQUIRED"] = .string(value)
        return newDict
    }
    
    func mapcModule(_ value: String = "$(PRODUCT_MODULE_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MAPC_MODULE"] = .string(value)
        return newDict
    }
    
    /// Compile `.xcmappingmodel` files into `.cdm` without reporting warnings.
    func mapcNoWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MAPC_NO_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// This setting defines the user-visible version of the project. The value corresponds to the `CFBundleShortVersionString` key in your app's Info.plist.
    func marketingVersion(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MARKETING_VERSION"] = .string(value)
        return newDict
    }
    
    func metalLibraryFileBase(_ value: String = "default") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["METAL_LIBRARY_FILE_BASE"] = .string(value)
        return newDict
    }
    
    func metalLibraryOutputDir(_ value: String = "$(TARGET_BUILD_DIR)/$(UNLOCALIZED_RESOURCES_FOLDER_PATH)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["METAL_LIBRARY_OUTPUT_DIR"] = .string(value)
        return newDict
    }
    
    func migDeploymentTarget(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MIG_DEPLOYMENT_TARGET"] = .string(value)
        return newDict
    }
    
    /// This is the project-relative path to the LLVM module map file that defines the module structure for the compiler. If empty, it will be automatically generated for appropriate products when [Defines Module (DEFINES\_MODULE)](itcaec37c2a6.html#dev82471c743) is enabled.
    func modulemapFile(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MODULEMAP_FILE"] = .string(value)
        return newDict
    }
    
    /// This is the project-relative path to the LLVM module map file that defines the module structure for private headers.
    func modulemapPrivateFile(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MODULEMAP_PRIVATE_FILE"] = .string(value)
        return newDict
    }
    
    /// Specifies the directory that contains the product’s Clang module maps and Swift module content.
    func modulesFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MODULES_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    /// Absolute path of folder in which compiler stores its cached modules—this cache is a performance improvement.
    func moduleCacheDir(_ path: Path = "$(DERIVED_DATA_DIR)/ModuleCache.noindex") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MODULE_CACHE_DIR"] = .string(path)
        return newDict
    }
    
    /// This is the identifier of the kernel module listed in the generated stub. This is only used when building kernel extensions.
    func moduleName(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MODULE_NAME"] = .string(value)
        return newDict
    }
    
    /// This defines the name of the kernel module start routine. This is only used when building kernel extensions.
    func moduleStart(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MODULE_START"] = .string(value)
        return newDict
    }
    
    /// This defines the name of the kernel module stop routine. This is only used when building kernel extensions.
    func moduleStop(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MODULE_STOP"] = .string(value)
        return newDict
    }
    
    /// This is the version of the kernel module listed in the generated stub. This is only used when building kernel extensions.
    func moduleVersion(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MODULE_VERSION"] = .string(value)
        return newDict
    }
    
    func momcModule(_ value: String = "$(PRODUCT_MODULE_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MOMC_MODULE"] = .string(value)
        return newDict
    }
    
    /// Suppress managed object model compiler (`momc`) warnings for delete rules during the compilation of `.xcdatamodel(d)` files.
    func momcNoDeleteRuleWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MOMC_NO_DELETE_RULE_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Suppress managed object model compiler (`momc`) warnings from output on missing inverse relationships during the compilation of `.xcdatamodel(d)` files
    func momcNoInverseRelationshipWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MOMC_NO_INVERSE_RELATIONSHIP_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Suppress managed object model compiler (`momc`) warnings from output on entities with more than 100 properties during the compilation of `.xcdatamodel(d)` files.
    func momcNoMaxPropertyCountWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MOMC_NO_MAX_PROPERTY_COUNT_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Suppress managed object model compiler (`momc`) warnings from output during the compilation of `.xcdatamodel(d)` files
    func momcNoWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MOMC_NO_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func momcOutputSuffix(_ value: String = "$(MOMC_OUTPUT_SUFFIX_$(InputFileSuffix:identifier))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MOMC_OUTPUT_SUFFIX"] = .string(value)
        return newDict
    }
    
    func momcOutputSuffixXcdatamodel(_ value: String = ".mom") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MOMC_OUTPUT_SUFFIX__xcdatamodel"] = .string(value)
        return newDict
    }
    
    func momcOutputSuffixXcdatamodeld(_ value: String = ".momd") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MOMC_OUTPUT_SUFFIX__xcdatamodeld"] = .string(value)
        return newDict
    }
    
    /// Suppress managed object model compiler (`momc`) warnings from output on transient inverse relationships during the compilation of `.xcdatamodel(d)` files. This is only intended to be used on 10.4.x created models that compiled properly in 10.4.x before the error was introduced in 10.5
    func momcSuppressInverseTransientError(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MOMC_SUPPRESS_INVERSE_TRANSIENT_ERROR"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func mtlcompilerDependencyInfoFile(_ value: String = "$(TARGET_TEMP_DIR)/Metal/$(InputFileBase)$(InputFileBaseUniquefier).dat") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTLCOMPILER_DEPENDENCY_INFO_FILE"] = .string(value)
        return newDict
    }
    
    func mtlcompilerOutputFile(_ value: String = "$(TARGET_TEMP_DIR)/Metal/$(InputFileBase)$(InputFileBaseUniquefier).air") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTLCOMPILER_OUTPUT_FILE"] = .string(value)
        return newDict
    }
    
    func mtllinkerAlternateLinker(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTLLINKER_ALTERNATE_LINKER"] = .string(value)
        return newDict
    }
    
    /// Space-separated list of metal linker flags
    func mtllinkerFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTLLINKER_FLAGS"] = .array(values)
        return newDict
    }
    
    func mtllinkerIncludeSource(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTLLINKER_INCLUDE_SOURCE"] = .string(value)
        return newDict
    }
    
    func mtllinkerOutputFile(_ value: String = "$(METAL_LIBRARY_OUTPUT_DIR)/$(METAL_LIBRARY_FILE_BASE).metallib") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTLLINKER_OUTPUT_FILE"] = .string(value)
        return newDict
    }
    
    func mtllinkerTargetTriple(_ value: String = "air64-$(LLVM_TARGET_TRIPLE_VENDOR)-$(LLVM_TARGET_TRIPLE_OS_VERSION)$(LLVM_TARGET_TRIPLE_SUFFIX)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTLLINKER_TARGET_TRIPLE"] = .string(value)
        return newDict
    }
    
    /// Space-separated list of compiler flags
    func mtlCompilerFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_COMPILER_FLAGS"] = .array(values)
        return newDict
    }
    
    /// Control whether the compiler should emit index data while building.
    func mtlEnableIndexStore(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_ENABLE_INDEX_STORE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enables the use of modules. System headers are imported as semantic modules instead of raw headers. This can result in faster builds and project indexing.
    func mtlEnableModules(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_ENABLE_MODULES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enable optimizations for floating-point arithmetic that may violate the IEEE 754 standard and disable the high precision variant of math functions for single and half precision floating-point.
    func mtlFastMath(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_FAST_MATH"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func mtlFrameworkSearchPathBuiltProductsDir(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_FRAMEWORK_SEARCH_PATH_BUILT_PRODUCTS_DIR"] = .string(path)
        return newDict
    }
    
    /// This is a list of paths to folders to be searched by the compiler for included or imported header files when compiling Metal. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted. `MTL_HEADER_SEARCH_PATHS, -I`
    func mtlHeaderSearchPaths(_ paths: [Path] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_HEADER_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    func mtlHeaderSearchPathBuiltProductsDir(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_HEADER_SEARCH_PATH_BUILT_PRODUCTS_DIR"] = .string(path)
        return newDict
    }
    
    /// Enabling this option causes all warnings to be ignored. `MTL_IGNORE_WARNINGS, -W`
    func mtlIgnoreWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_IGNORE_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func mtlIndexStorePath(_ path: Path = "$(INDEX_DATA_STORE_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_INDEX_STORE_PATH"] = .string(path)
        return newDict
    }
    
    func mtlLanguageRevisionDialect(_ value: String = "ios") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_LANGUAGE_REVISION_dialect"] = .string(value)
        return newDict
    }
    
    /// Space-separated list of preprocessor macros of the form "foo" or "foo=bar".
    func mtlPreprocessorDefinitions(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_PREPROCESSOR_DEFINITIONS"] = .array(values)
        return newDict
    }
    
    func mtlTargetTriple(_ value: String = "air64-$(LLVM_TARGET_TRIPLE_VENDOR)-$(LLVM_TARGET_TRIPLE_OS_VERSION)$(LLVM_TARGET_TRIPLE_SUFFIX)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_TARGET_TRIPLE"] = .string(value)
        return newDict
    }
    
    /// Enabling this option causes all warnings to be treated as errors. `MTL_TREAT_WARNINGS_AS_ERRORS, -Werror`
    func mtlTreatWarningsAsErrors(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_TREAT_WARNINGS_AS_ERRORS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Space-separated list of additional flags to pass to the `nasm` assembler. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `nasm` flag.
    func nasmOtherFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["NASM_OTHER_FLAGS"] = .array(values)
        return newDict
    }
    
    func nasmOutputFileFormat(_ value: String = "macho") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["NASM_OUTPUT_FILE_FORMAT"] = .string(value)
        return newDict
    }
    
    /// Specifies a file to be preincluded, before the main source file starts to be processed.
    func nasmPreincludeFile(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["NASM_PREINCLUDE_FILE"] = .string(value)
        return newDict
    }
    
    /// Identifies the architecture on which the build is being performed.
    func nativeArch(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["NATIVE_ARCH"] = .string(value)
        return newDict
    }
    
    func nativeArch32Bit(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["NATIVE_ARCH_32_BIT"] = .string(value)
        return newDict
    }
    
    func nativeArch64Bit(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["NATIVE_ARCH_64_BIT"] = .string(value)
        return newDict
    }
    
    func nativeArchActual(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["NATIVE_ARCH_ACTUAL"] = .string(value)
        return newDict
    }
    
    func noCommon(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["NO_COMMON"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func objectFileDir(_ path: Path = "$(TARGET_TEMP_DIR)/Objects") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OBJECT_FILE_DIR"] = .string(path)
        return newDict
    }
    
    /// The path where intermediate files will be placed during a build. Intermediate files include generated sources, object files, etc. Shell script build phases can place and access files here, as well. Typically this path is not set per target, but is set per project or per user. By default, this is set to `$(PROJECT_DIR)/build`.
    func objroot(_ path: Path = "$(SYMROOT)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OBJROOT"] = .string(path)
        return newDict
    }
    
    /// If enabled, only the active architecture is built. This setting will be ignored when building with a run destination which does not define a specific architecture, such as a 'Generic Device' run destination.
    func onlyActiveArch(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ONLY_ACTIVE_ARCH"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Defined a set of initial On Demand Resources tags to be downloaded and installed with your application.
    func onDemandResourcesInitialInstallTags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ON_DEMAND_RESOURCES_INITIAL_INSTALL_TAGS"] = .array(values)
        return newDict
    }
    
    /// Once your app is installed, this defined a set of On Demand Resources tags that should be downloaded. These tags are downloaded after the initial installation of your application, and will be downloaded in the order the tags provided in the list from first to last.
    func onDemandResourcesPrefetchOrder(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ON_DEMAND_RESOURCES_PREFETCH_ORDER"] = .array(values)
        return newDict
    }
    
    func openclc(_ value: String = "/System/Library/Frameworks/OpenCL.framework/Libraries/openclc") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCLC"] = .string(value)
        return newDict
    }
    
    /// A list of the architectures for which the product will be built. This is usually set to a predefined build setting provided by the platform.
    func openclArchs(_ values: [String] = ["i386", "x86_64", "gpu_32", "gpu_64"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_ARCHS"] = .array(values)
        return newDict
    }
    
    /// Auto-vectorizes the `OpenCL` kernels for the CPU. This setting takes effect only for the CPU. This makes it possible to write a single kernel that is portable and performant across CPUs and GPUs.
    func openclAutoVectorizeEnable(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_AUTO_VECTORIZE_ENABLE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum OpenclCompilerVersionValue: String {
        case cl12 = "CL1.2"
        case cl11 = "CL1.1"
    }
    
    /// The `OpenCL` C compiler version supported by the platform.
    func openclCompilerVersion(_ value: OpenclCompilerVersionValue = .cl11) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_COMPILER_VERSION"] = .string(value.rawValue)
        return newDict
    }
    
    /// This option controls how single precision and double precision denormalized numbers are handled. If specified as a build option, the single precision denormalized numbers may be flushed to zero; double precision denormalized numbers may also be flushed to zero if the optional extension for double precision is supported. This is intended to be a performance hint and the `OpenCL` compiler can choose not to flush denorms to zero if the device supports single precision (or double precision) denormalized numbers.
    ///
    /// This option is ignored for single precision numbers if the device does not support single precision denormalized numbers, for example, `CL_FP_DENORM` bit is not set in `CL_DEVICE_SINGLE_FP_CONFIG`.
    ///
    /// This option is ignored for double precision numbers if the device does not support double precision or if it does support double precision but not double precision denormalized numbers, for example, `CL_FP_DENORM` bit is not set in `CL_DEVICE_DOUBLE_FP_CONFIG`.
    ///
    /// This flag only applies for scalar and vector single precision floating-point variables and computations on these floating-point variables inside a program. It does not apply to reading from or writing to image objects.
    func openclDenormsAreZero(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_DENORMS_ARE_ZERO"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Treat double precision floating-point expression as a single precision floating-point expression. This option is available for GPUs only.
    func openclDoubleAsSingle(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_DOUBLE_AS_SINGLE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// This allows optimizations for floating-point arithmetic that may violate the IEEE 754 standard and the `OpenCL` numerical compliance requirements defined in in section 7.4 for single-precision floating-point, section 9.3.9 for double-precision floating-point, and edge case behavior in section 7.5 of the `OpenCL` 1.1 specification.
    ///
    /// This is intended to be a performance optimization.
    ///
    /// This option causes the preprocessor macro ` __FAST_RELAXED_MATH__ ` to be defined in the `OpenCL` program.
    func openclFastRelaxedMath(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_FAST_RELAXED_MATH"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Allow `a * b + c` to be replaced by a `mad` instruction. The `mad` computes `a * b + c` with reduced accuracy. For example, some `OpenCL` devices implement `mad` as truncate the result of `a * b` before adding it to `c`.
    ///
    /// This is intended to be a performance optimization.
    func openclMadEnable(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_MAD_ENABLE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum OpenclOptimizationLevelValue: String {
        case _0 = "0"
        case _1 = "1"
        case _2 = "2"
        case _3 = "3"
        case s = "s"
    }
    
    /// - _None:_ Do not optimize. `-O0` With this setting, the compiler's goal is to reduce the cost of compilation and to make debugging produce the expected results. Statements are independent: if you stop the program with a breakpoint between statements, you can then assign a new value to any variable or change the program counter to any other statement in the function and get exactly the results you would expect from the source code.
    ///
    /// - _Fast:_ Optimizing compilation takes somewhat more time, and a lot more memory for a large function. `-O, -O1` With this setting, the compiler tries to reduce code size and execution time, without performing any optimizations that take a great deal of compilation time. In Apple's compiler, strict aliasing, block reordering, and inter-block scheduling are disabled by default when optimizing.
    ///
    /// - _Faster:_ The compiler performs nearly all supported optimizations that do not involve a space-speed tradeoff. `-O2` With this setting, the compiler does not perform loop unrolling or function inlining, or register renaming. As compared to the `Fast` setting, this setting increases both compilation time and the performance of the generated code.
    ///
    /// - _Fastest:_ Turns on all optimizations specified by the `Faster` setting and also turns on function inlining and register renaming options. This setting may result in a larger binary. `-O3`
    ///
    /// - _Fastest, smallest:_ Optimize for size. This setting enables all `Faster` optimizations that do not typically increase code size. It also performs further optimizations designed to reduce code size. `-Os`
    func openclOptimizationLevel(_ value: OpenclOptimizationLevelValue = .s) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_OPTIMIZATION_LEVEL"] = .string(value.rawValue)
        return newDict
    }
    
    /// Space-separated list of additional flags to pass to the compiler. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular compiler flag.
    func openclOtherBcFlags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_OTHER_BC_FLAGS"] = .array(values)
        return newDict
    }
    
    /// Space-separated list of preprocessor macros of the form `foo` or `foo=bar`.
    func openclPreprocessorDefinitions(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_PREPROCESSOR_DEFINITIONS"] = .array(values)
        return newDict
    }
    
    func optimizationCflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPTIMIZATION_CFLAGS"] = .array(values)
        return newDict
    }
    
    /// The path to a file that alters the order in which functions and data are laid out.
    ///
    /// For each section in the output file, any symbol in that section that are specified in the order file is moved to the start of its section and laid out in the same order as in the order file. Order files are text files with one symbol name per line. Lines starting with a `#` are comments. A symbol name may be optionally preceded with its object file leafname and a colon (for example, `foo.o:_foo`). This is useful for static functions/data that occur in multiple files. A symbol name may also be optionally preceded with the architecture (for example, `ppc:_foo` or `ppc:foo.o:_foo`). This enables you to have one order file that works for multiple architectures. Literal C-strings may be ordered by quoting the string in the order file (for example, `"Hello, world\n"`).
    ///
    /// Generally you should not specify an order file in Debug or Development configurations, as this will make the linked binary less readable to the debugger. Use them only in Release or Deployment configurations.
    func orderFile(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ORDER_FILE"] = .string(value)
        return newDict
    }
    
    func osac(_ path: Path = "/usr/bin/osacompile") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OSAC"] = .string(path)
        return newDict
    }
    
    /// Saves the output script in execute-only form; the script can be run, but cannot be opened in Script Editor or Xcode. With this option turned off, a user may see the original script source by opening the script.
    func osacompileExecuteOnly(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OSACOMPILE_EXECUTE_ONLY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Space-separated list of additional flags to pass to the compiler for C and Objective-C files. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular C or Objective-C compiler flag.
    func otherCflags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_CFLAGS"] = .array(values)
        return newDict
    }
    
    /// A list of additional options to pass to `codesign(1)`.
    func otherCodeSignFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_CODE_SIGN_FLAGS"] = .array(values)
        return newDict
    }
    
    /// Space-separated list of additional flags to pass to the compiler for C++ and Objective-C++ files. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a C++ or Objective-C++ compiler flag.
    func otherCplusplusflags(_ values: [String] = ["$(OTHER_CFLAGS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_CPLUSPLUSFLAGS"] = .array(values)
        return newDict
    }
    
    /// Space-separated list of additional flags to pass to the `iig` invocation of clang. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `iig` flag
    func otherIigCflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_IIG_CFLAGS"] = .array(values)
        return newDict
    }
    
    /// Space-separated list of additional flags to pass to the `iig` compiler. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `iig` flag
    func otherIigFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_IIG_FLAGS"] = .array(values)
        return newDict
    }
    
    /// Options defined in this setting are passed to invocations of the linker.
    func otherLdflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_LDFLAGS"] = .array(values)
        return newDict
    }
    
    func otherLdrflags(_ values: [String] = ["$(OTHER_LDFLAGS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_LDRFLAGS"] = .array(values)
        return newDict
    }
    
    /// Options defined in this setting are passed to all invocations of the archive librarian, which is used to generate static libraries.
    func otherLibtoolflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_LIBTOOLFLAGS"] = .array(values)
        return newDict
    }
    
    /// Space-separated list of additional flags to pass to `mig`. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a `mig` flag.
    func otherMigflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_MIGFLAGS"] = .array(values)
        return newDict
    }
    
    /// Space-separated list of additional flags to pass to `osacompile`. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `osacompile` flag.
    func otherOsacompileflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_OSACOMPILEFLAGS"] = .array(values)
        return newDict
    }
    
    func otherOsaflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_OSAFLAGS"] = .array(values)
        return newDict
    }
    
    func otherPrecompCflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_PRECOMP_CFLAGS"] = .array(values)
        return newDict
    }
    
    func otherRcprojectFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_RCPROJECT_FLAGS"] = .array(values)
        return newDict
    }
    
    func otherResmergerflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_RESMERGERFLAGS"] = .array(values)
        return newDict
    }
    
    /// Space-separated list of additional flags to pass to the `Rez` compiler. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `Rez` flag.
    func otherRezflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_REZFLAGS"] = .array(values)
        return newDict
    }
    
    func otherSkyboxFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_SKYBOX_FLAGS"] = .array(values)
        return newDict
    }
    
    func otherSwiftAbiCheckerFlags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_SWIFT_ABI_CHECKER_FLAGS"] = .array(values)
        return newDict
    }
    
    /// A list of additional flags to pass to the Swift compiler.
    func otherSwiftFlags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_SWIFT_FLAGS"] = .array(values)
        return newDict
    }
    
    func otherSwiftStdlibToolFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_SWIFT_STDLIB_TOOL_FLAGS"] = .array(values)
        return newDict
    }
    
    /// Options defined in this setting are passed to invocations of the `Text-Based InstallAPI` tool.
    func otherTapiFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_TAPI_FLAGS"] = .array(values)
        return newDict
    }
    
    func otherUsdzFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_USDZ_FLAGS"] = .array(values)
        return newDict
    }
    
    enum OutputformatValue: String {
        case sameAsInput = "same-as-input"
        case openstep = "openstep"
        case XML = "XML"
        case xml = "xml"
        case binary = "binary"
    }
    
    func outputformat(_ value: OutputformatValue = .sameAsInput) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OutputFormat"] = .string(value.rawValue)
        return newDict
    }
    
    /// Uniform type identifier. Identifies the type of the product the target builds. Some products may be made up of a single binary or archive. Others may comprise several files, which are grouped under a single directory. These container directories are known as *bundles*.
    func packageType(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PACKAGE_TYPE"] = .string(value)
        return newDict
    }
    
    func pascalStrings(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PASCAL_STRINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func pathPrefixesExcludedFromHeaderDependencies(_ paths: [Path] = ["/usr/include", "/usr/local/include", "/System/Library/Frameworks", "/System/Library/PrivateFrameworks", "$(SYSTEM_DEVELOPER_DIR)/Headers", "$(SYSTEM_DEVELOPER_DIR)/SDKs", "$(SYSTEM_DEVELOPER_DIR)/Platforms"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PATH_PREFIXES_EXCLUDED_FROM_HEADER_DEPENDENCIES"] = .array(paths)
        return newDict
    }
    
    func pbdevelopmentplistPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PBDEVELOPMENTPLIST_PATH"] = .string(path)
        return newDict
    }
    
    enum PbxcpBitcodeStripModeValue: String {
        case none = "none"
        case replaceWithMarker = "replace-with-marker"
        case all = "all"
        case empty = ""
    }
    
    func pbxcpBitcodeStripMode(_ value: PbxcpBitcodeStripModeValue = .empty) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PBXCP_BITCODE_STRIP_MODE"] = .string(value.rawValue)
        return newDict
    }
    
    func pbxcpBitcodeStripTool(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PBXCP_BITCODE_STRIP_TOOL"] = .string(path)
        return newDict
    }
    
    func pbxcpIgnoreMissingInputs(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PBXCP_IGNORE_MISSING_INPUTS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func pbxcpStripBitcode(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PBXCP_STRIP_BITCODE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func pbxcpStripTool(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PBXCP_STRIP_TOOL"] = .string(path)
        return newDict
    }
    
    func perStyleBuildDirectories(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PER_STYLE_BUILD_DIRECTORIES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func pfeFileCDialects(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PFE_FILE_C_DIALECTS"] = .array(values)
        return newDict
    }
    
    func pkginfoPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PKGINFO_PATH"] = .string(path)
        return newDict
    }
    
    func platformName(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PLATFORM_NAME"] = .string(value)
        return newDict
    }
    
    enum PlistFileOutputFormatValue: String {
        case sameAsInput = "same-as-input"
        case xml = "XML"
        case binary = "binary"
    }
    
    /// Specifies the output encoding for property list files (`.plist`). The output encodings can be `binary` or `XML`. By default, the output encoding will be unchanged from the input.
    func plistFileOutputFormat(_ value: PlistFileOutputFormatValue = .sameAsInput) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PLIST_FILE_OUTPUT_FORMAT"] = .string(value.rawValue)
        return newDict
    }
    
    /// Specifies the directory that contains the product’s plugins.
    func pluginsFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PLUGINS_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    func precompilePrefixHeader(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRECOMPILE_PREFIX_HEADER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// This setting allows for better control of sharing precompiled prefix header files between projects. By default, Xcode assumes that the prefix header file may include header files from the build directory if the build directory is outside of the project directory. Xcode cannot determine this ahead of time since other projects may not have been built into the shared build directory at the time the information is needed.
    ///
    /// If your prefix file never includes files from the build directory you may set this to `NO` to improve sharing of precompiled headers. If the prefix does use files from a build directory that is inside your project directory, you may set this to `YES` to avoid unintended sharing that may result in build failures.
    func precompsIncludeHeadersFromBuiltProductsDir(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRECOMPS_INCLUDE_HEADERS_FROM_BUILT_PRODUCTS_DIR"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func precompDestinationDir(_ path: Path = "$(TARGET_TEMP_DIR)/PrefixHeaders") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRECOMP_DESTINATION_DIR"] = .string(path)
        return newDict
    }
    
    func prefixCflagBase(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PREFIX_CFLAG_BASE"] = .string(value)
        return newDict
    }
    
    func prefixFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PREFIX_FLAGS"] = .array(values)
        return newDict
    }
    
    func prefixHeader(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PREFIX_HEADER"] = .string(path)
        return newDict
    }
    
    func prefixReference(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PREFIX_REFERENCE"] = .string(value)
        return newDict
    }
    
    /// Additional flags to pass when performing a single-object prelink.
    func prelinkFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRELINK_FLAGS"] = .array(values)
        return newDict
    }
    
    /// Additional libraries to pass when performing a single-object prelink.
    func prelinkLibs(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRELINK_LIBS"] = .array(values)
        return newDict
    }
    
    /// Activating this setting, in combination with the [Dead Code Stripping (DEAD\_CODE\_STRIPPING)](itcaec37c2a6.html#dev9ed8cb7ad) (`-dead_strip`) option, causes the `-no_dead_strip_inits_and_terms` flag to be passed to `ld(1)` via `cc(1)` to disable dead code stripping for initialization and termination routines. This option should not be used without the aforementioned [Dead Code Stripping (DEAD\_CODE\_STRIPPING)](itcaec37c2a6.html#dev9ed8cb7ad) option.
    func preserveDeadCodeInitsAndTerms(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRESERVE_DEAD_CODE_INITS_AND_TERMS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// The location to copy the private headers to during building, relative to the built products folder.
    func privateHeadersFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRIVATE_HEADERS_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    /// A string that uniquely identifies the bundle. The string should be in reverse DNS format using only alphanumeric characters (`A-Z`, `a-z`, `0-9`), the dot (`.`), and the hyphen (`-`). This value is used as the `CFBundleIdentifier` in the `Info.plist` of the built bundle.
    func productBundleIdentifier(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRODUCT_BUNDLE_IDENTIFIER"] = .string(value)
        return newDict
    }
    
    /// Path to a file specifying additional requirements for a product archive.
    func productDefinitionPlist(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRODUCT_DEFINITION_PLIST"] = .string(value)
        return newDict
    }
    
    /// The name to use for the source code module constructed for this target, and which will be used to import the module in implementation source files. Must be a valid identifier.
    func productModuleName(_ value: String = "$(PRODUCT_NAME:c99extidentifier)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRODUCT_MODULE_NAME"] = .string(value)
        return newDict
    }
    
    /// This is the basename of the product generated by the target.
    func productName(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRODUCT_NAME"] = .string(value)
        return newDict
    }
    
    func productType(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRODUCT_TYPE"] = .string(value)
        return newDict
    }
    
    func productTypeFrameworkSearchPaths(_ paths: [Path]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRODUCT_TYPE_FRAMEWORK_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    func productTypeLibrarySearchPaths(_ paths: [Path]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRODUCT_TYPE_LIBRARY_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    func productTypeSwiftStdlibToolFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRODUCT_TYPE_SWIFT_STDLIB_TOOL_FLAGS"] = .array(values)
        return newDict
    }
    
    func profilingCode(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PROFILING_CODE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func projectDerivedFileDir(_ path: Path = "$(OBJROOT)/$(PROJECT_NAME).build/DerivedSources") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PROJECT_DERIVED_FILE_DIR"] = .string(path)
        return newDict
    }
    
    func projectDir(_ path: Path = "$(SRCROOT)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PROJECT_DIR"] = .string(path)
        return newDict
    }
    
    /// The name of the current project.
    func projectName(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PROJECT_NAME"] = .string(value)
        return newDict
    }
    
    /// Identifies the directory in which the project’s intermediate build files are placed. This directory is shared between all the targets defined by the project. Run Script build phases should generate intermediate build files in the directory identified by `DERIVED_FILE_DIR`, not the location this build setting specifies.
    func projectTempDir(_ path: Path = "$(PROJECT_TEMP_ROOT)/$(PROJECT_NAME).build") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PROJECT_TEMP_DIR"] = .string(path)
        return newDict
    }
    
    func projectTempRoot(_ path: Path = "$(OBJROOT)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PROJECT_TEMP_ROOT"] = .string(path)
        return newDict
    }
    
    func provisioningProfile(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PROVISIONING_PROFILE"] = .string(path)
        return newDict
    }
    
    func provisioningProfileDestinationPath(_ value: String = "$(TARGET_BUILD_DIR)/$(CONTENTS_FOLDER_PATH)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PROVISIONING_PROFILE_DESTINATION_PATH"] = .string(value)
        return newDict
    }
    
    /// Must contain a profile name (or UUID). A missing or invalid profile will cause a build error. Use in conjunction with [Development Team (DEVELOPMENT\_TEAM)](itcaec37c2a6.html#dev186481df2) to fully specify provisioning profile.
    func provisioningProfileSpecifier(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PROVISIONING_PROFILE_SPECIFIER"] = .string(value)
        return newDict
    }
    
    /// The location to copy the public headers to during building, relative to the built products folder.
    func publicHeadersFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PUBLIC_HEADERS_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    func pwd(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PWD"] = .string(path)
        return newDict
    }
    
    enum RcprojectCodegenLanguageValue: String {
        case swift = "Swift"
        case automatic = "Automatic"
        case none = "None"
    }
    
    /// The Source-code language to use for generated RC objects. By default Xcode will generate Swift types that represent the objects in your scene. Adjust this setting to explicitly select "Swift", or select "None" to disable RC object generation.
    func rcprojectCodegenLanguage(_ value: RcprojectCodegenLanguageValue = .swift) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RCPROJECT_CODEGEN_LANGUAGE"] = .string(value.rawValue)
        return newDict
    }
    
    func rcprojectCodegenSwiftVersion(_ value: String = "$(SWIFT_VERSION)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RCPROJECT_CODEGEN_SWIFT_VERSION"] = .string(value)
        return newDict
    }
    
    func rcprojectEnableWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RCPROJECT_ENABLE_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func recursiveSearchPathsFollowSymlinks(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RECURSIVE_SEARCH_PATHS_FOLLOW_SYMLINKS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func reexportedFrameworkInstallNames(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REEXPORTED_FRAMEWORK_INSTALL_NAMES"] = .array(values)
        return newDict
    }
    
    /// List of framework names that should have their symbols be reexported from the built library.
    func reexportedFrameworkNames(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REEXPORTED_FRAMEWORK_NAMES"] = .array(values)
        return newDict
    }
    
    func reexportedLibraryInstallNames(_ paths: [Path]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REEXPORTED_LIBRARY_INSTALL_NAMES"] = .array(paths)
        return newDict
    }
    
    /// List of library names that should have their symbols be reexported from the built library.
    func reexportedLibraryNames(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REEXPORTED_LIBRARY_NAMES"] = .array(values)
        return newDict
    }
    
    /// List of library paths that should have their symbols be reexported from the built library.
    func reexportedLibraryPaths(_ paths: [Path]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REEXPORTED_LIBRARY_PATHS"] = .array(paths)
        return newDict
    }
    
    /// Specifies whether to remove `CVS` directories from bundle resources when they are copied.
    func removeCvsFromResources(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REMOVE_CVS_FROM_RESOURCES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Specifies whether to remove `.git` directories from bundle resources when they are copied.
    func removeGitFromResources(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REMOVE_GIT_FROM_RESOURCES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func removeHeadersFromEmbeddedBundles(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REMOVE_HEADERS_FROM_EMBEDDED_BUNDLES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func removeHeaderDirectories(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REMOVE_HEADER_DIRECTORIES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Specifies whether to remove `.hg` directories from bundle resources when they are copied.
    func removeHgFromResources(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REMOVE_HG_FROM_RESOURCES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Specifies whether to remove `SVN` directories from bundle resources when they are copied.
    func removeSvnFromResources(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REMOVE_SVN_FROM_RESOURCES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ResmergerSourcesForkValue: String {
        case data = "data"
        case resource = "resource"
        case auto = "auto"
    }
    
    /// Determines whether `ResMerger` treats binary input files as data-fork hosted or resource-fork hosted, or whether it automatically examines each input file.
    func resmergerSourcesFork(_ value: ResmergerSourcesForkValue = .auto) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RESMERGER_SOURCES_FORK"] = .string(value.rawValue)
        return newDict
    }
    
    func resourcesPlatformName(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RESOURCES_PLATFORM_NAME"] = .string(value)
        return newDict
    }
    
    /// Overrides [Targeted Device Family (TARGETED\_DEVICE\_FAMILY)](itcaec37c2a6.html#dev2f2f7890b) when the resource copying needs to differ from the default targeted device.
    func resourcesTargetedDeviceFamily(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RESOURCES_TARGETED_DEVICE_FAMILY"] = .array(values)
        return newDict
    }
    
    func resourcesUiFrameworkFamily(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RESOURCES_UI_FRAMEWORK_FAMILY"] = .string(value)
        return newDict
    }
    
    func resourceRulesPlistPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RESOURCE_RULES_PLIST_PATH"] = .string(path)
        return newDict
    }
    
    /// Specifies whether to keep copies of unstripped binaries available.
    func retainRawBinaries(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RETAIN_RAW_BINARIES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Specifies the directory in which the collected Resource Manager resources generated by `ResMerger` are stored before they are added to the product.
    func rezCollectorDir(_ path: Path = "$(TARGET_TEMP_DIR)/ResourceManagerResources") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_COLLECTOR_DIR"] = .string(path)
        return newDict
    }
    
    func rezExecutable(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_EXECUTABLE"] = .string(value)
        return newDict
    }
    
    /// Specifies the directory in which compiled Resource Manager resources generated by `Rez` are stored before they are collected using `ResMerger`.
    func rezObjectsDir(_ path: Path = "$(REZ_COLLECTOR_DIR)/Objects") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_OBJECTS_DIR"] = .string(path)
        return newDict
    }
    
    /// Implicitly include the named file on the command line for each `Rez` file compiled. The path given should either be a project relative path or an absolute path.
    func rezPrefixFile(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_PREFIX_FILE"] = .string(value)
        return newDict
    }
    
    /// These strings will be defined when compiling resource manager resources.
    func rezPreprocessorDefinitions(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_PREPROCESSOR_DEFINITIONS"] = .array(values)
        return newDict
    }
    
    /// These strings will be undefined when compiling resource manager resources.
    func rezPreprocessorUndefinitions(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_PREPROCESSOR_UNDEFINITIONS"] = .array(values)
        return newDict
    }
    
    enum RezResolveAliasesValue: String {
        case always = "Always"
        case never = "Never"
        case includes = "Includes"
        case outputs = "Outputs"
    }
    
    /// Enables aliases to be unresolved or conditionally resolved. The default is to resolve aliases always.
    func rezResolveAliases(_ value: RezResolveAliasesValue = .always) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_RESOLVE_ALIASES"] = .string(value.rawValue)
        return newDict
    }
    
    /// Enabling this option causes the resource map output to be read-only.
    func rezResourceMapReadOnly(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_RESOURCE_MAP_READ_ONLY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum RezScriptTypeValue: String {
        case roman = "Roman"
        case japanese = "Japanese"
        case korean = "Korean"
        case simpchinese = "SimpChinese"
        case tradchinese = "TradChinese"
    }
    
    /// Enables the recognition of a specific 2-byte character script identifier to use when compiling resource manager resources. This allows for 2-byte characters in strings to be handled as indivisible entities. The default language is Roman, which specifies 1-byte character sets.
    func rezScriptType(_ value: RezScriptTypeValue = .roman) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_SCRIPT_TYPE"] = .string(value.rawValue)
        return newDict
    }
    
    /// This is a list of paths to search for files with resource manager resources. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted.
    func rezSearchPaths(_ paths: [Path] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    /// Enabling this option causes version and progress information to be written when compiling resource manager resources.
    func rezShowDebugOutput(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_SHOW_DEBUG_OUTPUT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enabling this option causes warnings about redeclared resource types to be suppressed.
    func rezSuppressRedeclaredResourceTypeWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_SUPPRESS_REDECLARED_RESOURCE_TYPE_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Activating this setting will cause Xcode to run the `Clang` static analysis tool on qualifying source files during every build.
    func runClangStaticAnalyzer(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RUN_CLANG_STATIC_ANALYZER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func removefile(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RemoveFile"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func requiredarchitectures(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RequiredArchitectures"] = .array(values)
        return newDict
    }
    
    /// Activating this setting will cause all source files to be scanned for includes (for example, of header files) when computing the dependency graph, in which case if an included file is changed then the including file will be rebuilt next time a target containing it is built. Normally only certain types of files, such as C-language source files, are scanned.
    ///
    /// This setting is useful if your project contains files of unusual types, which are compiled using a custom build rule.
    func scanAllSourceFilesForIncludes(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SCAN_ALL_SOURCE_FILES_FOR_INCLUDES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func scenekitDeploymentTarget(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SCENEKIT_DEPLOYMENT_TARGET"] = .string(value)
        return newDict
    }
    
    /// Specifies the directory that contains the product’s scripts.
    func scriptsFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SCRIPTS_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    /// The name or path of the base SDK being used during the build. The product will be built against the headers and libraries located inside the indicated SDK. This path will be prepended to all search paths, and will be passed through the environment to the compiler and linker. Additional SDKs can be specified in the [Additional SDKs (ADDITIONAL\_SDKS)](itcaec37c2a6.html#deva1a5b1b82) setting.
    func sdkroot(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SDKROOT"] = .string(path)
        return newDict
    }
    
    /// These flags are typically used to specify options for ordering symbols within segments, for example the `-sectorder` option to `ld`.
    ///
    /// Generally you should not specify symbol ordering options in Debug or Development configurations, as this will make the linked binary less readable to the debugger. Use them only in Release or Deployment configurations.
    func sectorderFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SECTORDER_FLAGS"] = .array(values)
        return newDict
    }
    
    func sed(_ path: Path = "/usr/bin/sed") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SED"] = .string(path)
        return newDict
    }
    
    func separateStrip(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SEPARATE_STRIP"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Activating this setting when the linked product's symbols are to be edited will cause editing to occur via a separate invocation of `nmedit(1)`. Otherwise editing will occur during linking, if possible.
    func separateSymbolEdit(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SEPARATE_SYMBOL_EDIT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func setDirModeOwnerGroup(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SET_DIR_MODE_OWNER_GROUP"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func setFileModeOwnerGroup(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SET_FILE_MODE_OWNER_GROUP"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func shallowBundle(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SHALLOW_BUNDLE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func sharedDerivedFileDir(_ path: Path = "$(BUILT_PRODUCTS_DIR)/DerivedSources") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SHARED_DERIVED_FILE_DIR"] = .string(path)
        return newDict
    }
    
    /// Specifies the directory that contains the product’s shared frameworks.
    func sharedFrameworksFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SHARED_FRAMEWORKS_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    /// The path where precompiled prefix header files are placed during a build. Defaults to `$(OBJROOT)/SharedPrecompiledHeaders`. Using a common location allows precompiled headers to be shared between multiple projects.
    func sharedPrecompsDir(_ path: Path = "$(OBJROOT)/SharedPrecompiledHeaders") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SHARED_PRECOMPS_DIR"] = .string(path)
        return newDict
    }
    
    func sharedSupportFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SHARED_SUPPORT_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    func shell(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SHELL"] = .string(path)
        return newDict
    }
    
    /// If enabled, don't install built products even if deployment locations are active.
    func skipInstall(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SKIP_INSTALL"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func skyboxEnableWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SKYBOX_ENABLE_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func sourceRoot(_ path: Path = "$(SRCROOT)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SOURCE_ROOT"] = .string(path)
        return newDict
    }
    
    /// Identifies the directory containing the target’s source files.
    func srcroot(_ path: Path = ".") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SRCROOT"] = .string(path)
        return newDict
    }
    
    func storyboardCompilerInfoplistContentFile(_ path: Path = "$(TARGET_TEMP_DIR)/$(InputFileRegionPathComponent)$(InputFileBase)-SBPartialInfo.plist") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STORYBOARD_COMPILER_INFOPLIST_CONTENT_FILE"] = .string(path)
        return newDict
    }
    
    func stringsFileInputEncoding(_ value: String = "$(InputFileTextEncoding)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRINGS_FILE_INPUT_ENCODING"] = .string(value)
        return newDict
    }
    
    enum StringsFileOutputEncodingValue: String {
        case utf16 = "UTF-16"
        case utf8 = "UTF-8"
        case binary = "binary"
    }
    
    /// Specify the encoding to be used for Strings files (by default, the output encoding will be 16-bit Unicode). The value can be either an `NSStringEncoding`, such as one of the numeric values recognized by `NSString`, or it can be an IANA character set name as understood by `CFString`. The operation will fail if the file cannot be converted to the specified encoding.
    func stringsFileOutputEncoding(_ value: StringsFileOutputEncodingValue = .utf16) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRINGS_FILE_OUTPUT_ENCODING"] = .string(value.rawValue)
        return newDict
    }
    
    /// Additional flags to be passed when stripping the linked product of the build.
    func stripflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRIPFLAGS"] = .array(values)
        return newDict
    }
    
    func stripBitcodeFromCopiedFiles(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRIP_BITCODE_FROM_COPIED_FILES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// If enabled, the linked product of the build will be stripped of symbols when performing deployment postprocessing.
    func stripInstalledProduct(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRIP_INSTALLED_PRODUCT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Metadata in the form of text chunks in PNG files will be removed to reduce their footprint on disk.
    func stripPngText(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRIP_PNG_TEXT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum StripStyleValue: String {
        case all = "all"
        case nonGlobal = "non-global"
        case debugging = "debugging"
    }
    
    /// The level of symbol stripping to be performed on the linked product of the build. The default value is defined by the target's product type.
    ///
    /// - _All Symbols:_ Completely strips the binary, removing the symbol table and relocation information. `all, -s`
    ///
    /// - _Non-Global Symbols:_ Strips non-global symbols, but saves external symbols. `non-global, -x`
    ///
    /// - _Debugging Symbols:_ Strips debugging symbols, but saves local and global symbols. `debugging, -S`
    func stripStyle(_ value: StripStyleValue = .all) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRIP_STYLE"] = .string(value.rawValue)
        return newDict
    }
    
    /// Adjust the level of symbol stripping specified by the STRIP\_STYLE setting so that when the linked product of the build is stripped, all Swift symbols will be removed.
    func stripSwiftSymbols(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRIP_SWIFT_SYMBOLS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// The list of supported platforms from which a base SDK can be used. This setting is used if the product can be built for multiple platforms using different SDKs.
    func supportedPlatforms(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SUPPORTED_PLATFORMS"] = .array(values)
        return newDict
    }
    
    /// Support building this target for Mac Catalyst.
    func supportsMaccatalyst(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SUPPORTS_MACCATALYST"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Show the Mac (Designed for iPhone) and Mac (Designed for iPad) destinations.
    func supportsMacDesignedForIphoneIpad(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SUPPORTS_MAC_DESIGNED_FOR_IPHONE_IPAD"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enable to indicate that the target supports `Text-Based InstallAPI`, which will enable its generation during `install` builds.
    func supportsTextBasedApi(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SUPPORTS_TEXT_BASED_API"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// A list of compilation conditions to enable for conditional compilation expressions.
    func swiftActiveCompilationConditions(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_ACTIVE_COMPILATION_CONDITIONS"] = .array(values)
        return newDict
    }
    
    func swiftAddressSanitizer(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_ADDRESS_SANITIZER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftAddressSanitizerAllowErrorRecovery(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_ADDRESS_SANITIZER_ALLOW_ERROR_RECOVERY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum SwiftBitcodeGenerationModeValue: String {
        case marker = "marker"
        case bitcode = "bitcode"
    }
    
    func swiftBitcodeGenerationMode(_ value: SwiftBitcodeGenerationModeValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_BITCODE_GENERATION_MODE"] = .string(value.rawValue)
        return newDict
    }
    
    enum SwiftCompilationModeValue: String {
        case singlefile = "singlefile"
        case wholemodule = "wholemodule"
    }
    
    /// This setting controls the way the Swift files in a module are rebuilt.
    ///
    /// - _Incremental_: Only rebuild the Swift source files in the module that are out of date, running multiple compiler processes as needed.
    ///
    /// - _Whole Module_: Always rebuild all Swift source files in the module, in a single compiler process.
    func swiftCompilationMode(_ value: SwiftCompilationModeValue = .singlefile) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_COMPILATION_MODE"] = .string(value.rawValue)
        return newDict
    }
    
    func swiftCrossModuleOptimization(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_CROSS_MODULE_OPTIMIZATION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftDeploymentTarget(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_DEPLOYMENT_TARGET"] = .string(value)
        return newDict
    }
    
    /// Disable runtime safety checks when optimizing.
    func swiftDisableSafetyChecks(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_DISABLE_SAFETY_CHECKS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftEmitModuleInterface(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_EMIT_MODULE_INTERFACE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftEnableAppExtension(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_ENABLE_APP_EXTENSION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftEnableBatchMode(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_ENABLE_BATCH_MODE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftEnableIncrementalCompilation(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_ENABLE_INCREMENTAL_COMPILATION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftEnableLibraryEvolution(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_ENABLE_LIBRARY_EVOLUTION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftEnableTestability(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_ENABLE_TESTABILITY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum SwiftEnforceExclusiveAccessValue: String {
        case on = "on"
        case debugOnly = "debug-only"
        case off = "off"
    }
    
    /// Enforce exclusive access at run-time.
    func swiftEnforceExclusiveAccess(_ value: SwiftEnforceExclusiveAccessValue = .on) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_ENFORCE_EXCLUSIVE_ACCESS"] = .string(value.rawValue)
        return newDict
    }
    
    func swiftExec(_ path: Path = "swiftc") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_EXEC"] = .string(path)
        return newDict
    }
    
    /// A list of paths to be searched by the Swift compiler for additional Swift modules.
    func swiftIncludePaths(_ paths: [Path]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_INCLUDE_PATHS"] = .array(paths)
        return newDict
    }
    
    func swiftIndexStoreEnable(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_INDEX_STORE_ENABLE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftIndexStorePath(_ path: Path = "$(INDEX_DATA_STORE_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_INDEX_STORE_PATH"] = .string(path)
        return newDict
    }
    
    /// For frameworks, install the Objective-C compatibility header describing bridged Swift classes into the [Public Headers Folder Path (PUBLIC\_HEADERS\_FOLDER\_PATH)](itcaec37c2a6.html#devdbb795497) so they may be accessed from Objective-C code using the framework. Defaults to `YES`.
    func swiftInstallObjcHeader(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_INSTALL_OBJC_HEADER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftLibrariesOnly(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_LIBRARIES_ONLY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftLibraryPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_LIBRARY_PATH"] = .string(path)
        return newDict
    }
    
    func swiftLinkObjcRuntime(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_LINK_OBJC_RUNTIME"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftMigrateCode(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_MIGRATE_CODE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftModuleName(_ value: String = "$(PRODUCT_MODULE_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_MODULE_NAME"] = .string(value)
        return newDict
    }
    
    /// Path to the header defining the Objective-C interfaces to be exposed in Swift.
    func swiftObjcBridgingHeader(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_OBJC_BRIDGING_HEADER"] = .string(value)
        return newDict
    }
    
    /// Name to use for the header that is generated by the Swift compiler for use in `#import` statements in Objective-C.
    func swiftObjcInterfaceHeaderName(_ value: String = "$(SWIFT_MODULE_NAME)-Swift.h") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_OBJC_INTERFACE_HEADER_NAME"] = .string(value)
        return newDict
    }
    
    enum SwiftOptimizationLevelValue: String {
        case onone = "-Onone"
        case o = "-O"
        case osize = "-Osize"
    }
    
    /// - _None:_ Compile without any optimization. `-Onone`
    ///
    /// - _Optimize for Speed:_&nbsp;`-O`
    ///
    /// - _Optimize for Size:_&nbsp;`-Osize`
    ///
    /// - _Whole Module Optimization:_&nbsp;`-O -whole-module-optimization`
    func swiftOptimizationLevel(_ value: SwiftOptimizationLevelValue = .o) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_OPTIMIZATION_LEVEL"] = .string(value.rawValue)
        return newDict
    }
    
    func swiftPlatformTargetPrefix(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_PLATFORM_TARGET_PREFIX"] = .string(value)
        return newDict
    }
    
    /// Generate a precompiled header for the Objective-C bridging header, if used, in order to reduce overall build times.
    func swiftPrecompileBridgingHeader(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_PRECOMPILE_BRIDGING_HEADER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum SwiftReflectionMetadataLevelValue: String {
        case all = "all"
        case withoutNames = "without-names"
        case none = "none"
    }
    
    /// This setting controls the level of reflection metadata the Swift compiler emits.
    ///
    /// - _All:_ Type information about stored properties of Swift structs and classes, Swift enum cases, and their names, are emitted into the binary for reflection and analysis in the Memory Graph Debugger.
    ///
    /// - _Without Names:_ Only type information about stored properties and cases are emitted into the binary, with their names omitted. `-disable-reflection-names`
    ///
    /// - _None:_ No reflection metadata is emitted into the binary. Accuracy of detecting memory issues involving Swift types in the Memory Graph Debugger will be degraded and reflection in Swift code may not be able to discover children of types, such as properties and enum cases. `-disable-reflection-metadata`
    func swiftReflectionMetadataLevel(_ value: SwiftReflectionMetadataLevelValue = .all) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_REFLECTION_METADATA_LEVEL"] = .string(value.rawValue)
        return newDict
    }
    
    func swiftResourceDir(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_RESOURCE_DIR"] = .string(path)
        return newDict
    }
    
    func swiftResponseFilePath(_ path: Path = "$(SWIFT_RESPONSE_FILE_PATH_$(variant)_$(arch))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_RESPONSE_FILE_PATH"] = .string(path)
        return newDict
    }
    
    func swiftSerializeDebuggingOptions(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_SERIALIZE_DEBUGGING_OPTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftStdlib(_ value: String = "swiftCore") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_STDLIB"] = .string(value)
        return newDict
    }
    
    func swiftStdlibToolAction(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_STDLIB_TOOL_ACTION"] = .string(value)
        return newDict
    }
    
    func swiftStdlibToolCodeSignIdentity(_ value: String = "$(EXPANDED_CODE_SIGN_IDENTITY)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_STDLIB_TOOL_CODE_SIGN_IDENTITY"] = .string(value)
        return newDict
    }
    
    func swiftStdlibToolDestinationDir(_ path: Path = "$(TARGET_BUILD_DIR)/$(FRAMEWORKS_FOLDER_PATH)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_STDLIB_TOOL_DESTINATION_DIR"] = .string(path)
        return newDict
    }
    
    func swiftStdlibToolExecutableToScan(_ path: Path = "$(InputPath)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_STDLIB_TOOL_EXECUTABLE_TO_SCAN"] = .string(path)
        return newDict
    }
    
    func swiftStdlibToolFoldersToScan(_ paths: [Path] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_STDLIB_TOOL_FOLDERS_TO_SCAN"] = .array(paths)
        return newDict
    }
    
    func swiftStdlibToolKeychain(_ value: String = "$(CODE_SIGN_KEYCHAIN)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_STDLIB_TOOL_KEYCHAIN"] = .string(value)
        return newDict
    }
    
    func swiftStdlibToolOtherCodeSignFlags(_ values: [String] = ["$(OTHER_CODE_SIGN_FLAGS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_STDLIB_TOOL_OTHER_CODE_SIGN_FLAGS"] = .array(values)
        return newDict
    }
    
    func swiftStdlibToolSourceLibraries(_ path: Path = "$(SWIFT_LIBRARY_PATH)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_STDLIB_TOOL_SOURCE_LIBRARIES"] = .string(path)
        return newDict
    }
    
    func swiftStdlibToolStripBitcode(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_STDLIB_TOOL_STRIP_BITCODE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftStdlibToolToolchains(_ paths: [Path] = ["$(EFFECTIVE_TOOLCHAINS_DIRS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_STDLIB_TOOL_TOOLCHAINS"] = .array(paths)
        return newDict
    }
    
    func swiftStdlibToolUnsignedDestinationDir(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_STDLIB_TOOL_UNSIGNED_DESTINATION_DIR"] = .string(path)
        return newDict
    }
    
    enum SwiftStdlibToolVerbosityValue: String {
        case none = "none"
        case verbose = "verbose"
        case extraVerbose = "extra-verbose"
    }
    
    func swiftStdlibToolVerbosity(_ value: SwiftStdlibToolVerbosityValue = .verbose) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_STDLIB_TOOL_VERBOSITY"] = .string(value.rawValue)
        return newDict
    }
    
    /// Don't emit any warnings.
    func swiftSuppressWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_SUPPRESS_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum SwiftSwift3ObjcInferenceValue: String {
        case Default = "Default"
        case on = "On"
        case off = "Off"
    }
    
    /// Control how the Swift compiler infers @objc for declarations.
    func swiftSwift3ObjcInference(_ value: SwiftSwift3ObjcInferenceValue = .Default) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_SWIFT3_OBJC_INFERENCE"] = .string(value.rawValue)
        return newDict
    }
    
    func swiftTargetTriple(_ value: String = "$(CURRENT_ARCH)-apple-$(SWIFT_PLATFORM_TARGET_PREFIX)$(SWIFT_DEPLOYMENT_TARGET)$(LLVM_TARGET_TRIPLE_SUFFIX)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_TARGET_TRIPLE"] = .string(value)
        return newDict
    }
    
    func swiftTargetTripleVariants(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_TARGET_TRIPLE_VARIANTS"] = .array(values)
        return newDict
    }
    
    func swiftThreadSanitizer(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_THREAD_SANITIZER"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftToolchainFlags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_TOOLCHAIN_FLAGS"] = .array(values)
        return newDict
    }
    
    /// Treat all warnings as errors.
    func swiftTreatWarningsAsErrors(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_TREAT_WARNINGS_AS_ERRORS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftUseParallelWholeModuleOptimization(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_USE_PARALLEL_WHOLE_MODULE_OPTIMIZATION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func swiftUseParallelWmoTargets(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_USE_PARALLEL_WMO_TARGETS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    ///
    func swiftVersion(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_VERSION"] = .string(value)
        return newDict
    }
    
    func swiftWholeModuleOptimization(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_WHOLE_MODULE_OPTIMIZATION"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func symbolHeader(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYMBOL_HEADER"] = .string(path)
        return newDict
    }
    
    /// The path at which all products will be placed when performing a build. Typically this path is not set per target, but is set per-project or per-user. By default, this is set to `$(PROJECT_DIR)/build`.
    func symroot(_ path: Path = "build") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYMROOT"] = .string(path)
        return newDict
    }
    
    func systemDextInstallPath(_ value: String = "$(SYSTEM_LIBRARY_DIR)/DriverExtensions") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYSTEM_DEXT_INSTALL_PATH"] = .string(value)
        return newDict
    }
    
    /// This is a list of paths to folders containing system frameworks to be searched by the compiler for both included or imported header files when compiling C, Objective-C, C++, or Objective-C++, and by the linker for frameworks used by the product. The order is from highest to lowest precedence. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted. This setting is very similar to "Framework Search Paths", except that the search paths are passed to the compiler in a way that suppresses most warnings for headers found in system search paths. If the compiler doesn't support the concept of system framework search paths, then the search paths are appended to any existing framework search paths defined in "Framework Search Paths".
    func systemFrameworkSearchPaths(_ paths: [Path] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYSTEM_FRAMEWORK_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    /// This is a list of paths to folders to be searched by the compiler for included or imported system header files when compiling C, Objective-C, C++, or Objective-C++. The order is from highest to lowest precedence. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted. This setting is very similar to "Header Search Paths", except that headers are passed to the compiler in a way that suppresses most warnings for headers found in system search paths. If the compiler doesn't support the concept of system header search paths, then the search paths are appended to any existing header search paths defined in "Header Search Paths".
    func systemHeaderSearchPaths(_ paths: [Path] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYSTEM_HEADER_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    func systemKextInstallPath(_ value: String = "$(SYSTEM_LIBRARY_DIR)/Extensions") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYSTEM_KEXT_INSTALL_PATH"] = .string(value)
        return newDict
    }
    
    func signingcert(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SigningCert"] = .string(value)
        return newDict
    }
    
    func tapiApplicationExtensionApiOnly(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_APPLICATION_EXTENSION_API_ONLY"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func tapiArchs(_ values: [String] = ["$(ARCHS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_ARCHS"] = .array(values)
        return newDict
    }
    
    func tapiDeploymentTarget(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_DEPLOYMENT_TARGET"] = .string(value)
        return newDict
    }
    
    func tapiDylibAllowableClients(_ values: [String] = ["$(LD_DYLIB_ALLOWABLE_CLIENTS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_DYLIB_ALLOWABLE_CLIENTS"] = .array(values)
        return newDict
    }
    
    func tapiDylibCompatibilityVersion(_ path: Path = "$(DYLIB_COMPATIBILITY_VERSION)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_DYLIB_COMPATIBILITY_VERSION"] = .string(path)
        return newDict
    }
    
    func tapiDylibCurrentVersion(_ path: Path = "$(DYLIB_CURRENT_VERSION)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_DYLIB_CURRENT_VERSION"] = .string(path)
        return newDict
    }
    
    func tapiDylibInstallName(_ path: Path = "$(LD_DYLIB_INSTALL_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_DYLIB_INSTALL_NAME"] = .string(path)
        return newDict
    }
    
    func tapiEmitProfilingSymbols(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_EMIT_PROFILING_SYMBOLS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func tapiEnableModules(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_ENABLE_MODULES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func tapiEnableVerificationMode(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_ENABLE_VERIFICATION_MODE"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func tapiFrameworkSearchPaths(_ paths: [Path] = ["$(FRAMEWORK_SEARCH_PATHS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_FRAMEWORK_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    func tapiHeaderSearchPaths(_ paths: [Path] = ["$(HEADER_SEARCH_PATHS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_HEADER_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    func tapiInputs(_ paths: [Path]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_INPUTS"] = .array(paths)
        return newDict
    }
    
    func tapiLibrarySearchPaths(_ paths: [Path] = ["$(LIBRARY_SEARCH_PATHS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_LIBRARY_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    func tapiModulesValidateSystemHeaders(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_MODULES_VALIDATE_SYSTEM_HEADERS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func tapiModuleCachePath(_ value: String = "$(CLANG_MODULE_CACHE_PATH)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_MODULE_CACHE_PATH"] = .string(value)
        return newDict
    }
    
    func tapiPreprocessorDefinitions(_ values: [String] = ["$(GCC_PREPROCESSOR_DEFINITIONS)", "$(GCC_PREPROCESSOR_DEFINITIONS_NOT_USED_IN_PRECOMPS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_PREPROCESSOR_DEFINITIONS"] = .array(values)
        return newDict
    }
    
    func tapiProductType(_ value: String = "$(PRODUCT_TYPE)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_PRODUCT_TYPE"] = .string(value)
        return newDict
    }
    
    func tapiReexportedFrameworkInstallNames(_ values: [String] = ["$(REEXPORTED_FRAMEWORK_INSTALL_NAMES)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_REEXPORTED_FRAMEWORK_INSTALL_NAMES"] = .array(values)
        return newDict
    }
    
    func tapiReexportedFrameworkNames(_ values: [String] = ["$(REEXPORTED_FRAMEWORK_NAMES)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_REEXPORTED_FRAMEWORK_NAMES"] = .array(values)
        return newDict
    }
    
    func tapiReexportedLibraryInstallNames(_ values: [String] = ["$(REEXPORTED_LIBRARY_INSTALL_NAMES)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_REEXPORTED_LIBRARY_INSTALL_NAMES"] = .array(values)
        return newDict
    }
    
    func tapiReexportedLibraryNames(_ values: [String] = ["$(REEXPORTED_LIBRARY_NAMES)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_REEXPORTED_LIBRARY_NAMES"] = .array(values)
        return newDict
    }
    
    func tapiReexportedLibraryPaths(_ values: [String] = ["$(REEXPORTED_LIBRARY_PATHS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_REEXPORTED_LIBRARY_PATHS"] = .array(values)
        return newDict
    }
    
    func tapiSystemFrameworkSearchPaths(_ paths: [Path] = ["$(SYSTEM_FRAMEWORK_SEARCH_PATHS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_SYSTEM_FRAMEWORK_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    func tapiSystemHeaderSearchPaths(_ paths: [Path] = ["$(SYSTEM_HEADER_SEARCH_PATHS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_SYSTEM_HEADER_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    func tapiTargetTripleArchs(_ values: [String] = ["$(ARCHS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_TARGET_TRIPLE_ARCHS"] = .array(values)
        return newDict
    }
    
    func tapiTargetTripleVariants(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_TARGET_TRIPLE_VARIANTS"] = .array(values)
        return newDict
    }
    
    func tapiVerifyAgainst(_ value: String = "$(BuiltBinaryPath)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_VERIFY_AGAINST"] = .string(value)
        return newDict
    }
    
    enum TapiVerifyModeValue: String {
        case errorsonly = "ErrorsOnly"
        case errorsandwarnings = "ErrorsAndWarnings"
        case pedantic = "Pedantic"
    }
    
    /// Selects the level of warnings and errors to report when building `Text-Based InstallAPI`.
    func tapiVerifyMode(_ value: TapiVerifyModeValue = .errorsonly) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_VERIFY_MODE"] = .string(value.rawValue)
        return newDict
    }
    
    /// Identifies the root of the directory hierarchy that contains the product’s files (no intermediate build files). Run Script build phases that operate on product files of the target that defines them should use the value of this build setting, but Run Script build phases that operate on product files of other targets should use `BUILT_PRODUCTS_DIR` instead.
    func targetBuildDir(_ path: Path = "$(CONFIGURATION_BUILD_DIR)$(TARGET_BUILD_SUBPATH)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TARGET_BUILD_DIR"] = .string(path)
        return newDict
    }
    
    func targetBuildSubpath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TARGET_BUILD_SUBPATH"] = .string(path)
        return newDict
    }
    
    /// The name of the current target.
    func targetName(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TARGET_NAME"] = .string(value)
        return newDict
    }
    
    /// Identifies the directory containing the target’s intermediate build files. Run Script build phases should place intermediate files at the location indicated by `DERIVED_FILE_DIR`, not the directory identified by this build setting.
    func targetTempDir(_ path: Path = "$(CONFIGURATION_TEMP_DIR)/$(TARGET_NAME).build") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TARGET_TEMP_DIR"] = .string(path)
        return newDict
    }
    
    func tempDir(_ path: Path = "$(TARGET_TEMP_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TEMP_DIR"] = .string(path)
        return newDict
    }
    
    func tempFilesDir(_ path: Path = "$(TEMP_FILE_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TEMP_FILES_DIR"] = .string(path)
        return newDict
    }
    
    func tempFileDir(_ path: Path = "$(TARGET_TEMP_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TEMP_FILE_DIR"] = .string(path)
        return newDict
    }
    
    func tempRoot(_ path: Path = "$(OBJROOT)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TEMP_ROOT"] = .string(path)
        return newDict
    }
    
    /// Path to the executable into which a bundle of tests is injected. Only specify this setting if testing an application or other executable.
    func testHost(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TEST_HOST"] = .string(value)
        return newDict
    }
    
    func textureAtlasEnableWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TEXTURE_ATLAS_ENABLE_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum TextureAtlasFormatValue: String {
        case rgba8888Png = "RGBA8888_PNG"
        case rgba8888Compressed = "RGBA8888_COMPRESSED"
        case rgba4444Compressed = "RGBA4444_COMPRESSED"
        case rgba5551Compressed = "RGBA5551_COMPRESSED"
        case rgb565Compressed = "RGB565_COMPRESSED"
    }
    
    func textureAtlasFormat(_ value: TextureAtlasFormatValue = .rgba8888Png) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TEXTURE_ATLAS_FORMAT"] = .string(value.rawValue)
        return newDict
    }
    
    enum TextureAtlasMaximumSizeValue: String {
        case _2048X2048 = "2048x2048"
        case _4096X4096 = "4096x4096"
    }
    
    func textureAtlasMaximumSize(_ value: TextureAtlasMaximumSizeValue = ._2048X2048) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TEXTURE_ATLAS_MAXIMUM_SIZE"] = .string(value.rawValue)
        return newDict
    }
    
    func toolchains(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TOOLCHAINS"] = .array(values)
        return newDict
    }
    
    /// When running tests that measure performance via `XCTestCase`, report missing baselines as test failures.
    func treatMissingBaselinesAsTestFailures(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TREAT_MISSING_BASELINES_AS_TEST_FAILURES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// A project-relative path to a file that lists the symbols not to export. See `ld -exported_symbols_list` for details on exporting symbols.
    func unexportedSymbolsFile(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["UNEXPORTED_SYMBOLS_FILE"] = .string(value)
        return newDict
    }
    
    /// Specifies the directory that contains the product’s unlocalized resources.
    func unlocalizedResourcesFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["UNLOCALIZED_RESOURCES_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    func unstrippedProduct(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["UNSTRIPPED_PRODUCT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func usdzEnableWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["USDZ_ENABLE_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func user(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["USER"] = .string(value)
        return newDict
    }
    
    /// This is a list of paths to folders to be searched by the compiler for included or imported user header files (those headers listed in quotes) when compiling C, Objective-C, C++, or Objective-C++. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted. See [Always Search User Paths (Deprecated) (ALWAYS\_SEARCH\_USER\_PATHS)](itcaec37c2a6.html#devc34d7d3e9) for more details on how this setting is used. If the compiler doesn't support the concept of user headers, then the search paths are prepended to the any existing header search paths defined in [Header Search Paths (HEADER\_SEARCH\_PATHS)](itcaec37c2a6.html#dev3c9f85d97).
    func userHeaderSearchPaths(_ paths: [Path]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["USER_HEADER_SEARCH_PATHS"] = .array(paths)
        return newDict
    }
    
    func useDynamicNoPic(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["USE_DYNAMIC_NO_PIC"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func useGcc3PfeSupport(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["USE_GCC3_PFE_SUPPORT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enable the use of _Header Maps_, which provide the compiler with a mapping from textual header names to their locations, bypassing the normal compiler header search path mechanisms. This allows source code to include headers from various locations in the file system without needing to update the header search path build settings.
    func useHeadermap(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["USE_HEADERMAP"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func useHeaderSymlinks(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["USE_HEADER_SYMLINKS"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func useLlvmTargetTriples(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["USE_LLVM_TARGET_TRIPLES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func useLlvmTargetTriplesForClang(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["USE_LLVM_TARGET_TRIPLES_FOR_CLANG"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func useLlvmTargetTriplesForLd(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["USE_LLVM_TARGET_TRIPLES_FOR_LD"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func useLlvmTargetTriplesForTapi(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["USE_LLVM_TARGET_TRIPLES_FOR_TAPI"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func validatePlistFilesWhileCopying(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VALIDATE_PLIST_FILES_WHILE_COPYING"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// If enabled, perform validation checks on the product as part of the build process.
    func validateProduct(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VALIDATE_PRODUCT"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func validateStringsFilesWhileCopying(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VALIDATE_STRINGS_FILES_WHILE_COPYING"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    enum ValidateWorkspaceValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }
    
    /// If enabled, perform validation checks on the workspace configuration as part of the build process.
    func validateWorkspace(_ value: ValidateWorkspaceValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VALIDATE_WORKSPACE"] = .string(value.rawValue)
        return newDict
    }
    
    /// List of framework names for which to suppress deprecation warnings and missing framework errors in the workspace validator.
    func validateWorkspaceSkippedSdkFrameworks(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VALIDATE_WORKSPACE_SKIPPED_SDK_FRAMEWORKS"] = .array(values)
        return newDict
    }
    
    /// A space-separated list of architectures for which the target should actually be built. For each target, this is intersected with the list specified in [Architectures (ARCHS)](itcaec37c2a6.html#devf0a9d5aca), and the resulting set is built. This allows individual targets to opt out of building for particular architectures. If the resulting set of architectures is empty, no executable will be produced.
    func validArchs(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VALID_ARCHS"] = .array(values)
        return newDict
    }
    
    /// Specifies whether the target’s Copy Files build phases generate additional information when copying files.
    func verbosePbxcp(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERBOSE_PBXCP"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func versioningStub(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERSIONING_STUB"] = .string(value)
        return newDict
    }
    
    enum VersioningSystemValue: String {
        case empty = ""
        case appleGeneric = "apple-generic"
    }
    
    /// Selects the process used for version-stamping generated files.
    ///
    /// - _None:_ Use no versioning system.
    ///
    /// - _Apple Generic:_ Use the current project version setting. `apple-generic`
    func versioningSystem(_ value: VersioningSystemValue = .empty) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERSIONING_SYSTEM"] = .string(value.rawValue)
        return newDict
    }
    
    func versionplistPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERSIONPLIST_PATH"] = .string(path)
        return newDict
    }
    
    func versionsFolderPath(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERSIONS_FOLDER_PATH"] = .string(value)
        return newDict
    }
    
    /// This defines a reference to the user performing a build to be included in the generated Apple Generic Versioning stub. Defaults to the value of the `USER` environment variable.
    func versionInfoBuilder(_ value: String = "$(USER)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERSION_INFO_BUILDER"] = .string(value)
        return newDict
    }
    
    /// This defines a prefix string for the version info symbol declaration in the generated Apple Generic Versioning stub. This can be used, for example, to add an optional `export` keyword to the version symbol declaration. This should rarely be changed.
    func versionInfoExportDecl(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERSION_INFO_EXPORT_DECL"] = .string(value)
        return newDict
    }
    
    /// Used to specify a name for the source file that will be generated by Apple Generic Versioning and compiled into your product. By default, this is set to `$(PRODUCT_NAME)_vers.c`.
    func versionInfoFile(_ value: String = "$(PRODUCT_NAME)_vers.c") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERSION_INFO_FILE"] = .string(value)
        return newDict
    }
    
    /// Used as a prefix for the name of the version info symbol in the generated versioning source file. If you prefix your exported symbols you will probably want to set this to the same prefix.
    func versionInfoPrefix(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERSION_INFO_PREFIX"] = .string(value)
        return newDict
    }
    
    func versionInfoString(_ value: String = "\"@(#)PROGRAM:$(PRODUCT_NAME)  PROJECT:$(PROJECT_NAME)-$(CURRENT_PROJECT_VERSION)\"") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERSION_INFO_STRING"] = .string(value)
        return newDict
    }
    
    /// Used as a suffix for the name of the version info symbol in the generated versioning source file. This is rarely used.
    func versionInfoSuffix(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERSION_INFO_SUFFIX"] = .string(value)
        return newDict
    }
    
    /// Space-separated list of additional warning flags to pass to the compiler. Use this setting if Xcode does not already provide UI for a particular compiler warning flag.
    func warningCflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["WARNING_CFLAGS"] = .array(values)
        return newDict
    }
    
    /// These flags are passed with linker invocations, and by default give the `-no_arch_warnings` flag to the linker to avoid many warnings being generated during multi-architecture builds.
    func warningLdflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["WARNING_LDFLAGS"] = .array(values)
        return newDict
    }
    
    /// The extension used for product wrappers, which has a default value based on the product type.
    func wrapperExtension(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["WRAPPER_EXTENSION"] = .string(value)
        return newDict
    }
    
    /// Specifies the filename, including the appropriate extension, of the product bundle.
    func wrapperName(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["WRAPPER_NAME"] = .string(value)
        return newDict
    }
    
    func wrapperPrefix(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["WRAPPER_PREFIX"] = .string(value)
        return newDict
    }
    
    /// Specifies the suffix of the product bundle name, including the character that separates the extension from the rest of the bundle name.
    func wrapperSuffix(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["WRAPPER_SUFFIX"] = .string(value)
        return newDict
    }
    
    func wrapAssetPacksInSeparateDirectories(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["WRAP_ASSET_PACKS_IN_SEPARATE_DIRECTORIES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    func xcodeDeveloperDirPath(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["XCODE_DEVELOPER_DIR_PATH"] = .string(path)
        return newDict
    }
    
    func xibCompilerInfoplistContentFile(_ path: Path = "$(TARGET_TEMP_DIR)/$(InputFileRegionPathComponent)$(InputFileBase)-PartialInfo.plist") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["XIB_COMPILER_INFOPLIST_CONTENT_FILE"] = .string(path)
        return newDict
    }
    
    func xpcservicesFolderPath(_ path: Path = "$(CONTENTS_FOLDER_PATH)/XPCServices") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["XPCSERVICES_FOLDER_PATH"] = .string(path)
        return newDict
    }
    
    func yacc(_ path: Path = "yacc") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["YACC"] = .string(path)
        return newDict
    }
    
    /// Space-separated list of additional flags to pass to `yacc`. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a `yacc` flag.
    func yaccflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["YACCFLAGS"] = .array(values)
        return newDict
    }
    
    enum YaccGeneratedFileStemValue: String {
        case standard = "Standard"
        case inputfilestem = "InputFileStem"
    }
    
    /// The file stem to use for the files generated by `yacc`. The files will be named `<stem>.tab.c` and `<stem>.tab.h` based on the value of this setting. The Standard (`y`) option will cause all `yacc` source files in the same target to produce the same output file, and it is not recommended for targets containing multiple `yacc` source files.
    func yaccGeneratedFileStem(_ value: YaccGeneratedFileStemValue = .standard) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["YACC_GENERATED_FILE_STEM"] = .string(value.rawValue)
        return newDict
    }
    
    /// Enabling this option changes the preprocessor directives generated by `yacc` so that debugging statements will be incorporated in the compiled code.
    func yaccGenerateDebuggingDirectives(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["YACC_GENERATE_DEBUGGING_DIRECTIVES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
    /// Enabling this option causes `yacc` to insert the `#line` directives in the generated code. The `#line` directives let the C compiler relate errors in the generated code to the user's original code. If this option is disabled, `#line` directives specified by the user in the source file will still be retained.
    func yaccInsertLineDirectives(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["YACC_INSERT_LINE_DIRECTIVES"] = .init(booleanLiteral: bool)
        return newDict
    }
    
}

