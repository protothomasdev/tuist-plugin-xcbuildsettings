import ProjectDescription

public typealias Path = String

public extension SettingsDictionary {

    /// A string identifying the build system action being performed.
    func action(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ACTION"] = .string(value)
        return newDict
    }

    func additionalSdks(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ADDITIONAL_SDKS"] = .array(values)
        return newDict
    }

    /// If enabled, allows targets to build multiple times within a single build operation. Targets will build for the platform of the active run destination, as well as the platforms of any targets which depend on them.
    func allowTargetPlatformSpecialization(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALLOW_TARGET_PLATFORM_SPECIALIZATION"] = .init(booleanLiteral: bool)
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

    func alternateMode(_ value: String = "$(INSTALL_MODE_FLAG)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALTERNATE_MODE"] = .string(value)
        return newDict
    }

    func alternateOwner(_ value: String = "$(INSTALL_OWNER)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALTERNATE_OWNER"] = .string(value)
        return newDict
    }

    func alternatePermissionsFiles(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALTERNATE_PERMISSIONS_FILES"] = .array(values)
        return newDict
    }

    func alwaysEmbedSwiftStandardLibraries(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func applicationExtensionApiOnly(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["APPLICATION_EXTENSION_API_ONLY"] = .init(booleanLiteral: bool)
        return newDict
    }

    func applyRulesInCopyFiles(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["APPLY_RULES_IN_COPY_FILES"] = .init(booleanLiteral: bool)
        return newDict
    }

    func applyRulesInCopyHeaders(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["APPLY_RULES_IN_COPY_HEADERS"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    /// A set of additional app icon set names to include as in the built product. The icons will be available at runtime for use as alternate app icons. This is an alternative to `--include-all-app-icons` providing more detailed control.
    func assetcatalogCompilerAlternateAppiconNames(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_ALTERNATE_APPICON_NAMES"] = .array(values)
        return newDict
    }

    /// Name of an app icon set for the target's default app icon. The contents will be merged into the `Info.plist`.
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

    /// When true, all app icon assets from the target's Asset Catalogs will be included in the built product, making the available at runtime for use as alternate app icons. When false, only the primary app icon will be included in the built product.
    func assetcatalogCompilerIncludeAllAppiconAssets(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_INCLUDE_ALL_APPICON_ASSETS"] = .init(booleanLiteral: bool)
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

    /// Whether to perform App Store-specific behaviors such as validations. For example, building for an iOS or watchOS app will warn if a 1024 App Store icon is not present, but only when compiling for App Store deployment.
    func assetcatalogCompilerSkipAppStoreDeployment(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_COMPILER_SKIP_APP_STORE_DEPLOYMENT"] = .init(booleanLiteral: bool)
        return newDict
    }

    enum AssetcatalogCompilerStandaloneIconBehaviorValue: String {
        case Default = "default"
        case all = "all"
        case none = "none"
    }

    /// Controls whether loose PNG or ICNS files are created for the primary app icon, in addition to including the content in the Assets.car file. By default, a small subset of sizes are included as loose files, allowing external management tools to display a representative icon without reading the CAR file. This can be set to 'all' or 'none' to include more or fewer icon sizes as loose files.
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

    func assetcatalogFilterForThinningDeviceConfiguration(_ value: String = "$(TARGET_THINNING_DEVICE_CONFIGURATION)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_FILTER_FOR_THINNING_DEVICE_CONFIGURATION"] = .string(value)
        return newDict
    }

    func assetcatalogNotices(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ASSETCATALOG_NOTICES"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func bundleExtensionsFolderPath(_ value: String = "$(BUNDLE_CONTENTS_FOLDER_PATH)Extensions") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUNDLE_EXTENSIONS_FOLDER_PATH"] = .string(value)
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

    func bundleLoader(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["BUNDLE_LOADER"] = .string(path)
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

    func clangAddressSanitizer(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ADDRESS_SANITIZER"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAddressSanitizerAllowErrorRecovery(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ADDRESS_SANITIZER_ALLOW_ERROR_RECOVERY"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func clangAnalyzerGcd(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_GCD"] = .init(booleanLiteral: bool)
        return newDict
    }

    enum ClangAnalyzerGcdPerformanceValue: String {
        case yes = "YES"
        case no = "NO"
    }

    func clangAnalyzerGcdPerformance(_ value: ClangAnalyzerGcdPerformanceValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_GCD_PERFORMANCE"] = .string(value.rawValue)
        return newDict
    }

    func clangAnalyzerLibkernRetainCount(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_LIBKERN_RETAIN_COUNT"] = .init(booleanLiteral: bool)
        return newDict
    }

    enum ClangAnalyzerLocalizabilityEmptyContextValue: String {
        case yes = "YES"
        case no = "NO"
    }

    func clangAnalyzerLocalizabilityEmptyContext(_ value: ClangAnalyzerLocalizabilityEmptyContextValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_LOCALIZABILITY_EMPTY_CONTEXT"] = .string(value.rawValue)
        return newDict
    }

    enum ClangAnalyzerLocalizabilityNonlocalizedValue: String {
        case yes = "YES"
        case no = "NO"
    }

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

    func clangAnalyzerMemoryManagement(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_MEMORY_MANAGEMENT"] = .init(booleanLiteral: bool)
        return newDict
    }

    enum ClangAnalyzerMigConventionsValue: String {
        case yes = "YES"
        case no = "NO"
    }

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

    func clangAnalyzerNumberObjectConversion(_ value: ClangAnalyzerNumberObjectConversionValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION"] = .string(value.rawValue)
        return newDict
    }

    func clangAnalyzerObjcAtsync(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_ATSYNC"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerObjcCollections(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_COLLECTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerObjcDealloc(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_DEALLOC"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerObjcGenerics(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_GENERICS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerObjcIncompMethodTypes(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_INCOMP_METHOD_TYPES"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerObjcNscferror(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_NSCFERROR"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerObjcRetainCount(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_RETAIN_COUNT"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerObjcSelfInit(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_SELF_INIT"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerObjcUnusedIvars(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OBJC_UNUSED_IVARS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerOsobjectCStyleCast(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_OSOBJECT_C_STYLE_CAST"] = .init(booleanLiteral: bool)
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

    func clangAnalyzerSecurityBufferOverflowExperimental(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_BUFFER_OVERFLOW_EXPERIMENTAL"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerSecurityFloatloopcounter(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_FLOATLOOPCOUNTER"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerSecurityInsecureapiGetpwGets(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_INSECUREAPI_GETPW_GETS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerSecurityInsecureapiMkstemp(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_INSECUREAPI_MKSTEMP"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerSecurityInsecureapiRand(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_INSECUREAPI_RAND"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerSecurityInsecureapiStrcpy(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_INSECUREAPI_STRCPY"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerSecurityInsecureapiUncheckedreturn(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_INSECUREAPI_UNCHECKEDRETURN"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangAnalyzerSecurityInsecureapiVfork(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ANALYZER_SECURITY_INSECUREAPI_VFORK"] = .init(booleanLiteral: bool)
        return newDict
    }

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
        case c20 = "c++20"
        case gnu20 = "gnu++20"
        case compilerDefault = "compiler-default"
    }

    func clangCxxLanguageStandard(_ value: ClangCxxLanguageStandardValue = .compilerDefault) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_CXX_LANGUAGE_STANDARD"] = .string(value.rawValue)
        return newDict
    }

    enum ClangCxxLibraryValue: String {
        case libc = "libc++"
        case compilerDefault = "compiler-default"
    }

    func clangCxxLibrary(_ value: ClangCxxLibraryValue = .compilerDefault) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_CXX_LIBRARY"] = .string(value.rawValue)
        return newDict
    }

    enum ClangDebugInformationLevelValue: String {
        case Default = "default"
        case lineTablesOnly = "line-tables-only"
    }

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

    func clangEnableBoundsAttributes(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ENABLE_BOUNDS_ATTRIBUTES"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// Enables building with code coverage instrumentation. This is only used when the build has code coverage enabled, which is typically done via the Xcode scheme settings.
    func clangEnableCodeCoverage(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ENABLE_CODE_COVERAGE"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangEnableCppStaticDestructors(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ENABLE_CPP_STATIC_DESTRUCTORS"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func clangEnableObjcArc(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ENABLE_OBJC_ARC"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangEnableObjcWeak(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_ENABLE_OBJC_WEAK"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangIndexStoreEnable(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
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

    func clangLibfuzzer(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_LIBFUZZER"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangLinkObjcRuntime(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
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

    func clangSanitizerCoverage(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_SANITIZER_COVERAGE"] = .init(booleanLiteral: bool)
        return newDict
    }

    enum ClangStaticAnalyzerModeValue: String {
        case shallow = "shallow"
        case deep = "deep"
    }

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

    func clangThreadSanitizer(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_THREAD_SANITIZER"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangTidyBugproneAssertSideEffect(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_TIDY_BUGPRONE_ASSERT_SIDE_EFFECT"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangTidyBugproneInfiniteLoop(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_TIDY_BUGPRONE_INFINITE_LOOP"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangTidyBugproneMoveForwardingReference(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_TIDY_BUGPRONE_MOVE_FORWARDING_REFERENCE"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangTidyBugproneRedundantBranchCondition(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_TIDY_BUGPRONE_REDUNDANT_BRANCH_CONDITION"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangTidyMiscRedundantExpression(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_TIDY_MISC_REDUNDANT_EXPRESSION"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangToolchainFlags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_TOOLCHAIN_FLAGS"] = .array(values)
        return newDict
    }

    enum ClangTrivialAutoVarInitValue: String {
        case Default = "default"
        case uninitialized = "uninitialized"
        case zero = "zero"
        case pattern = "pattern"
    }

    func clangTrivialAutoVarInit(_ value: ClangTrivialAutoVarInitValue = .Default) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_TRIVIAL_AUTO_VAR_INIT"] = .string(value.rawValue)
        return newDict
    }

    func clangUndefinedBehaviorSanitizer(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_UNDEFINED_BEHAVIOR_SANITIZER"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangUndefinedBehaviorSanitizerInteger(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_UNDEFINED_BEHAVIOR_SANITIZER_INTEGER"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangUndefinedBehaviorSanitizerNullability(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_UNDEFINED_BEHAVIOR_SANITIZER_NULLABILITY"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangUseOptimizationProfile(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_USE_OPTIMIZATION_PROFILE"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangWarnAssignEnum(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_ASSIGN_ENUM"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func clangWarnComma(_ value: ClangWarnCommaValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_COMMA"] = .string(value.rawValue)
        return newDict
    }

    func clangWarnCompletionHandlerMisuse(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_COMPLETION_HANDLER_MISUSE"] = .init(booleanLiteral: bool)
        return newDict
    }

    enum ClangWarnConstantConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    func clangWarnConstantConversion(_ value: ClangWarnConstantConversionValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_CONSTANT_CONVERSION"] = .string(value.rawValue)
        return newDict
    }

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

    func clangWarnDeleteNonVirtualDtor(_ value: ClangWarnDeleteNonVirtualDtorValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_DELETE_NON_VIRTUAL_DTOR"] = .string(value.rawValue)
        return newDict
    }

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

    func clangWarnDirectObjcIsaUsage(_ value: ClangWarnDirectObjcIsaUsageValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_DIRECT_OBJC_ISA_USAGE"] = .string(value.rawValue)
        return newDict
    }

    func clangWarnDocumentationComments(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_DOCUMENTATION_COMMENTS"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    enum ClangWarnImplicitFallthroughValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }

    func clangWarnImplicitFallthrough(_ value: ClangWarnImplicitFallthroughValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_IMPLICIT_FALLTHROUGH"] = .string(value.rawValue)
        return newDict
    }

    enum ClangWarnImplicitSignConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    func clangWarnImplicitSignConversion(_ value: ClangWarnImplicitSignConversionValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_IMPLICIT_SIGN_CONVERSION"] = .string(value.rawValue)
        return newDict
    }

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

    func clangWarnNonLiteralNullConversion(_ value: ClangWarnNonLiteralNullConversionValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_NON_LITERAL_NULL_CONVERSION"] = .string(value.rawValue)
        return newDict
    }

    func clangWarnNullableToNonnullConversion(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_NULLABLE_TO_NONNULL_CONVERSION"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangWarnObjcExplicitOwnershipType(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_OBJC_EXPLICIT_OWNERSHIP_TYPE"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangWarnObjcImplicitAtomicProperties(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_OBJC_IMPLICIT_ATOMIC_PROPERTIES"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func clangWarnObjcLiteralConversion(_ value: ClangWarnObjcLiteralConversionValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_OBJC_LITERAL_CONVERSION"] = .string(value.rawValue)
        return newDict
    }

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

    func clangWarnPragmaPack(_ value: ClangWarnPragmaPackValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_PRAGMA_PACK"] = .string(value.rawValue)
        return newDict
    }

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

    func clangWarnQuotedIncludeInFrameworkHeader(_ value: ClangWarnQuotedIncludeInFrameworkHeaderValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER"] = .string(value.rawValue)
        return newDict
    }

    func clangWarnRangeLoopAnalysis(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_RANGE_LOOP_ANALYSIS"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func clangWarnSuspiciousImplicitConversion(_ value: ClangWarnSuspiciousImplicitConversionValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION"] = .string(value.rawValue)
        return newDict
    }

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

    func clangWarnVexingParse(_ value: ClangWarnVexingParseValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_VEXING_PARSE"] = .string(value.rawValue)
        return newDict
    }

    enum ClangWarnXnuTypedAllocatorsValue: String {
        case Default = "DEFAULT"
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    func clangWarnXnuTypedAllocators(_ value: ClangWarnXnuTypedAllocatorsValue = .Default) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN_XNU_TYPED_ALLOCATORS"] = .string(value.rawValue)
        return newDict
    }

    func clangWarnArcBridgeCastNonarc(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN__ARC_BRIDGE_CAST_NONARC"] = .init(booleanLiteral: bool)
        return newDict
    }

    func clangWarnDuplicateMethodMatch(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CLANG_WARN__DUPLICATE_METHOD_MATCH"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func classFileDir(_ path: Path = "$(TEMP_DIR)/JavaClasses") -> ProjectDescription.SettingsDictionary {
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

    func codeSignEntitlements(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CODE_SIGN_ENTITLEMENTS"] = .string(value)
        return newDict
    }

    func codeSignIdentity(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CODE_SIGN_IDENTITY"] = .string(value)
        return newDict
    }

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
        case empty = ""
        case automatic = "Automatic"
        case manual = "Manual"
    }

    func codeSignStyle(_ value: CodeSignStyleValue = .empty) -> ProjectDescription.SettingsDictionary {
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

    func configurationBuildDir(_ path: Path = "$(BUILD_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CONFIGURATION_BUILD_DIR"] = .string(path)
        return newDict
    }

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

    /// Specifies the flags to pass to `unifdef(1)` when invoking that tool to copy headers. This setting has no effect unless `COPY_HEADERS_RUN_UNIFDEF` is enabled.
    func copyHeadersUnifdefFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COPY_HEADERS_UNIFDEF_FLAGS"] = .array(values)
        return newDict
    }

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

    /// The Source-code language to use for generated CoreML model class.  By default "Automatic" will analyze your project to determine the correct language.  Adjust this setting to explicitly select "Swift" or "Objective-C", or select "None" to disable model class generation.
    func coremlCodegenLanguage(_ value: CoremlCodegenLanguageValue = .automatic) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COREML_CODEGEN_LANGUAGE"] = .string(value.rawValue)
        return newDict
    }

    /// Generate Swift model classes that are marked with @objc and are descendants of NSObject, in order to be accessible and usable in Objective-C.  This setting has no effect if "CoreML Model Class Generation Language" is set to "Objective-C".
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

    func coremlCompilerContainer(_ value: String = "bundle-resources") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["COREML_COMPILER_CONTAINER"] = .string(value)
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

    func cppOtherPreprocessorFlags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CPP_OTHER_PREPROCESSOR_FLAGS"] = .array(values)
        return newDict
    }

    func cppPrefixHeader(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CPP_PREFIX_HEADER"] = .string(value)
        return newDict
    }

    func cppPreprocessorDefinitions(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["CPP_PREPROCESSOR_DEFINITIONS"] = .array(values)
        return newDict
    }

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

    func definesModule(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEFINES_MODULE"] = .init(booleanLiteral: bool)
        return newDict
    }

    func deploymentLocation(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEPLOYMENT_LOCATION"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    /// The name of the build setting for the deployment target for the effective platform. This can be used to evaluate the build setting using build setting interpolation without hard-coding the name, e.g. `$($(DEPLOYMENT_TARGET_SETTING_NAME))`, or to compose the names of other settings which contain its name, such as the `RECOMMENDED_<platform>_DEPLOYMENT_TARGET` settings.
    func deploymentTargetSettingName(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEPLOYMENT_TARGET_SETTING_NAME"] = .string(value)
        return newDict
    }

    func derivedFilesDir(_ path: Path = "$(DERIVED_FILE_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DERIVED_FILES_DIR"] = .string(path)
        return newDict
    }

    /// Identifies the directory into which derived source files, such as those generated by `lex` and `yacc`, are placed.
    func derivedFileDir(_ path: Path = "$(TEMP_DIR)/DerivedSources") -> ProjectDescription.SettingsDictionary {
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

    func developmentTeam(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DEVELOPMENT_TEAM"] = .string(value)
        return newDict
    }

    func doccAnalyzeDiagnostics(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_ANALYZE_DIAGNOSTICS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func doccArchivePath(_ value: String = "$(DOCC_OUTPUT_DIR)/$(DOCC_CATALOG_DISPLAY_NAME).doccarchive") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_ARCHIVE_PATH"] = .string(value)
        return newDict
    }

    func doccCatalogDisplayName(_ value: String = "$(PRODUCT_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_CATALOG_DISPLAY_NAME"] = .string(value)
        return newDict
    }

    func doccCatalogIdentifier(_ value: String = "$(PRODUCT_BUNDLE_IDENTIFIER:default=$DOCC_CATALOG_DISPLAY_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_CATALOG_IDENTIFIER"] = .string(value)
        return newDict
    }

    func doccCatalogVersion(_ value: String = "$(CURRENT_PROJECT_VERSION:default=0)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_CATALOG_VERSION"] = .string(value)
        return newDict
    }

    func doccEmitFixits(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_EMIT_FIXITS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func doccExec(_ path: Path = "docc") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_EXEC"] = .string(path)
        return newDict
    }

    /// Extract Objective-C symbol information for targets that contain only Swift code so that the documentation output can be read as both Swift and Objective-C.
    func doccExtractObjcInfoForSwiftSymbols(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_EXTRACT_OBJC_INFO_FOR_SWIFT_SYMBOLS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func doccExtractSpiDocumentation(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_EXTRACT_SPI_DOCUMENTATION"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// Extract Swift symbol information for targets that contain only Objective-C code so that the documentation output can be read as both Swift and Objective-C.
    func doccExtractSwiftInfoForObjcSymbols(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_EXTRACT_SWIFT_INFO_FOR_OBJC_SYMBOLS"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// The base path your documentation website will be hosted at.
    /// For example, if you plan on hosting your DocC archive at `https://example.com/ProjectName/documentation` instead of `https://example.com/documentation`, set this value to `"ProjectName"`.
    func doccHostingBasePath(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_HOSTING_BASE_PATH"] = .string(value)
        return newDict
    }

    func doccOutputDigestInformation(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_OUTPUT_DIGEST_INFORMATION"] = .init(booleanLiteral: bool)
        return newDict
    }

    func doccOutputDir(_ value: String = "$(TARGET_BUILD_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_OUTPUT_DIR"] = .string(value)
        return newDict
    }

    func doccOutputNavigatorIndex(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_OUTPUT_NAVIGATOR_INDEX"] = .init(booleanLiteral: bool)
        return newDict
    }

    func doccTemplatePath(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_TEMPLATE_PATH"] = .string(value)
        return newDict
    }

    func doccTransformForStaticHosting(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCC_TRANSFORM_FOR_STATIC_HOSTING"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// Identifies the directory that contains the bundle’s documentation files.
    func documentationFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DOCUMENTATION_FOLDER_PATH"] = .string(path)
        return newDict
    }

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

    func dwarfDsymFolderPath(_ value: String = "$(CONFIGURATION_BUILD_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DWARF_DSYM_FOLDER_PATH"] = .string(value)
        return newDict
    }

    func dylibCompatibilityVersion(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DYLIB_COMPATIBILITY_VERSION"] = .string(value)
        return newDict
    }

    func dylibCurrentVersion(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DYLIB_CURRENT_VERSION"] = .string(value)
        return newDict
    }

    func dylibInstallNameBase(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["DYLIB_INSTALL_NAME_BASE"] = .string(value)
        return newDict
    }

    /// If enabled, the build system will emit a TBD file for Swift-only framework and dynamic library targets to unblock linking of dependent targets before their dependency has finished linking.
    func eagerLinking(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EAGER_LINKING"] = .init(booleanLiteral: bool)
        return newDict
    }

    func embeddedContentContainsSwift(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EMBEDDED_CONTENT_CONTAINS_SWIFT"] = .init(booleanLiteral: bool)
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

    func enableAppSandbox(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_APP_SANDBOX"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func enableDefaultSearchPaths(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_DEFAULT_SEARCH_PATHS"] = .init(booleanLiteral: bool)
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

    /// If enabled, the build system will sandbox user scripts to disallow undeclared input/output dependencies.
    func enableUserScriptSandboxing(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_USER_SCRIPT_SANDBOXING"] = .init(booleanLiteral: bool)
        return newDict
    }

    enum EnableUserSelectedFilesValue: String {
        case empty = ""
        case readonly = "readonly"
        case readwrite = "readwrite"
    }

    func enableUserSelectedFiles(_ value: EnableUserSelectedFilesValue = .empty) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ENABLE_USER_SELECTED_FILES"] = .string(value.rawValue)
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

    func excludedRecursiveSearchPathSubdirectories(_ values: [String] = ["*.nib", "*.lproj", "*.framework", "*.gch", "*.xcode*", "*.xcassets", "(*)", ".DS_Store", "CVS", ".svn", ".git", ".hg", "*.pbproj", "*.pbxproj"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES"] = .array(values)
        return newDict
    }

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

    func exportedSymbolsFile(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["EXPORTED_SYMBOLS_FILE"] = .string(path)
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

    func frameworkSearchPaths(_ paths: [Path]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["FRAMEWORK_SEARCH_PATHS"] = .array(paths)
        return newDict
    }

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

    func fuseBuildPhases(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["FUSE_BUILD_PHASES"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// If enabled, consecutive run script phases will be allowed to run in parallel if they fully specify their input and output dependencies.
    func fuseBuildScriptPhases(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["FUSE_BUILD_SCRIPT_PHASES"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gcc3Version(_ value: String = "3.3") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC3_VERSION"] = .string(value)
        return newDict
    }

    func gccCharIsUnsignedChar(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_CHAR_IS_UNSIGNED_CHAR"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func gccDynamicNoPic(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_DYNAMIC_NO_PIC"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccEnableAsmKeyword(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_ASM_KEYWORD"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccEnableBuiltinFunctions(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_BUILTIN_FUNCTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccEnableCppExceptions(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_CPP_EXCEPTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccEnableCppRtti(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_CPP_RTTI"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccEnableExceptions(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_EXCEPTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccEnableFloatingPointLibraryCalls(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_FLOATING_POINT_LIBRARY_CALLS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccEnableKernelDevelopment(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_KERNEL_DEVELOPMENT"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccEnableObjcExceptions(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_OBJC_EXCEPTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func gccEnableTrigraphs(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_ENABLE_TRIGRAPHS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccFastMath(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_FAST_MATH"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccGenerateDebuggingSymbols(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_GENERATE_DEBUGGING_SYMBOLS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccGenerateTestCoverageFiles(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_GENERATE_TEST_COVERAGE_FILES"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func gccInputFiletype(_ value: GccInputFiletypeValue = .automatic) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_INPUT_FILETYPE"] = .string(value.rawValue)
        return newDict
    }

    func gccInstrumentProgramFlowArcs(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_INSTRUMENT_PROGRAM_FLOW_ARCS"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func gccPrecompilePrefixHeader(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_PRECOMPILE_PREFIX_HEADER"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccPrefixHeader(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_PREFIX_HEADER"] = .string(value)
        return newDict
    }

    func gccPreprocessorDefinitions(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_PREPROCESSOR_DEFINITIONS"] = .array(values)
        return newDict
    }

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

    func gccReuseStrings(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_REUSE_STRINGS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccShortEnums(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_SHORT_ENUMS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccStrictAliasing(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_STRICT_ALIASING"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func gccTreatImplicitFunctionDeclarationsAsErrors(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_TREAT_IMPLICIT_FUNCTION_DECLARATIONS_AS_ERRORS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccTreatIncompatiblePointerTypeWarningsAsErrors(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_TREAT_INCOMPATIBLE_POINTER_TYPE_WARNINGS_AS_ERRORS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccTreatWarningsAsErrors(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_TREAT_WARNINGS_AS_ERRORS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccUnrollLoops(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_UNROLL_LOOPS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccUseGcc3PfeSupport(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_USE_GCC3_PFE_SUPPORT"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccUseStandardIncludeSearching(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_USE_STANDARD_INCLUDE_SEARCHING"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func gccWarn64To32BitConversion(_ value: GccWarn64To32BitConversionValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_64_TO_32_BIT_CONVERSION"] = .string(value.rawValue)
        return newDict
    }

    func gccWarnAboutDeprecatedFunctions(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnAboutInvalidOffsetofMacro(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_ABOUT_INVALID_OFFSETOF_MACRO"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func gccWarnAboutReturnType(_ value: GccWarnAboutReturnTypeValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_ABOUT_RETURN_TYPE"] = .string(value.rawValue)
        return newDict
    }

    func gccWarnAllowIncompleteProtocol(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_ALLOW_INCOMPLETE_PROTOCOL"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnCheckSwitchStatements(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_CHECK_SWITCH_STATEMENTS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnFourCharacterConstants(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_FOUR_CHARACTER_CONSTANTS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnHiddenVirtualFunctions(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_HIDDEN_VIRTUAL_FUNCTIONS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnInhibitAllWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_INHIBIT_ALL_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnInitializerNotFullyBracketed(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_INITIALIZER_NOT_FULLY_BRACKETED"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func gccWarnNonVirtualDestructor(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_NON_VIRTUAL_DESTRUCTOR"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnPedantic(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_PEDANTIC"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnShadow(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_SHADOW"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnSignCompare(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_SIGN_COMPARE"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnStrictSelectorMatch(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_STRICT_SELECTOR_MATCH"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnTypecheckCallsToPrintf(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_TYPECHECK_CALLS_TO_PRINTF"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func gccWarnUninitializedAutos(_ value: GccWarnUninitializedAutosValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_UNINITIALIZED_AUTOS"] = .string(value.rawValue)
        return newDict
    }

    func gccWarnUnknownPragmas(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_UNKNOWN_PRAGMAS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnUnusedFunction(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_UNUSED_FUNCTION"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnUnusedLabel(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_UNUSED_LABEL"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnUnusedParameter(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_UNUSED_PARAMETER"] = .init(booleanLiteral: bool)
        return newDict
    }

    func gccWarnUnusedValue(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GCC_WARN_UNUSED_VALUE"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    /// Automatically generate an Info.plist file.
    func generateInfoplistFile(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GENERATE_INFOPLIST_FILE"] = .init(booleanLiteral: bool)
        return newDict
    }

    func generateMasterObjectFile(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GENERATE_MASTER_OBJECT_FILE"] = .init(booleanLiteral: bool)
        return newDict
    }

    func generatePkginfoFile(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["GENERATE_PKGINFO_FILE"] = .init(booleanLiteral: bool)
        return newDict
    }

    func generateProfilingCode(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
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

    func home(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["HOME"] = .string(value)
        return newDict
    }

    func ibcCompilationModeForIos(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_COMPILATION_MODE_FOR_IOS"] = .string(value)
        return newDict
    }

    func ibcCompilerAutoActivateCustomFonts(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_COMPILER_AUTO_ACTIVATE_CUSTOM_FONTS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func ibcCompilerUseNibkeyedarchiverForMacos(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_COMPILER_USE_NIBKEYEDARCHIVER_FOR_MACOS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func ibcErrors(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_ERRORS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func ibcFlattenNibs(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_FLATTEN_NIBS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func ibcModule(_ value: String = "$(PRODUCT_MODULE_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_MODULE"] = .string(value)
        return newDict
    }

    func ibcNotices(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_NOTICES"] = .init(booleanLiteral: bool)
        return newDict
    }

    func ibcOtherFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_OTHER_FLAGS"] = .array(values)
        return newDict
    }

    func ibcOverridingPluginsAndFrameworksDir(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_OVERRIDING_PLUGINS_AND_FRAMEWORKS_DIR"] = .string(path)
        return newDict
    }

    func ibcPlugins(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_PLUGINS"] = .array(values)
        return newDict
    }

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

    func ibcStripNibs(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_STRIP_NIBS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func ibcWarnings(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBC_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func ibscCompilationModeForIos(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_COMPILATION_MODE_FOR_IOS"] = .string(value)
        return newDict
    }

    func ibscCompilerAutoActivateCustomFonts(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_COMPILER_AUTO_ACTIVATE_CUSTOM_FONTS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func ibscCompilerUseNibkeyedarchiverForMacos(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_COMPILER_USE_NIBKEYEDARCHIVER_FOR_MACOS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func ibscErrors(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_ERRORS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func ibscFlattenNibs(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_FLATTEN_NIBS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func ibscModule(_ value: String = "$(PRODUCT_MODULE_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_MODULE"] = .string(value)
        return newDict
    }

    func ibscNotices(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_NOTICES"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func ibscStripNibs(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["IBSC_STRIP_NIBS"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func includedRecursiveSearchPathSubdirectories(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES"] = .array(values)
        return newDict
    }

    func includedSourceFileNames(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INCLUDED_SOURCE_FILE_NAMES"] = .array(values)
        return newDict
    }

    func infoplistExpandBuildSettings(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_EXPAND_BUILD_SETTINGS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func infoplistFile(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_FILE"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [CFBundleDisplayName](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledisplayname) key in the Info.plist file to the value of this build setting.
    func infoplistKeyCfbundledisplayname(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_CFBundleDisplayName"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [CLKComplicationPrincipalClass](https://developer.apple.com/documentation/bundleresources/information_property_list/clkcomplicationprincipalclass) key in the Info.plist file to the value of this build setting.
    func infoplistKeyClkcomplicationprincipalclass(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_CLKComplicationPrincipalClass"] = .string(value)
        return newDict
    }

    enum InfoplistKeyLsapplicationcategorytypeValue: String {
        case empty = ""
        case publicAppCategoryBooks = "public.app-category.books"
        case publicAppCategoryBusiness = "public.app-category.business"
        case publicAppCategoryDeveloperTools = "public.app-category.developer-tools"
        case publicAppCategoryEducation = "public.app-category.education"
        case publicAppCategoryEntertainment = "public.app-category.entertainment"
        case publicAppCategoryFinance = "public.app-category.finance"
        case publicAppCategoryFoodAndDrink = "public.app-category.food-and-drink"
        case publicAppCategoryGames = "public.app-category.games"
        case publicAppCategoryActionGames = "public.app-category.action-games"
        case publicAppCategoryAdventureGames = "public.app-category.adventure-games"
        case publicAppCategoryArcadeGames = "public.app-category.arcade-games"
        case publicAppCategoryBoardGames = "public.app-category.board-games"
        case publicAppCategoryCardGames = "public.app-category.card-games"
        case publicAppCategoryCasinoGames = "public.app-category.casino-games"
        case publicAppCategoryDiceGames = "public.app-category.dice-games"
        case publicAppCategoryEducationalGames = "public.app-category.educational-games"
        case publicAppCategoryFamilyGames = "public.app-category.family-games"
        case publicAppCategoryKidsGames = "public.app-category.kids-games"
        case publicAppCategoryMusicGames = "public.app-category.music-games"
        case publicAppCategoryPuzzleGames = "public.app-category.puzzle-games"
        case publicAppCategoryRacingGames = "public.app-category.racing-games"
        case publicAppCategoryRolePlayingGames = "public.app-category.role-playing-games"
        case publicAppCategorySimulationGames = "public.app-category.simulation-games"
        case publicAppCategorySportsGames = "public.app-category.sports-games"
        case publicAppCategoryStrategyGames = "public.app-category.strategy-games"
        case publicAppCategoryTriviaGames = "public.app-category.trivia-games"
        case publicAppCategoryWordGames = "public.app-category.word-games"
        case publicAppCategoryGraphicsDesign = "public.app-category.graphics-design"
        case publicAppCategoryHealthcareFitness = "public.app-category.healthcare-fitness"
        case publicAppCategoryLifestyle = "public.app-category.lifestyle"
        case publicAppCategoryMagazinesAndNewspapers = "public.app-category.magazines-and-newspapers"
        case publicAppCategoryMedical = "public.app-category.medical"
        case publicAppCategoryMusic = "public.app-category.music"
        case publicAppCategoryNavigation = "public.app-category.navigation"
        case publicAppCategoryNews = "public.app-category.news"
        case publicAppCategoryPhotography = "public.app-category.photography"
        case publicAppCategoryProductivity = "public.app-category.productivity"
        case publicAppCategoryReference = "public.app-category.reference"
        case publicAppCategoryShopping = "public.app-category.shopping"
        case publicAppCategorySocialNetworking = "public.app-category.social-networking"
        case publicAppCategorySports = "public.app-category.sports"
        case publicAppCategoryTravel = "public.app-category.travel"
        case publicAppCategoryUtilities = "public.app-category.utilities"
        case publicAppCategoryVideo = "public.app-category.video"
        case publicAppCategoryWeather = "public.app-category.weather"
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [LSApplicationCategoryType](https://developer.apple.com/documentation/bundleresources/information_property_list/lsapplicationcategorytype) key in the Info.plist file to the value of this build setting.
    func infoplistKeyLsapplicationcategorytype(_ value: InfoplistKeyLsapplicationcategorytypeValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_LSApplicationCategoryType"] = .string(value.rawValue)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [LSBackgroundOnly](https://developer.apple.com/documentation/bundleresources/information_property_list/lsbackgroundonly) key in the Info.plist file to the value of this build setting.
    func infoplistKeyLsbackgroundonly(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_LSBackgroundOnly"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [LSSupportsOpeningDocumentsInPlace](https://developer.apple.com/documentation/bundleresources/information_property_list/lssupportsopeningdocumentsinplace) key in the Info.plist file to the value of this build setting.
    func infoplistKeyLssupportsopeningdocumentsinplace(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_LSSupportsOpeningDocumentsInPlace"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [LSUIElement](https://developer.apple.com/documentation/bundleresources/information_property_list/lsuielement) key in the Info.plist file to the value of this build setting.
    func infoplistKeyLsuielement(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_LSUIElement"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the MetalCaptureEnabled key in the Info.plist file to the value of this build setting.
    func infoplistKeyMetalcaptureenabled(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_MetalCaptureEnabled"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NFCReaderUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nfcreaderusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNfcreaderusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NFCReaderUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSAppleEventsUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsappleeventsusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsappleeventsusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSAppleEventsUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSAppleMusicUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapplemusicusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsapplemusicusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSAppleMusicUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSBluetoothAlwaysUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsbluetoothalwaysusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsbluetoothalwaysusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSBluetoothAlwaysUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSBluetoothPeripheralUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsbluetoothperipheralusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsbluetoothperipheralusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSBluetoothPeripheralUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the NSBluetoothWhileInUseUsageDescription key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsbluetoothwhileinuseusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSBluetoothWhileInUseUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSCalendarsUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nscalendarsusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNscalendarsusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSCalendarsUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSCameraUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nscamerausagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNscamerausagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSCameraUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSContactsUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nscontactsusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNscontactsusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSContactsUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSDesktopFolderUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsdesktopfolderusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsdesktopfolderusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSDesktopFolderUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSDocumentsFolderUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsdocumentsfolderusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsdocumentsfolderusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSDocumentsFolderUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSDownloadsFolderUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsdownloadsfolderusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsdownloadsfolderusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSDownloadsFolderUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSFaceIDUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsfaceidusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsfaceidusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSFaceIDUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSFallDetectionUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsfalldetectionusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsfalldetectionusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSFallDetectionUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSFileProviderDomainUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsfileproviderdomainusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsfileproviderdomainusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSFileProviderDomainUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the NSFileProviderPresenceUsageDescription key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsfileproviderpresenceusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSFileProviderPresenceUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the NSFocusStatusUsageDescription key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsfocusstatususagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSFocusStatusUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSGKFriendListUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsgkfriendlistusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsgkfriendlistusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSGKFriendListUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSHealthClinicalHealthRecordsShareUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nshealthclinicalhealthrecordsshareusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNshealthclinicalhealthrecordsshareusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSHealthClinicalHealthRecordsShareUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSHealthShareUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nshealthshareusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNshealthshareusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSHealthShareUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSHealthUpdateUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nshealthupdateusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNshealthupdateusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSHealthUpdateUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSHomeKitUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nshomekitusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNshomekitusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSHomeKitUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSHumanReadableCopyright](https://developer.apple.com/documentation/bundleresources/information_property_list/nshumanreadablecopyright) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNshumanreadablecopyright(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSHumanReadableCopyright"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSLocalNetworkUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocalnetworkusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNslocalnetworkusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSLocalNetworkUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSLocationAlwaysAndWhenInUseUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationalwaysandwheninuseusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNslocationalwaysandwheninuseusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSLocationAlwaysAndWhenInUseUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSLocationAlwaysUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationalwaysusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNslocationalwaysusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSLocationAlwaysUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSLocationTemporaryUsageDescriptionDictionary](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationtemporaryusagedescriptiondictionary) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNslocationtemporaryusagedescriptiondictionary(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSLocationTemporaryUsageDescriptionDictionary"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSLocationUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNslocationusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSLocationUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSLocationWhenInUseUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationwheninuseusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNslocationwheninuseusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSLocationWhenInUseUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSMainNibFile](https://developer.apple.com/documentation/bundleresources/information_property_list/nsmainnibfile) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsmainnibfile(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSMainNibFile"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSMainStoryboardFile](https://developer.apple.com/documentation/bundleresources/information_property_list/nsmainstoryboardfile) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsmainstoryboardfile(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSMainStoryboardFile"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSMicrophoneUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsmicrophoneusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsmicrophoneusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSMicrophoneUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSMotionUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsmotionusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsmotionusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSMotionUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSNearbyInteractionAllowOnceUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsnearbyinteractionallowonceusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsnearbyinteractionallowonceusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSNearbyInteractionAllowOnceUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSNearbyInteractionUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsnearbyinteractionusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsnearbyinteractionusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSNearbyInteractionUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSNetworkVolumesUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsnetworkvolumesusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsnetworkvolumesusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSNetworkVolumesUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSPhotoLibraryAddUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsphotolibraryaddusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsphotolibraryaddusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSPhotoLibraryAddUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSPhotoLibraryUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsphotolibraryusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsphotolibraryusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSPhotoLibraryUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSPrincipalClass](https://developer.apple.com/documentation/bundleresources/information_property_list/nsprincipalclass) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsprincipalclass(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSPrincipalClass"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSRemindersUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsremindersusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsremindersusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSRemindersUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSRemovableVolumesUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsremovablevolumesusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsremovablevolumesusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSRemovableVolumesUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSSensorKitPrivacyPolicyURL](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitprivacypolicyurl) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNssensorkitprivacypolicyurl(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSSensorKitPrivacyPolicyURL"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSSensorKitUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNssensorkitusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSSensorKitUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSSiriUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nssiriusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNssiriusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSSiriUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSSpeechRecognitionUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsspeechrecognitionusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsspeechrecognitionusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSSpeechRecognitionUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSSystemAdministrationUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nssystemadministrationusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNssystemadministrationusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSSystemAdministrationUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the NSSystemExtensionUsageDescription key in the Info.plist file to the value of this build setting.
    func infoplistKeyNssystemextensionusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSSystemExtensionUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSUserTrackingUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsusertrackingusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsusertrackingusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSUserTrackingUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSVideoSubscriberAccountUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsvideosubscriberaccountusagedescription) key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsvideosubscriberaccountusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSVideoSubscriberAccountUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the NSVoIPUsageDescription key in the Info.plist file to the value of this build setting.
    func infoplistKeyNsvoipusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_NSVoIPUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the OSBundleUsageDescription key in the Info.plist file to the value of this build setting.
    func infoplistKeyOsbundleusagedescription(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_OSBundleUsageDescription"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIApplicationSceneManifest](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest) key in the Info.plist file to an entry suitable for a multi-window application.
    func infoplistKeyUiapplicationscenemanifestGeneration(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_UIApplicationSceneManifest_Generation"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIApplicationSupportsIndirectInputEvents](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationsupportsindirectinputevents) key in the Info.plist file to the value of this build setting.
    func infoplistKeyUiapplicationsupportsindirectinputevents(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_UIApplicationSupportsIndirectInputEvents"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UILaunchScreen](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen) key in the Info.plist file to an empty dictionary.
    func infoplistKeyUilaunchscreenGeneration(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_UILaunchScreen_Generation"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UILaunchStoryboardName](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboardname) key in the Info.plist file to the value of this build setting.
    func infoplistKeyUilaunchstoryboardname(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_UILaunchStoryboardName"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIMainStoryboardFile](https://developer.apple.com/documentation/bundleresources/information_property_list/uimainstoryboardfile) key in the Info.plist file to the value of this build setting.
    func infoplistKeyUimainstoryboardfile(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_UIMainStoryboardFile"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIRequiredDeviceCapabilities](https://developer.apple.com/documentation/bundleresources/information_property_list/uirequireddevicecapabilities) key in the Info.plist file to the value of this build setting.
    func infoplistKeyUirequireddevicecapabilities(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_UIRequiredDeviceCapabilities"] = .array(values)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIRequiresFullScreen](https://developer.apple.com/documentation/bundleresources/information_property_list/uirequiresfullscreen) key in the Info.plist file to the value of this build setting.
    func infoplistKeyUirequiresfullscreen(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_UIRequiresFullScreen"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIStatusBarHidden](https://developer.apple.com/documentation/bundleresources/information_property_list/uistatusbarhidden) key in the Info.plist file to the value of this build setting.
    func infoplistKeyUistatusbarhidden(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_UIStatusBarHidden"] = .init(booleanLiteral: bool)
        return newDict
    }

    enum InfoplistKeyUistatusbarstyleValue: String {
        case Default = "UIStatusBarStyleDefault"
        case lightContent = "UIStatusBarStyleLightContent"
        case darkContent = "UIStatusBarStyleDarkContent"
        case blackTranslucent = "UIStatusBarStyleBlackTranslucent"
        case blackOpaque = "UIStatusBarStyleBlackOpaque"
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIStatusBarStyle](https://developer.apple.com/documentation/bundleresources/information_property_list/uistatusbarstyle) key in the Info.plist file to the value of this build setting.
    func infoplistKeyUistatusbarstyle(_ value: InfoplistKeyUistatusbarstyleValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_UIStatusBarStyle"] = .string(value.rawValue)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UISupportedInterfaceOrientations](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportedinterfaceorientations) key in the Info.plist file to the value of this build setting.
    func infoplistKeyUisupportedinterfaceorientations(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_UISupportedInterfaceOrientations"] = .array(values)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UISupportedInterfaceOrientations~iPad](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportedinterfaceorientations) key in the Info.plist file to the value of this build setting.
    func infoplistKeyUisupportedinterfaceorientationsIpad(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_UISupportedInterfaceOrientations_iPad"] = .array(values)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UISupportedInterfaceOrientations~iPhone](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportedinterfaceorientations) key in the Info.plist file to the value of this build setting.
    func infoplistKeyUisupportedinterfaceorientationsIphone(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_UISupportedInterfaceOrientations_iPhone"] = .array(values)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UISupportsDocumentBrowser](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportsdocumentbrowser) key in the Info.plist file to the value of this build setting.
    func infoplistKeyUisupportsdocumentbrowser(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_UISupportsDocumentBrowser"] = .init(booleanLiteral: bool)
        return newDict
    }

    enum InfoplistKeyUiuserinterfacestyleValue: String {
        case automatic = "Automatic"
        case light = "Light"
        case dark = "Dark"
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIUserInterfaceStyle](https://developer.apple.com/documentation/bundleresources/information_property_list/uiuserinterfacestyle) key in the Info.plist file to the value of this build setting.
    func infoplistKeyUiuserinterfacestyle(_ value: InfoplistKeyUiuserinterfacestyleValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_UIUserInterfaceStyle"] = .string(value.rawValue)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [WKCompanionAppBundleIdentifier](https://developer.apple.com/documentation/bundleresources/information_property_list/wkcompanionappbundleidentifier) key in the Info.plist file to the value of this build setting.
    func infoplistKeyWkcompanionappbundleidentifier(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_WKCompanionAppBundleIdentifier"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [WKExtensionDelegateClassName](https://developer.apple.com/documentation/bundleresources/information_property_list/wkextensiondelegateclassname) key in the Info.plist file to the value of this build setting.
    func infoplistKeyWkextensiondelegateclassname(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_WKExtensionDelegateClassName"] = .string(value)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [WKRunsIndependentlyOfCompanionApp](https://developer.apple.com/documentation/bundleresources/information_property_list/wkrunsindependentlyofcompanionapp) key in the Info.plist file to the value of this build setting.
    func infoplistKeyWkrunsindependentlyofcompanionapp(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_WKRunsIndependentlyOfCompanionApp"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [WKWatchOnly](https://developer.apple.com/documentation/bundleresources/information_property_list/wkwatchonly) key in the Info.plist file to the value of this build setting.
    func infoplistKeyWkwatchonly(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_KEY_WKWatchOnly"] = .init(booleanLiteral: bool)
        return newDict
    }

    func infoplistOtherPreprocessorFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_OTHER_PREPROCESSOR_FLAGS"] = .array(values)
        return newDict
    }

    enum InfoplistOutputFormatValue: String {
        case sameAsInput = "same-as-input"
        case XML = "XML"
        case binary = "binary"
    }

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

    func infoplistPrefixHeader(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_PREFIX_HEADER"] = .string(value)
        return newDict
    }

    func infoplistPreprocess(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INFOPLIST_PREPROCESS"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func initRoutine(_ value: String) -> ProjectDescription.SettingsDictionary {
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

    /// Specifies whether the target’s Run Script build phases are executed in `installhdr` builds. See `ACTION` for details on `installhdr` builds.
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

    func installGroup(_ value: String = "$(GROUP)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTALL_GROUP"] = .string(value)
        return newDict
    }

    func installModeFlag(_ value: String = "u+w,go-w,a+rX") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTALL_MODE_FLAG"] = .string(value)
        return newDict
    }

    func installOwner(_ value: String = "$(USER)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INSTALL_OWNER"] = .string(value)
        return newDict
    }

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

    /// The Source-code language to use for generated Intent class.  By default "Automatic" will analyze your project to determine the correct language.  Adjust this setting to explicitly select "Swift" or "Objective-C".
    func intentsCodegenLanguage(_ value: IntentsCodegenLanguageValue = .automatic) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["INTENTS_CODEGEN_LANGUAGE"] = .string(value.rawValue)
        return newDict
    }

    func infoplistpath(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["InfoPlistPath"] = .string(value)
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

    func ldDylibAllowableClients(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_DYLIB_ALLOWABLE_CLIENTS"] = .array(values)
        return newDict
    }

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

    func ldEntitlementsSectionDer(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_ENTITLEMENTS_SECTION_DER"] = .string(value)
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

    func ldMapFilePath(_ path: Path = "$(TARGET_TEMP_DIR)/$(PRODUCT_NAME)-LinkMap-$(CURRENT_VARIANT)-$(CURRENT_ARCH).txt") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_MAP_FILE_PATH"] = .string(path)
        return newDict
    }

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

    func ldQuoteLinkerArgumentsForCompilerDriver(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_QUOTE_LINKER_ARGUMENTS_FOR_COMPILER_DRIVER"] = .init(booleanLiteral: bool)
        return newDict
    }

    func ldRunpathSearchPaths(_ paths: [Path] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LD_RUNPATH_SEARCH_PATHS"] = .array(paths)
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

    func lexflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LEXFLAGS"] = .array(values)
        return newDict
    }

    func lexCaseInsensitiveScanner(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LEX_CASE_INSENSITIVE_SCANNER"] = .init(booleanLiteral: bool)
        return newDict
    }

    func lexInsertLineDirectives(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LEX_INSERT_LINE_DIRECTIVES"] = .init(booleanLiteral: bool)
        return newDict
    }

    func lexSuppressDefaultRule(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LEX_SUPPRESS_DEFAULT_RULE"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func librarySearchPaths(_ paths: [Path]) -> ProjectDescription.SettingsDictionary {
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

    func lmBinaryPath(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LM_BINARY_PATH"] = .string(value)
        return newDict
    }

    func lmDependencyFiles(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LM_DEPENDENCY_FILES"] = .array(values)
        return newDict
    }

    func lmEnableLinkGeneration(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LM_ENABLE_LINK_GENERATION"] = .init(booleanLiteral: bool)
        return newDict
    }

    func lmStringsdataFiles(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LM_STRINGSDATA_FILES"] = .array(values)
        return newDict
    }

    func localizableContentDir(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LOCALIZABLE_CONTENT_DIR"] = .string(path)
        return newDict
    }

    /// When enabled, localizable content in this target/project can be exported.
    func localizationExportSupported(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["LOCALIZATION_EXPORT_SUPPORTED"] = .init(booleanLiteral: bool)
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

    /// When enabled, literal strings in SwiftUI will be extracted during localization export. This will only extract string literals in `Text()` initializers, unless `SWIFT_EMIT_LOC_STRINGS` is also enabled.
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
        case mhObject = "mh_object"
    }

    func machOType(_ value: MachOTypeValue) -> ProjectDescription.SettingsDictionary {
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

    func mapcNoWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MAPC_NO_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func modulemapFile(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MODULEMAP_FILE"] = .string(value)
        return newDict
    }

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

    func moduleName(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MODULE_NAME"] = .string(value)
        return newDict
    }

    func moduleStart(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MODULE_START"] = .string(value)
        return newDict
    }

    func moduleStop(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MODULE_STOP"] = .string(value)
        return newDict
    }

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

    func momcNoDeleteRuleWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MOMC_NO_DELETE_RULE_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func momcNoInverseRelationshipWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MOMC_NO_INVERSE_RELATIONSHIP_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func momcNoMaxPropertyCountWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MOMC_NO_MAX_PROPERTY_COUNT_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func mtlCompilerFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_COMPILER_FLAGS"] = .array(values)
        return newDict
    }

    enum MtlEnableDebugInfoValue: String {
        case yes = "YES"
        case includeSource = "INCLUDE_SOURCE"
        case no = "NO"
    }

    func mtlEnableDebugInfo(_ value: MtlEnableDebugInfoValue = .no) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_ENABLE_DEBUG_INFO"] = .string(value.rawValue)
        return newDict
    }

    func mtlEnableIndexStore(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_ENABLE_INDEX_STORE"] = .init(booleanLiteral: bool)
        return newDict
    }

    enum MtlEnableModulesValue: String {
        case yes = "YES"
        case stdlib = "STDLIB"
        case no = "NO"
    }

    func mtlEnableModules(_ value: MtlEnableModulesValue = .stdlib) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_ENABLE_MODULES"] = .string(value.rawValue)
        return newDict
    }

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

    enum MtlLanguageRevisionValue: String {
        case usedeploymenttarget = "UseDeploymentTarget"
        case iosmetal10 = "iOSMetal10"
        case metal11 = "Metal11"
        case metal12 = "Metal12"
        case metal20 = "Metal20"
        case metal21 = "Metal21"
        case metal22 = "Metal22"
        case metal23 = "Metal23"
        case metal24 = "Metal24"
        case metal30 = "Metal30"
    }

    func mtlLanguageRevision(_ value: MtlLanguageRevisionValue = .usedeploymenttarget) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_LANGUAGE_REVISION"] = .string(value.rawValue)
        return newDict
    }

    func mtlLanguageRevisionDialect(_ value: String = "$(MTL_LANGUAGE_REVISION_dialect_$(PLATFORM_NAME):default=ios)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_LANGUAGE_REVISION_dialect"] = .string(value)
        return newDict
    }

    func mtlLanguageRevisionDialectMacosx(_ value: String = "macos") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_LANGUAGE_REVISION_dialect_macosx"] = .string(value)
        return newDict
    }

    enum MtlLanguageRevisionOptgenValue: String {
        case usedeploymenttarget = "UseDeploymentTarget"
        case iosmetal10 = "iOSMetal10"
        case metal11 = "Metal11"
        case metal12 = "Metal12"
        case metal20 = "Metal20"
        case metal21 = "Metal21"
        case metal22 = "Metal22"
        case metal23 = "Metal23"
        case metal24 = "Metal24"
    }

    func mtlLanguageRevisionOptgen(_ value: MtlLanguageRevisionOptgenValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_LANGUAGE_REVISION_optgen"] = .string(value.rawValue)
        return newDict
    }

    enum MtlOptimizationLevelValue: String {
        case Default = "default"
        case s = "s"
    }

    func mtlOptimizationLevel(_ value: MtlOptimizationLevelValue = .Default) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_OPTIMIZATION_LEVEL"] = .string(value.rawValue)
        return newDict
    }

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

    func mtlTreatWarningsAsErrors(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["MTL_TREAT_WARNINGS_AS_ERRORS"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    /// Partially identifies the directory into which variant object files are placed. The complete specification is computed using the variants of this build setting.
    func objectFileDir(_ path: Path = "$(TEMP_DIR)/Objects") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OBJECT_FILE_DIR"] = .string(path)
        return newDict
    }

    func objroot(_ path: Path = "$(SYMROOT)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OBJROOT"] = .string(path)
        return newDict
    }

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

    func openclArchs(_ value: String = "i386 x86_64 gpu_32 gpu_64") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_ARCHS"] = .string(value)
        return newDict
    }

    func openclAutoVectorizeEnable(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_AUTO_VECTORIZE_ENABLE"] = .init(booleanLiteral: bool)
        return newDict
    }

    enum OpenclCompilerVersionValue: String {
        case cl12 = "CL1.2"
        case cl11 = "CL1.1"
    }

    func openclCompilerVersion(_ value: OpenclCompilerVersionValue = .cl11) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_COMPILER_VERSION"] = .string(value.rawValue)
        return newDict
    }

    func openclDenormsAreZero(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_DENORMS_ARE_ZERO"] = .init(booleanLiteral: bool)
        return newDict
    }

    func openclDoubleAsSingle(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_DOUBLE_AS_SINGLE"] = .init(booleanLiteral: bool)
        return newDict
    }

    func openclFastRelaxedMath(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_FAST_RELAXED_MATH"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func openclOptimizationLevel(_ value: OpenclOptimizationLevelValue = .s) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_OPTIMIZATION_LEVEL"] = .string(value.rawValue)
        return newDict
    }

    func openclOtherBcFlags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OPENCL_OTHER_BC_FLAGS"] = .array(values)
        return newDict
    }

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

    func orderFile(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["ORDER_FILE"] = .string(path)
        return newDict
    }

    func osac(_ path: Path = "/usr/bin/osacompile") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OSAC"] = .string(path)
        return newDict
    }

    func osacompileExecuteOnly(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OSACOMPILE_EXECUTE_ONLY"] = .init(booleanLiteral: bool)
        return newDict
    }

    func otherCflags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_CFLAGS"] = .array(values)
        return newDict
    }

    func otherCodeSignFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_CODE_SIGN_FLAGS"] = .array(values)
        return newDict
    }

    func otherCplusplusflags(_ values: [String] = ["$(OTHER_CFLAGS)"]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_CPLUSPLUSFLAGS"] = .array(values)
        return newDict
    }

    /// A list of additional flags to pass to DocC
    func otherDoccFlags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_DOCC_FLAGS"] = .array(values)
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

    func otherLibtoolflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_LIBTOOLFLAGS"] = .array(values)
        return newDict
    }

    func otherMigflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["OTHER_MIGFLAGS"] = .array(values)
        return newDict
    }

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
        case openstep = "openstep"
        case none = "none"
        case xml = "xml"
        case binary = "binary"
    }

    func outputformat(_ value: OutputformatValue = .none) -> ProjectDescription.SettingsDictionary {
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
        case sameasinput = "SameAsInput"
        case XML = "XML"
        case binary = "binary"
        case Binary = "Binary"
    }

    func plistFileOutputFormat(_ value: PlistFileOutputFormatValue) -> ProjectDescription.SettingsDictionary {
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

    func prelinkFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRELINK_FLAGS"] = .array(values)
        return newDict
    }

    func prelinkLibs(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRELINK_LIBS"] = .array(values)
        return newDict
    }

    func preserveDeadCodeInitsAndTerms(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRESERVE_DEAD_CODE_INITS_AND_TERMS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func privateHeadersFolderPath(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRIVATE_HEADERS_FOLDER_PATH"] = .string(value)
        return newDict
    }

    /// A string that uniquely identifies the bundle. The string should be in reverse DNS format using only alphanumeric characters (`A-Z`, `a-z`, `0-9`), the dot (`.`), and the hyphen (`-`). This value is used as the `CFBundleIdentifier` in the `Info.plist` of the built bundle.
    func productBundleIdentifier(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRODUCT_BUNDLE_IDENTIFIER"] = .string(value)
        return newDict
    }

    func productModuleName(_ value: String = "$(PRODUCT_NAME:c99extidentifier)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PRODUCT_MODULE_NAME"] = .string(value)
        return newDict
    }

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

    func provisioningProfile(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PROVISIONING_PROFILE"] = .string(value)
        return newDict
    }

    func provisioningProfileDestinationPath(_ value: String = "$(TARGET_BUILD_DIR)/$(CONTENTS_FOLDER_PATH)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PROVISIONING_PROFILE_DESTINATION_PATH"] = .string(value)
        return newDict
    }

    func provisioningProfileSpecifier(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PROVISIONING_PROFILE_SPECIFIER"] = .string(value)
        return newDict
    }

    func publicHeadersFolderPath(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PUBLIC_HEADERS_FOLDER_PATH"] = .string(value)
        return newDict
    }

    func pwd(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["PWD"] = .string(value)
        return newDict
    }

    enum RcprojectCodegenLanguageValue: String {
        case swift = "Swift"
        case automatic = "Automatic"
        case none = "None"
    }

    /// The Source-code language to use for generated RC objects.  By default Xcode will generate Swift types that represent the objects in your scene.  Adjust this setting to explicitly select "Swift", or select "None" to disable RC object generation.
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

    enum RcprojectEnableWarningsValue: String {
        case yes = "Yes"
        case no = "No"
    }

    func rcprojectEnableWarnings(_ value: RcprojectEnableWarningsValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RCPROJECT_ENABLE_WARNINGS"] = .string(value.rawValue)
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

    func reexportedLibraryNames(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REEXPORTED_LIBRARY_NAMES"] = .array(values)
        return newDict
    }

    func reexportedLibraryPaths(_ paths: [Path]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REEXPORTED_LIBRARY_PATHS"] = .array(paths)
        return newDict
    }

    func removeCvsFromResources(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REMOVE_CVS_FROM_RESOURCES"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func removeHgFromResources(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REMOVE_HG_FROM_RESOURCES"] = .init(booleanLiteral: bool)
        return newDict
    }

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

    func rezPrefixFile(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_PREFIX_FILE"] = .string(value)
        return newDict
    }

    func rezPreprocessorDefinitions(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_PREPROCESSOR_DEFINITIONS"] = .array(values)
        return newDict
    }

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

    func rezResolveAliases(_ value: RezResolveAliasesValue = .always) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_RESOLVE_ALIASES"] = .string(value.rawValue)
        return newDict
    }

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

    func rezScriptType(_ value: RezScriptTypeValue = .roman) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_SCRIPT_TYPE"] = .string(value.rawValue)
        return newDict
    }

    func rezSearchPaths(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_SEARCH_PATHS"] = .array(values)
        return newDict
    }

    func rezShowDebugOutput(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_SHOW_DEBUG_OUTPUT"] = .init(booleanLiteral: bool)
        return newDict
    }

    func rezSuppressRedeclaredResourceTypeWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["REZ_SUPPRESS_REDECLARED_RESOURCE_TYPE_WARNINGS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func runClangStaticAnalyzer(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RUN_CLANG_STATIC_ANALYZER"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// Also build documentation as part of the 'Build' action.
    func runDocumentationCompiler(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["RUN_DOCUMENTATION_COMPILER"] = .init(booleanLiteral: bool)
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

    func sdkdbToSymgraphExec(_ path: Path = "$(DEVELOPER_DIR)/../SharedFrameworks/CoreDocumentation.framework/Resources/sdkdb_to_symgraph") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SDKDB_TO_SYMGRAPH_EXEC"] = .string(path)
        return newDict
    }

    func sdkroot(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SDKROOT"] = .string(path)
        return newDict
    }

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

    func sharedPrecompsDir(_ value: String = "$(OBJROOT)/SharedPrecompiledHeaders") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SHARED_PRECOMPS_DIR"] = .string(value)
        return newDict
    }

    func sharedSupportFolderPath(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SHARED_SUPPORT_FOLDER_PATH"] = .string(path)
        return newDict
    }

    func shell(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SHELL"] = .string(value)
        return newDict
    }

    func skipInstall(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SKIP_INSTALL"] = .init(booleanLiteral: bool)
        return newDict
    }

    enum SkyboxEnableWarningsValue: String {
        case yes = "Yes"
        case no = "No"
    }

    func skyboxEnableWarnings(_ value: SkyboxEnableWarningsValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SKYBOX_ENABLE_WARNINGS"] = .string(value.rawValue)
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

    /// The location to write .stringsdata files to when SWIFT_EMIT_LOC_STRINGS is enabled.
    func stringsdataDir(_ value: String = "$(OBJECT_FILE_DIR_$(CURRENT_VARIANT))/$(CURRENT_ARCH)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRINGSDATA_DIR"] = .string(value)
        return newDict
    }

    /// The location to traverse and collect .stringsdata files from when exporting for localization.
    func stringsdataRoot(_ value: String = "$(TARGET_TEMP_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRINGSDATA_ROOT"] = .string(value)
        return newDict
    }

    func stringsFileInfoplistRename(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRINGS_FILE_INFOPLIST_RENAME"] = .init(booleanLiteral: bool)
        return newDict
    }

    func stringsFileInputEncoding(_ value: String = "$(InputFileTextEncoding)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRINGS_FILE_INPUT_ENCODING"] = .string(value)
        return newDict
    }

    func stringsFileOutputEncoding(_ value: String = "UTF-16") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRINGS_FILE_OUTPUT_ENCODING"] = .string(value)
        return newDict
    }

    func stringsFileOutputFilename(_ value: String = "$(InputFileName)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRINGS_FILE_OUTPUT_FILENAME"] = .string(value)
        return newDict
    }

    func stripflags(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRIPFLAGS"] = .array(values)
        return newDict
    }

    func stripBitcodeFromCopiedFiles(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRIP_BITCODE_FROM_COPIED_FILES"] = .init(booleanLiteral: bool)
        return newDict
    }

    func stripInstalledProduct(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
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

    func stripStyle(_ value: StripStyleValue) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRIP_STYLE"] = .string(value.rawValue)
        return newDict
    }

    func stripSwiftSymbols(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["STRIP_SWIFT_SYMBOLS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func supportedPlatforms(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SUPPORTED_PLATFORMS"] = .array(values)
        return newDict
    }

    /// Enable to indicate that the target supports `Text-Based InstallAPI`, which will enable its generation during `install` builds.
    func supportsTextBasedApi(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SUPPORTS_TEXT_BASED_API"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// A list of compilation conditions to enable for conditional compilation expressions.
    func swiftActiveCompilationConditions(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
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

    /// When enabled, the Swift compiler will be used to extract Swift string literal and interpolation `LocalizedStringKey` and `LocalizationKey` types during localization export.
    func swiftEmitLocStrings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_EMIT_LOC_STRINGS"] = .init(booleanLiteral: bool)
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

    /// Enable the use of forward slash regular-expression literal syntax (-enable-bare-slash-regex)
    func swiftEnableBareSlashRegex(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_ENABLE_BARE_SLASH_REGEX"] = .init(booleanLiteral: bool)
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

    /// For frameworks, install the Swift module so it can be accessed from Swift code using the framework.
    func swiftInstallModule(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_INSTALL_MODULE"] = .init(booleanLiteral: bool)
        return newDict
    }

    /// For frameworks, install the Objective-C compatibility header describing bridged Swift classes into the `PUBLIC_HEADERS_FOLDER_PATH` so they may be accessed from Objective-C code using the framework. Defaults to `YES`.
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

    func swiftLinkObjcRuntime(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_LINK_OBJC_RUNTIME"] = .init(booleanLiteral: bool)
        return newDict
    }

    func swiftMigrateCode(_ bool: Bool) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_MIGRATE_CODE"] = .init(booleanLiteral: bool)
        return newDict
    }

    func swiftModuleAliases(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_MODULE_ALIASES"] = .array(values)
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

    enum SwiftStrictConcurrencyValue: String {
        case minimal = "minimal"
        case targeted = "targeted"
        case complete = "complete"
    }

    func swiftStrictConcurrency(_ value: SwiftStrictConcurrencyValue = .minimal) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_STRICT_CONCURRENCY"] = .string(value.rawValue)
        return newDict
    }

    /// Don't emit any warnings.
    func swiftSuppressWarnings(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SWIFT_SUPPRESS_WARNINGS"] = .init(booleanLiteral: bool)
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

    /// The language version used to compile the target's Swift code.
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

    func symbolGraphExtractorExec(_ path: Path = "swift-symbolgraph-extract") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYMBOL_GRAPH_EXTRACTOR_EXEC"] = .string(path)
        return newDict
    }

    func symbolGraphExtractorModuleCachePath(_ path: Path = "$(MODULE_CACHE_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYMBOL_GRAPH_EXTRACTOR_MODULE_CACHE_PATH"] = .string(path)
        return newDict
    }

    /// The name of the main module to extract.
    func symbolGraphExtractorModuleName(_ value: String = "$(PRODUCT_MODULE_NAME)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYMBOL_GRAPH_EXTRACTOR_MODULE_NAME"] = .string(value)
        return newDict
    }

    /// The symbol graph JSON output directory.
    func symbolGraphExtractorOutputDir(_ value: String = "$(TARGET_TEMP_DIR)/symbol-graph/swift/$(SYMBOL_GRAPH_EXTRACTOR_TARGET_TRIPLE)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYMBOL_GRAPH_EXTRACTOR_OUTPUT_DIR"] = .string(value)
        return newDict
    }

    func symbolGraphExtractorSdk(_ value: String = "$(SDKROOT)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYMBOL_GRAPH_EXTRACTOR_SDK"] = .string(value)
        return newDict
    }

    func symbolGraphExtractorSearchPaths(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYMBOL_GRAPH_EXTRACTOR_SEARCH_PATHS"] = .array(values)
        return newDict
    }

    func symbolGraphExtractorSwiftVersion(_ value: String = "$(SWIFT_VERSION)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYMBOL_GRAPH_EXTRACTOR_SWIFT_VERSION"] = .string(value)
        return newDict
    }

    func symbolGraphExtractorTargetTriple(_ value: String = "$(SWIFT_TARGET_TRIPLE)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYMBOL_GRAPH_EXTRACTOR_TARGET_TRIPLE"] = .string(value)
        return newDict
    }

    func symbolHeader(_ path: Path = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYMBOL_HEADER"] = .string(path)
        return newDict
    }

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

    func systemFrameworkSearchPaths(_ paths: [Path]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["SYSTEM_FRAMEWORK_SEARCH_PATHS"] = .array(paths)
        return newDict
    }

    func systemHeaderSearchPaths(_ paths: [Path]) -> ProjectDescription.SettingsDictionary {
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

    /// Include project-level headers when building `Text-Based InstallAPI`.
    func tapiEnableProjectHeaders(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_ENABLE_PROJECT_HEADERS"] = .init(booleanLiteral: bool)
        return newDict
    }

    func tapiEnableVerificationMode(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_ENABLE_VERIFICATION_MODE"] = .init(booleanLiteral: bool)
        return newDict
    }

    func tapiExec(_ path: Path = "tapi") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_EXEC"] = .string(path)
        return newDict
    }

    func tapiExtractApiEnableModules(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_EXTRACT_API_ENABLE_MODULES"] = .init(booleanLiteral: bool)
        return newDict
    }

    func tapiExtractApiEnableObjcArc(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_EXTRACT_API_ENABLE_OBJC_ARC"] = .init(booleanLiteral: bool)
        return newDict
    }

    func tapiExtractApiModuleCachePath(_ path: Path = "$(MODULE_CACHE_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_EXTRACT_API_MODULE_CACHE_PATH"] = .string(path)
        return newDict
    }

    func tapiExtractApiOutputDir(_ path: Path = "$(TARGET_TEMP_DIR)/symbol-graph/clang/$(TAPI_EXTRACT_API_TARGET_TRIPLE)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_EXTRACT_API_OUTPUT_DIR"] = .string(path)
        return newDict
    }

    func tapiExtractApiSdkdbOutputPath(_ path: Path = "$(TAPI_EXTRACT_API_OUTPUT_DIR)/$(PRODUCT_NAME).sdkdb") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_EXTRACT_API_SDKDB_OUTPUT_PATH"] = .string(path)
        return newDict
    }

    func tapiExtractApiSearchPaths(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_EXTRACT_API_SEARCH_PATHS"] = .array(values)
        return newDict
    }

    func tapiExtractApiSystemRoot(_ path: Path = "${SDKROOT}") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_EXTRACT_API_SYSTEM_ROOT"] = .string(path)
        return newDict
    }

    func tapiExtractApiTargetTriple(_ value: String = "$(CURRENT_ARCH)-$(LLVM_TARGET_TRIPLE_VENDOR)-$(LLVM_TARGET_TRIPLE_OS_VERSION)$(LLVM_TARGET_TRIPLE_SUFFIX)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TAPI_EXTRACT_API_TARGET_TRIPLE"] = .string(value)
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

    func targetBuildDir(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TARGET_BUILD_DIR"] = .string(value)
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

    func targetTempDir(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TARGET_TEMP_DIR"] = .string(value)
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

    func tempFileDir(_ path: Path = "$(TEMP_DIR)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TEMP_FILE_DIR"] = .string(path)
        return newDict
    }

    func tempRoot(_ path: Path = "$(OBJROOT)") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TEMP_ROOT"] = .string(path)
        return newDict
    }

    func testHost(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TEST_HOST"] = .string(value)
        return newDict
    }

    enum TextureAtlasEnableWarningsValue: String {
        case yes = "Yes"
        case no = "No"
    }

    func textureAtlasEnableWarnings(_ value: TextureAtlasEnableWarningsValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TEXTURE_ATLAS_ENABLE_WARNINGS"] = .string(value.rawValue)
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
        case _2048x2048 = "2048x2048"
        case _4096x4096 = "4096x4096"
    }

    func textureAtlasMaximumSize(_ value: TextureAtlasMaximumSizeValue = ._2048x2048) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TEXTURE_ATLAS_MAXIMUM_SIZE"] = .string(value.rawValue)
        return newDict
    }

    func toolchains(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TOOLCHAINS"] = .array(values)
        return newDict
    }

    func treatMissingBaselinesAsTestFailures(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["TREAT_MISSING_BASELINES_AS_TEST_FAILURES"] = .init(booleanLiteral: bool)
        return newDict
    }

    func unexportedSymbolsFile(_ path: Path) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["UNEXPORTED_SYMBOLS_FILE"] = .string(path)
        return newDict
    }

    func unlocalizedResourcesFolderPath(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["UNLOCALIZED_RESOURCES_FOLDER_PATH"] = .string(value)
        return newDict
    }

    func unstrippedProduct(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["UNSTRIPPED_PRODUCT"] = .init(booleanLiteral: bool)
        return newDict
    }

    enum UsdzEnableWarningsValue: String {
        case yes = "Yes"
        case no = "No"
    }

    func usdzEnableWarnings(_ value: UsdzEnableWarningsValue = .yes) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["USDZ_ENABLE_WARNINGS"] = .string(value.rawValue)
        return newDict
    }

    func user(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["USER"] = .string(value)
        return newDict
    }

    func userHeaderSearchPaths(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["USER_HEADER_SEARCH_PATHS"] = .array(values)
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

    func validArchs(_ values: [String]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VALID_ARCHS"] = .array(values)
        return newDict
    }

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
        case appleGenericHidden = "apple-generic-hidden"
    }

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

    func versionInfoBuilder(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERSION_INFO_BUILDER"] = .string(value)
        return newDict
    }

    func versionInfoExportDecl(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERSION_INFO_EXPORT_DECL"] = .string(value)
        return newDict
    }

    func versionInfoFile(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERSION_INFO_FILE"] = .string(value)
        return newDict
    }

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

    func versionInfoSuffix(_ value: String = "") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["VERSION_INFO_SUFFIX"] = .string(value)
        return newDict
    }

    func warningCflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["WARNING_CFLAGS"] = .array(values)
        return newDict
    }

    func warningLdflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["WARNING_LDFLAGS"] = .array(values)
        return newDict
    }

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

    func xcodeDeveloperDirPath(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["XCODE_DEVELOPER_DIR_PATH"] = .string(value)
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

    func yaccflags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["YACCFLAGS"] = .array(values)
        return newDict
    }

    enum YaccGeneratedFileStemValue: String {
        case standard = "Standard"
        case inputfilestem = "InputFileStem"
    }

    func yaccGeneratedFileStem(_ value: YaccGeneratedFileStemValue = .standard) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["YACC_GENERATED_FILE_STEM"] = .string(value.rawValue)
        return newDict
    }

    func yaccGenerateDebuggingDirectives(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["YACC_GENERATE_DEBUGGING_DIRECTIVES"] = .init(booleanLiteral: bool)
        return newDict
    }

    func yaccInsertLineDirectives(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["YACC_INSERT_LINE_DIRECTIVES"] = .init(booleanLiteral: bool)
        return newDict
    }

    func excludeDsStoreFiles(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["_exclude_ds_store_files_"] = .string(value)
        return newDict
    }

    func resolveSrcSymlinks(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["_resolve_src_symlinks_"] = .string(value)
        return newDict
    }

    func arch(_ value: String) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["arch"] = .string(value)
        return newDict
    }

    func buildFileCompilerFlags(_ values: [String] = []) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["build_file_compiler_flags"] = .array(values)
        return newDict
    }

    func diagnosticMessageLength(_ value: String = "0") -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["diagnostic_message_length"] = .string(value)
        return newDict
    }

    func migGenerateClientSources(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["mig_generate_client_sources"] = .init(booleanLiteral: bool)
        return newDict
    }

    func migGenerateServerSources(_ bool: Bool = false) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["mig_generate_server_sources"] = .init(booleanLiteral: bool)
        return newDict
    }

    func printNoteIncludeStack(_ bool: Bool = true) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        newDict["print_note_include_stack"] = .init(booleanLiteral: bool)
        return newDict
    }

}
