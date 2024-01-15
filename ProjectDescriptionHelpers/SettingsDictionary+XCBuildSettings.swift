import ProjectDescription

public typealias Path = String

// Generated for Xcode version 15.0.1
public extension SettingsDictionary {

    enum XcodeBuildSetting {
        /// A string identifying the build system action being performed.
        case action(_ value: String = "")
        case additionalSDKs(_ values: [String] = [])
        /// If enabled, allows targets to build multiple times within a single build operation. Targets will build for the platform of the active run destination, as well as the platforms of any targets which depend on them.
        case allowTargetPlatformSpecialization(_ bool: Bool = false)
        case allOtherLDFlags(_ values: [String] = ["$(LD_FLAGS)", "$(SECTORDER_FLAGS)", "$(OTHER_LDFLAGS)", "$(OTHER_LDFLAGS_$(variant))", "$(OTHER_LDFLAGS_$(arch))", "$(OTHER_LDFLAGS_$(variant)_$(arch))", "$(PRODUCT_SPECIFIC_LDFLAGS)"])
        case allOtherLIBToolFlags(_ values: [String] = ["$(OTHER_LIBTOOLFLAGS)", "$(OTHER_LIBTOOLFLAGS_$(variant))", "$(OTHER_LIBTOOLFLAGS_$(arch))", "$(OTHER_LIBTOOLFLAGS_$(variant)_$(arch))", "$(PRODUCT_SPECIFIC_LIBTOOLFLAGS)"])
        case alternateGroup(_ value: String = "$(INSTALL_GROUP)")
        case alternateLinker(_ value: String)
        case alternateMode(_ value: String = "$(INSTALL_MODE_FLAG)")
        case alternateOwner(_ value: String = "$(INSTALL_OWNER)")
        case alternatePermissionsFiles(_ values: [String] = [])
        case alwaysEmbedSwiftStandardLibraries(_ bool: Bool = false)
        case alwaysSearchUserPaths(_ bool: Bool = true)
        case alwaysUseSeparateHeadermaps(_ bool: Bool = false)
        case applicationExtensionAPIOnly(_ bool: Bool = false)
        case applyRulesInCopyFiles(_ bool: Bool = false)
        case applyRulesInCopyHeaders(_ bool: Bool = false)
        case appIntentsDeploymentPostprocessing(_ bool: Bool = false)
        case appIntentsDeploymentTarget(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))")
        case appIntentsMetadataPath(_ value: String = "$(ProductResourcesDir)/Metadata.appintents")
        case appIntentsPlatformFamily(_ value: String = "$(PLATFORM_FAMILY_NAME)")
        /// When enabled, generates assets needed for App Shortcuts Flexible Matching.
        case appShortcutsEnableFlexibleMatching(_ bool: Bool = true)
        case archs(_ values: [String] = ["$(ARCHS_STANDARD)"])
        case archsStandard3264Bit(_ values: [String])
        case archsStandard32Bit(_ values: [String])
        case archsStandard64Bit(_ values: [String])
        case archsStandardIncluding64Bit(_ values: [String])
        /// A set of additional app icon set names to include as in the built product. The icons will be available at runtime for use as alternate app icons. This is an alternative to `--include-all-app-icons` providing more detailed control.
        case assetCatalogCompilerAlternateAppiconNames(_ values: [String])
        /// Name of an app icon set for the target's default app icon. The contents will be merged into the `Info.plist`.
        case assetCatalogCompilerAppiconName(_ value: String)
        case assetCatalogCompilerBundleIdentifier(_ value: String = "$(PRODUCT_BUNDLE_IDENTIFIER)")
        /// The name of a watch complication to use from the asset catalog.
        case assetCatalogCompilerComplicationName(_ value: String)
        case assetCatalogCompilerCompressPNGS(_ bool: Bool = false)
        case assetCatalogCompilerDependencyInfoFile(_ value: String = "$(TARGET_TEMP_DIR)/assetcatalog_dependencies")
        case assetCatalogCompilerEnableOnDemandResources(_ bool: Bool = false)
        case assetCatalogCompilerFlattenedAppIconPath(_ value: String)
        /// Generate asset symbols for each color and image in the catalog.
        case assetCatalogCompilerGenerateAssetSymbols(_ bool: Bool = true)
        case assetCatalogCompilerGenerateAssetSymbolBackwardsDeploymentSupport(_ value: String = "")
        case assetCatalogCompilerGenerateAssetSymbolErrors(_ bool: Bool = true)
        /// Generate asset symbol support for the specified UI frameworks (e.g. SwiftUI, UIKit, AppKit).
        case assetCatalogCompilerGenerateAssetSymbolFrameworks(_ values: [String] = ["SwiftUI", "UIKit", "AppKit"])
        case assetCatalogCompilerGenerateAssetSymbolIndexPath(_ value: String = "$(DERIVED_SOURCES_DIR)/GeneratedAssetSymbols-Index.plist")
        case assetCatalogCompilerGenerateAssetSymbolWarnings(_ bool: Bool = true)
        case assetCatalogCompilerGenerateOBJCAssetSymbolsPath(_ value: String = "$(DERIVED_SOURCES_DIR)/GeneratedAssetSymbols.h")
        case assetCatalogCompilerGenerateSwiftAssetSymbolsPath(_ value: String = "$(DERIVED_SOURCES_DIR)/GeneratedAssetSymbols.swift")
        /// Generate asset symbol extensions on Apple framework color and image types.
        case assetCatalogCompilerGenerateSwiftAssetSymbolExtensions(_ bool: Bool = false)
        /// The name of a color resource to use as a the target's accent color, used as the default tint color on iOS and watchOS, and accent color on macOS.
        case assetCatalogCompilerGlobalAccentColorName(_ value: String)
        /// When true, all app icon assets from the target's Asset Catalogs will be included in the built product, making the available at runtime for use as alternate app icons. When false, only the primary app icon will be included in the built product.
        case assetCatalogCompilerIncludeAllAppiconAssets(_ bool: Bool = false)
        /// When enabled, includes the localization information of the selected assets in the generated partial Info.plist file under the CFBundleLocalizations key. This will allow the assets to be used at runtime in the absence of a corresponding lproj directory in the bundle.
        case assetCatalogCompilerIncludeInfoplistLocalizations(_ bool: Bool = true)
        case assetCatalogCompilerIncludeStickerContent(_ bool: Bool = false)
        case assetCatalogCompilerInfoplistContentFile(_ path: Path = "$(TARGET_TEMP_DIR)/assetcatalog_generated_info.plist")
        case assetCatalogCompilerLaunchimageName(_ value: String)
        /// Leaderboards in the asset catalog may optionally specify a Game Center identifier. If they do not, their name will be prefixed by this value to form an automatically generated identifier.
        case assetCatalogCompilerLeaderboardIdentifierPrefix(_ value: String = "$(PRODUCT_NAME:identifier).game-center.leaderboard.")
        /// Leaderboard sets in the asset catalog may optionally specify a Game Center identifier. If they do not, their name will be prefixed by this value to form an automatically generated identifier.
        case assetCatalogCompilerLeaderboardSetIdentifierPrefix(_ value: String = "$(PRODUCT_NAME:identifier).game-center.leaderboard-set.")
        /// With no value, the compiler uses the default optimization. You can also specify `time` to optimize for speed of access or `space` to optimize for a smaller compiled asset catalogs.
        case assetCatalogCompilerOptimization(_ value: AssetcatalogCompilerOptimizationValue = .empty)
        /// Whether to perform App Store-specific behaviors such as validations. For example, building for an iOS or watchOS app will warn if a 1024 App Store icon is not present, but only when compiling for App Store deployment.
        case assetCatalogCompilerSkipAppStoreDeployment(_ bool: Bool)
        /// Controls whether loose PNG or ICNS files are created for the primary app icon, in addition to including the content in the Assets.car file. By default, a small subset of sizes are included as loose files, allowing external management tools to display a representative icon without reading the CAR file. This can be set to 'all' or 'none' to include more or fewer icon sizes as loose files.
        case assetCatalogCompilerStandaloneIconBehavior(_ value: AssetcatalogCompilerStandaloneIconBehaviorValue = .Default)
        /// Sticker Packs in the asset catalog may optionally specify an identifier. If they do not, their name will be prefixed by this value to form an automatically generated identifier.
        case assetCatalogCompilerStickerPackIdentifierPrefix(_ value: String)
        case assetCatalogCompilerStickerPackStrings(_ values: [String] = [])
        case assetCatalogCompilerTargetStickersIconRole(_ value: AssetcatalogCompilerTargetStickersIconRoleValue)
        /// The name of a color resource to use as the background color for a widget.
        case assetCatalogCompilerWidgetBackgroundColorName(_ value: String)
        case assetCatalogExec(_ path: Path = "actool")
        case assetCatalogFilterForDeviceModel(_ value: String = "$(TARGET_DEVICE_MODEL)")
        case assetCatalogFilterForDeviceOSVersion(_ value: String = "$(TARGET_DEVICE_OS_VERSION)")
        case assetCatalogFilterForThinningDeviceConfiguration(_ value: String = "$(TARGET_THINNING_DEVICE_CONFIGURATION)")
        case assetCatalogLightweightAssetRuntimeMode(_ value: AssetcatalogLightweightAssetRuntimeModeValue = .Default)
        case assetCatalogNotices(_ bool: Bool = true)
        case assetCatalogOtherFlags(_ values: [String] = [])
        case assetCatalogOutputFormat(_ value: AssetcatalogOutputFormatValue = .humanReadableText)
        case assetCatalogWarnings(_ bool: Bool = true)
        /// If set to anything other than the empty string, every URL in the `AssetPackManifest.plist` file will consist of this string with the name of the asset pack appended. If not set, the URLs in the `AssetPackManifest.plist` will be formed as appropriate for the build location of the asset packs. The prefix string is not escaped or quoted in any way, so any necessary escaping must be part of the URL string. This setting affects only URLs in the `AssetPackManifest.plist` file — it does not affect where asset packs are built in the local file system.
        case assetPackManifestURLPrefix(_ value: String = "")
        case automaticallyMergeDependencies(_ bool: Bool = false)
        case additionalCommandLineArguments(_ values: [String])
        case additionalContentFilePaths(_ paths: [Path])
        case additionalInfoFileKeys(_ value: String)
        case additionalInfoFileValues(_ value: String)
        case appPrivacyContentFilePaths(_ paths: [Path])
        case bitcodeGenerationMode(_ value: BitcodeGenerationModeValue = .marker)
        case buildActiveResourcesOnly(_ bool: Bool = false)
        /// A list of components being built during this action.
        case buildComponents(_ values: [String] = [])
        case buildDir(_ path: Path = "$(SYMROOT)")
        /// Ensures that your libraries are built for distribution. For Swift, this enables support for library evolution and generation of a module interface file.
        case buildLibraryForDistribution(_ bool: Bool = false)
        case buildRoot(_ path: Path = "$(SYMROOT)")
        case buildStyle(_ value: String = "")
        case buildVariants(_ values: [String] = ["normal"])
        /// Identifies the directory under which all the product’s files can be found. This directory contains either product files or symbolic links to them. Run Script build phases can use the value of this build setting as a convenient way to refer to the product files built by one or more targets even when these files are scattered throughout a directory hierarchy (for example, when `DEPLOYMENT_LOCATION` is set to `YES`.
        case builtProductsDir(_ path: Path = "$(CONFIGURATION_BUILD_DIR)")
        case bundleContentsFolderPath(_ value: String = "$(BUNDLE_CONTENTS_FOLDER_PATH_$(BUNDLE_FORMAT))")
        case bundleContentsFolderPathDeep(_ value: String = "Contents/")
        case bundleExecutableFolderNameDeep(_ value: String = "MacOS")
        case bundleExecutableFolderPath(_ value: String = "$(BUNDLE_CONTENTS_FOLDER_PATH)$(BUNDLE_EXECUTABLE_FOLDER_NAME_$(BUNDLE_FORMAT))")
        case bundleExtensionsFolderPath(_ value: String = "$(BUNDLE_CONTENTS_FOLDER_PATH)Extensions")
        case bundleFormat(_ value: BundleFormatValue = .shallow)
        case bundleFrameworksFolderPath(_ value: String = "$(BUNDLE_CONTENTS_FOLDER_PATH)Frameworks")
        case bundleLoader(_ path: Path = "")
        case bundlePluginsFolderPath(_ value: String = "$(BUNDLE_CONTENTS_FOLDER_PATH)PlugIns")
        case bundlePrivateHeadersFolderPath(_ value: String = "$(BUNDLE_CONTENTS_FOLDER_PATH)PrivateHeaders")
        case bundlePublicHeadersFolderPath(_ value: String = "$(BUNDLE_CONTENTS_FOLDER_PATH)Headers")
        case cc(_ path: Path)
        case cchroot(_ path: Path = "$(CACHE_ROOT)")
        case chmod(_ path: Path = "/bin/chmod")
        case chown(_ path: Path = "/usr/sbin/chown")
        case clang(_ path: Path = "clang")
        case clangAddressSanitizer(_ bool: Bool = false)
        case clangAddressSanitizerAllowErrorRecovery(_ bool: Bool = false)
        case clangAddressSanitizerContainerOverflow(_ bool: Bool = false)
        case clangAddressSanitizerUseAfterScope(_ bool: Bool = false)
        /// Enabling this setting allows non-modular includes to be used from within framework modules. This is inherently unsafe, as such headers might cause duplicate definitions when used by any client that imports both the framework and the non-modular includes.
        case clangAllowNonModularIncludesInFrameworkModules(_ bool: Bool = false)
        case clangAnalyzerDeadcodeDeadstores(_ bool: Bool = true)
        case clangAnalyzerDefines(_ value: String = "-D__clang_analyzer__")
        case clangAnalyzerDivideByZero(_ bool: Bool = true)
        case clangAnalyzerExec(_ path: Path = "clang")
        case clangAnalyzerGCD(_ bool: Bool = true)
        case clangAnalyzerGCDPerformance(_ value: ClangAnalyzerGcdPerformanceValue = .no)
        case clangAnalyzerLibkernRetainCount(_ bool: Bool = true)
        case clangAnalyzerLocalizabilityEmptyContext(_ value: ClangAnalyzerLocalizabilityEmptyContextValue = .no)
        case clangAnalyzerLocalizabilityNonlocalized(_ value: ClangAnalyzerLocalizabilityNonlocalizedValue = .no)
        case clangAnalyzerMalloc(_ bool: Bool = true)
        case clangAnalyzerMemoryManagement(_ bool: Bool = false)
        case clangAnalyzerMIGConventions(_ value: ClangAnalyzerMigConventionsValue = .yes)
        case clangAnalyzerNONNULL(_ value: ClangAnalyzerNonnullValue = .yesNonaggressive)
        case clangAnalyzerNullDereference(_ bool: Bool = true)
        case clangAnalyzerNumberObjectConversion(_ value: ClangAnalyzerNumberObjectConversionValue = .yes)
        case clangAnalyzerOBJCAtsync(_ bool: Bool = true)
        case clangAnalyzerOBJCCollections(_ bool: Bool = true)
        case clangAnalyzerOBJCDealloc(_ bool: Bool = true)
        case clangAnalyzerOBJCGenerics(_ bool: Bool = true)
        case clangAnalyzerOBJCIncompMethodTypes(_ bool: Bool = true)
        case clangAnalyzerOBJCNscferror(_ bool: Bool = true)
        case clangAnalyzerOBJCRetainCount(_ bool: Bool = true)
        case clangAnalyzerOBJCSelfInit(_ bool: Bool = true)
        case clangAnalyzerOBJCUnusedIVARS(_ bool: Bool = true)
        case clangAnalyzerOsobjectCStyleCast(_ bool: Bool = false)
        case clangAnalyzerOtherCheckers(_ values: [String])
        case clangAnalyzerOtherFlags(_ values: [String])
        case clangAnalyzerOutput(_ value: ClangAnalyzerOutputValue = .plistMultiFile)
        case clangAnalyzerOutputDir(_ path: Path = "$(TEMP_DIR)")
        case clangAnalyzerReportMainSourceFile(_ bool: Bool = true)
        case clangAnalyzerSecurityBufferOverflowExperimental(_ bool: Bool = false)
        case clangAnalyzerSecurityFloatloopcounter(_ bool: Bool = false)
        case clangAnalyzerSecurityInsecureapiGetpwGets(_ bool: Bool = true)
        case clangAnalyzerSecurityInsecureapiMkstemp(_ bool: Bool = true)
        case clangAnalyzerSecurityInsecureapiRand(_ bool: Bool = false)
        case clangAnalyzerSecurityInsecureapiStrcpy(_ bool: Bool = false)
        case clangAnalyzerSecurityInsecureapiUncheckedreturn(_ bool: Bool = true)
        case clangAnalyzerSecurityInsecureapiVfork(_ bool: Bool = true)
        case clangAnalyzerSecurityKeychainAPI(_ bool: Bool = true)
        case clangAnalyzerUseAfterMove(_ value: ClangAnalyzerUseAfterMoveValue = .yesAggressive)
        case clangARCMigrateDir(_ path: Path)
        case clangARCMigrateEmitError(_ bool: Bool = false)
        case clangARCMigratePrecheck(_ value: ClangArcMigratePrecheckValue = .donothing)
        case clangARCMigrateReportOutput(_ path: Path)
        case clangBitcodeGenerationMode(_ value: ClangBitcodeGenerationModeValue)
        case clangColorDiagnostics(_ bool: Bool = false)
        case clangCoverageMapping(_ bool: Bool = false)
        case clangCoverageMappingLinkerArgs(_ bool: Bool = false)
        case clangCXXLanguageStandard(_ value: ClangCxxLanguageStandardValue = .compilerDefault)
        case clangCXXLibrary(_ value: ClangCxxLibraryValue = .compilerDefault)
        case clangDebugInformationLevel(_ value: ClangDebugInformationLevelValue = .Default)
        case clangDebugModules(_ bool: Bool = false)
        case clangDiagnosticsFile(_ path: Path = "$(MTLCOMPILER_OUTPUT_FILE:dir)$(InputFileBase)$(InputFileBaseUniquefier).dia")
        case clangEnableAppExtension(_ bool: Bool = false)
        case clangEnableBoundsAttributes(_ bool: Bool = false)
        case clangEnableBoundsSafety(_ bool: Bool = false)
        case clangEnableCodeCoverage(_ bool: Bool = false)
        case clangEnableCPPStaticDestructors(_ bool: Bool = true)
        case clangEnableExplicitModules(_ bool: Bool = false)
        case clangEnableModules(_ bool: Bool = false)
        /// When this setting is enabled, `clang` will use the shared debug info available in `clang` modules and precompiled headers. This results in smaller build artifacts, faster compile times, and more complete debug info. This setting should only be disabled when building static libraries with debug info for distribution.
        case clangEnableModuleDebugging(_ bool: Bool = true)
        case clangEnableModuleImplementationOf(_ bool: Bool = true)
        case clangEnableOBJCARC(_ bool: Bool = false)
        case clangEnableOBJCARCExceptions(_ bool: Bool = false)
        case clangEnableOBJCWeak(_ bool: Bool = false)
        case clangEnablePrefixMapping(_ bool: Bool)
        case clangIndexStoreEnable(_ bool: Bool = false)
        case clangIndexStorePath(_ path: Path = "$(INDEX_DATA_STORE_DIR)")
        case clangInstrumentForOptimizationProfiling(_ bool: Bool = false)
        case clangLibfuzzer(_ bool: Bool = false)
        case clangLinkOBJCRuntime(_ bool: Bool = false)
        case clangMacroBacktraceLimit(_ value: String = "0")
        /// Add attribute annotations to properties and methods.
        case clangMigratorAnnotations(_ bool: Bool = true)
        /// Infer `instancetype` for method result type instead of `id`.
        case clangMigratorInstanceType(_ bool: Bool = true)
        /// Use `NS_ENUM`/`NS_OPTIONS` macros for enumerators.
        case clangMigratorNSEnumMacros(_ bool: Bool = true)
        /// Infer `NS_DESIGNATED_INITIALIZER` for designated initializer methods.
        case clangMigratorOBJCDesignatedInit(_ bool: Bool = true)
        /// Enable migration to modern ObjC literals syntax.
        case clangMigratorOBJCLiterals(_ bool: Bool = true)
        /// Enable migration to modern ObjC subscripting syntax.
        case clangMigratorOBJCSubscripting(_ bool: Bool = true)
        /// Choose the atomicity of the inferred properties.
        case clangMigratorPropertyAtomicity(_ value: ClangMigratorPropertyAtomicityValue = .nsNonatomicIosonly)
        /// Enable migration of setter/getter messages to property-dot syntax.
        case clangMigratorPropertyDotSyntax(_ bool: Bool = true)
        /// Infer protocol conformance from the interface methods.
        case clangMigratorProtocolConformance(_ bool: Bool = false)
        /// Only modify public headers of a target.
        case clangMigratorPublicHeadersOnly(_ bool: Bool = true)
        /// Infer readonly properties from getter methods.
        case clangMigratorReadonlyProperty(_ bool: Bool = true)
        /// Infer readwrite properties from a getter and setter method.
        case clangMigratorReadwriteProperty(_ bool: Bool = true)
        case clangModulesAutolink(_ bool: Bool = true)
        case clangModulesBuildSessionFile(_ value: String = "")
        case clangModulesDisablePrivateWarning(_ bool: Bool = false)
        case clangModulesIgnoreMacros(_ values: [String] = ["$(GCC_PREPROCESSOR_DEFINITIONS_NOT_USED_IN_PRECOMPS)"])
        case clangModulesPruneAfter(_ value: String = "345600")
        case clangModulesPruneInterval(_ value: String = "86400")
        case clangModulesValidateSystemHeaders(_ bool: Bool = false)
        case clangModuleCachePath(_ path: Path)
        case clangModuleLSV(_ bool: Bool = false)
        case clangOBJCMigrateDir(_ path: Path)
        case clangOptimizationProfileFile(_ path: Path = "$(SRCROOT)/OptimizationProfiles/$(PROJECT_NAME).profdata")
        case clangOtherPrefixMappings(_ values: [String] = [])
        case clangRetainCommentsFromSystemHeaders(_ bool: Bool = false)
        case clangSanitizerCoverage(_ bool: Bool = false)
        case clangStaticAnalyzerMode(_ value: ClangStaticAnalyzerModeValue = .shallow)
        case clangStaticAnalyzerModeActionDeep(_ value: String = "")
        case clangStaticAnalyzerModeActionShallow(_ value: String = "Shallow")
        case clangStaticAnalyzerModeOnAnalyzeAction(_ value: ClangStaticAnalyzerModeOnAnalyzeActionValue = .deep)
        case clangTargetTripleArchs(_ values: [String] = ["$(CURRENT_ARCH)"])
        case clangTargetTripleVariants(_ values: [String])
        case clangThreadSanitizer(_ bool: Bool = false)
        case clangTidyBugproneAssertSideEffect(_ bool: Bool = true)
        case clangTidyBugproneInfiniteLoop(_ bool: Bool = true)
        case clangTidyBugproneMoveForwardingReference(_ bool: Bool = true)
        case clangTidyBugproneRedundantBranchCondition(_ bool: Bool = false)
        case clangTidyMiscRedundantExpression(_ bool: Bool = false)
        case clangToolchainFlags(_ values: [String])
        case clangTrivialAutoVarInit(_ value: ClangTrivialAutoVarInitValue = .Default)
        case clangUndefinedBehaviorSanitizer(_ bool: Bool = false)
        case clangUndefinedBehaviorSanitizerInteger(_ bool: Bool = false)
        case clangUndefinedBehaviorSanitizerNullability(_ bool: Bool = false)
        case clangUndefinedBehaviorSanitizerTrapOnSecurityIssues(_ bool: Bool = false)
        case clangUndefinedBehaviorSanitizerTrapOnSecurityIssuesOpt(_ bool: Bool = true)
        case clangUseOptimizationProfile(_ bool: Bool = false)
        case clangWarnAssignEnum(_ bool: Bool = false)
        case clangWarnAtomicImplicitSEQCST(_ bool: Bool = false)
        case clangWarnBlockCaptureAutoreleasing(_ value: ClangWarnBlockCaptureAutoreleasingValue = .no)
        case clangWarnBoolConversion(_ value: ClangWarnBoolConversionValue)
        case clangWarnComma(_ value: ClangWarnCommaValue = .no)
        case clangWarnCompletionHandlerMisuse(_ bool: Bool = false)
        case clangWarnConstantConversion(_ value: ClangWarnConstantConversionValue)
        case clangWarnCxx0XExtensions(_ bool: Bool = false)
        case clangWarnDeleteNonVirtualDTOR(_ value: ClangWarnDeleteNonVirtualDtorValue = .yes)
        case clangWarnDeprecatedOBJCImplementations(_ bool: Bool = false)
        case clangWarnDirectOBJCISAUsage(_ value: ClangWarnDirectObjcIsaUsageValue = .yes)
        case clangWarnDocumentationComments(_ bool: Bool = false)
        case clangWarnEmptyBody(_ bool: Bool = false)
        case clangWarnEnumConversion(_ value: ClangWarnEnumConversionValue)
        case clangWarnFloatConversion(_ value: ClangWarnFloatConversionValue)
        case clangWarnFrameworkIncludePrivateFromPublic(_ value: ClangWarnFrameworkIncludePrivateFromPublicValue = .no)
        case clangWarnImplicitFallthrough(_ value: ClangWarnImplicitFallthroughValue = .no)
        case clangWarnImplicitSignConversion(_ value: ClangWarnImplicitSignConversionValue = .no)
        case clangWarnInfiniteRecursion(_ bool: Bool = false)
        case clangWarnIntConversion(_ value: ClangWarnIntConversionValue)
        case clangWarnMissingNoescape(_ value: ClangWarnMissingNoescapeValue = .yes)
        case clangWarnNonLiteralNullConversion(_ value: ClangWarnNonLiteralNullConversionValue)
        case clangWarnNullableToNONNULLConversion(_ bool: Bool = false)
        case clangWarnOBJCExplicitOwnershipType(_ bool: Bool = false)
        case clangWarnOBJCImplicitAtomicProperties(_ bool: Bool = false)
        case clangWarnOBJCImplicitRetainSelf(_ bool: Bool = false)
        case clangWarnOBJCInterfaceIVARS(_ value: ClangWarnObjcInterfaceIvarsValue = .no)
        case clangWarnOBJCLiteralConversion(_ value: ClangWarnObjcLiteralConversionValue)
        case clangWarnOBJCMissingPropertySynthesis(_ bool: Bool = false)
        case clangWarnOBJCRepeatedUseOfWeak(_ value: ClangWarnObjcRepeatedUseOfWeakValue = .no)
        case clangWarnOBJCRootClass(_ value: ClangWarnObjcRootClassValue = .yes)
        case clangWarnPragmaPack(_ value: ClangWarnPragmaPackValue = .yes)
        case clangWarnPrivateModule(_ bool: Bool = true)
        case clangWarnQuotedIncludeInFrameworkHeader(_ value: ClangWarnQuotedIncludeInFrameworkHeaderValue = .no)
        case clangWarnRangeLoopAnalysis(_ bool: Bool = false)
        case clangWarnSemicolonBeforeMethodBody(_ bool: Bool = false)
        case clangWarnStrictPrototypes(_ value: ClangWarnStrictPrototypesValue = .no)
        case clangWarnSuspiciousImplicitConversion(_ value: ClangWarnSuspiciousImplicitConversionValue = .no)
        case clangWarnSuspiciousMove(_ bool: Bool = false)
        case clangWarnUnguardedAvailability(_ value: ClangWarnUnguardedAvailabilityValue = .yes)
        case clangWarnUnreachableCode(_ value: ClangWarnUnreachableCodeValue = .no)
        case clangWarnVexingParse(_ value: ClangWarnVexingParseValue = .yes)
        case clangWarnXNUTypedAllocators(_ value: ClangWarnXnuTypedAllocatorsValue = .Default)
        case clangWarnARCBridgeCastNONARC(_ bool: Bool = true)
        case clangWarnDuplicateMethodMatch(_ bool: Bool = false)
        case clangWarnExitTimeDestructors(_ bool: Bool = false)
        /// Enables the use of extended vector instructions. Only used when targeting Intel architectures.
        case clangX86VectorInstructions(_ value: ClangX86VectorInstructionsValue)
        case classFileDir(_ path: Path = "$(TEMP_DIR)/JavaClasses")
        case cleanPrecomps(_ bool: Bool = true)
        case cloneHeaders(_ bool: Bool = false)
        case codesigningFolderPath(_ path: Path = "$(TARGET_BUILD_DIR)/$(FULL_PRODUCT_NAME)")
        case codeSigningAllowed(_ bool: Bool = false)
        case codeSignEntitlements(_ value: String = "")
        case codeSignIdentity(_ value: String = "")
        case codeSignInjectBaseEntitlements(_ bool: Bool = true)
        case codeSignKeychain(_ value: String = "")
        case codeSignLocalExecutionIdentity(_ value: CodeSignLocalExecutionIdentityValue = .empty)
        case codeSignResourceRulesInBundle(_ value: String)
        case codeSignStyle(_ value: CodeSignStyleValue = .empty)
        case colorDiagnostics(_ bool: Bool = false)
        case combineHIDPIImages(_ bool: Bool = false)
        /// Control whether the compiler should emit index data while building.
        case compilerIndexStoreEnable(_ value: CompilerIndexStoreEnableValue = .Default)
        case compositeSDKDirs(_ paths: [Path] = ["$(OBJROOT)/CompositeSDKs"])
        /// If enabled, PNG resource files are compressed as they are copied.
        case compressPNGFiles(_ bool: Bool = true)
        case compressTIFFFilesWhileCopying(_ bool: Bool = false)
        /// Identifies the build configuration, such as `Debug` or `Release`, that the target uses to generate the product.
        case configuration(_ value: String = "")
        case configurationBuildDir(_ path: Path = "$(BUILD_DIR)")
        case configurationTempDir(_ path: Path = "$(PROJECT_TEMP_DIR)")
        /// Specifies the directory inside the generated bundle that contains the product’s files.
        case contentsFolderPath(_ path: Path = "")
        case copyingPreservesHfsData(_ bool: Bool = false)
        /// If enabled, headers are run through the `unifdef(1)` tool when copied to the product.
        case copyHeadersRunUnifdef(_ bool: Bool = false)
        /// Specifies the flags to pass to `unifdef(1)` when invoking that tool to copy headers. This setting has no effect unless `COPY_HEADERS_RUN_UNIFDEF` is enabled.
        case copyHeadersUnifdefFlags(_ values: [String] = [])
        case copyPhaseStrip(_ bool: Bool = true)
        /// The Source-code language to use for generated CoreML model class.  By default "Automatic" will analyze your project to determine the correct language.  Adjust this setting to explicitly select "Swift" or "Objective-C", or select "None" to disable model class generation.
        case coreMLCodegenLanguage(_ value: CoremlCodegenLanguageValue = .automatic)
        /// Generate Swift model classes that are marked with @objc and are descendants of NSObject, in order to be accessible and usable in Objective-C.  This setting has no effect if "CoreML Model Class Generation Language" is set to "Objective-C".
        case coreMLCodegenSwiftGlobalModule(_ bool: Bool = false)
        case coreMLCodegenSwiftVersion(_ value: String = "$(SWIFT_VERSION)")
        case coreMLCompilerContainer(_ value: String = "bundle-resources")
        case coreMLCompilerInfoplistContentFile(_ path: Path = "$(TARGET_TEMP_DIR)/$(InputFileBase)-CoreMLPartialInfo.plist")
        case coreMLDeploymentTarget(_ value: String = "$(COREML_DEPLOYMENT_TARGET__$(IS_MACCATALYST:default=NO))")
        case coreMLDeploymentTargetNo(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))")
        case coreMLDeploymentTargetYes(_ value: String = "$(IPHONEOS_DEPLOYMENT_TARGET)")
        case coreMLPlatformName(_ value: String = "$(COREML_PLATFORM_NAME__$(IS_MACCATALYST:default=NO))")
        case coreMLPlatformNameNo(_ value: String = "$(SWIFT_PLATFORM_TARGET_PREFIX)")
        case coreMLPlatformNameYes(_ value: String = "maccatalyst")
        case cp(_ path: Path = "/bin/cp")
        case cppHeadermapFile(_ path: Path = "$(TEMP_DIR)/$(PRODUCT_NAME).hmap")
        case cppHeadermapFileForAllNonFrameworkTargetHeaders(_ path: Path = "$(TEMP_DIR)/$(PRODUCT_NAME)-all-non-framework-target-headers.hmap")
        case cppHeadermapFileForAllTargetHeaders(_ path: Path = "$(TEMP_DIR)/$(PRODUCT_NAME)-all-target-headers.hmap")
        case cppHeadermapFileForGeneratedFiles(_ path: Path = "$(TEMP_DIR)/$(PRODUCT_NAME)-generated-files.hmap")
        case cppHeadermapFileForOwnTargetHeaders(_ path: Path = "$(TEMP_DIR)/$(PRODUCT_NAME)-own-target-headers.hmap")
        case cppHeadermapFileForProjectFiles(_ path: Path = "$(TEMP_DIR)/$(PRODUCT_NAME)-project-headers.hmap")
        case cppHeadermapProductHeadersVFSFile(_ path: Path = "$(PROJECT_TEMP_DIR)/all-product-headers.yaml")
        case cppHeaderSYMLINKSDir(_ path: Path = "$(TEMP_DIR)/$(PRODUCT_NAME).hdrs")
        case cppOtherPreprocessorFlags(_ values: [String])
        case cppPreprocessorDefinitions(_ values: [String])
        case createInfoplistSectionInBinary(_ bool: Bool = false)
        /// The name of the active architecture being processed.
        case currentArch(_ value: String = "$(arch)")
        case currentProjectVersion(_ value: String = "")
        /// The name of the active variant being processed.
        case currentVariant(_ value: String = "$(variant)")
        case currentVersion(_ value: String = "")
        case codeSignResourceRules(_ bool: Bool)
        case deadCodeStripping(_ bool: Bool = false)
        case debuggingSymbols(_ bool: Bool = true)
        case debugInformationFormat(_ value: DebugInformationFormatValue = .dwarf)
        case defaultCompiler(_ value: String = "")
        case defaultDEXTInstallPath(_ value: String = "$(SYSTEM_DEXT_INSTALL_PATH)")
        case defaultKEXTInstallPath(_ value: String = "$(SYSTEM_KEXT_INSTALL_PATH)")
        case defaultSSELevel3No(_ value: String = "default")
        case defaultSSELevel3SupplementalNo(_ value: String = "$(DEFAULT_SSE_LEVEL_3_$(GCC_ENABLE_SSE3_EXTENSIONS))")
        case defaultSSELevel3SupplementalYes(_ value: String = "ssse3")
        case defaultSSELevel3Yes(_ value: String = "sse3")
        case defaultSSELevel41No(_ value: String = "$(DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_$(GCC_ENABLE_SUPPLEMENTAL_SSE3_INSTRUCTIONS))")
        case defaultSSELevel41Yes(_ value: String = "sse4.1")
        case defaultSSELevel42No(_ value: String = "$(DEFAULT_SSE_LEVEL_4_1_$(GCC_ENABLE_SSE41_EXTENSIONS))")
        case defaultSSELevel42Yes(_ value: String = "sse4.2")
        case definesModule(_ bool: Bool = false)
        case deploymentLocation(_ bool: Bool = false)
        case deploymentPostprocessing(_ bool: Bool = false)
        case deploymentTarget(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))")
        /// The name of the build setting for the deployment target for the effective platform. This can be used to evaluate the build setting using build setting interpolation without hard-coding the name, e.g. `$($(DEPLOYMENT_TARGET_SETTING_NAME))`, or to compose the names of other settings which contain its name, such as the `RECOMMENDED_<platform>_DEPLOYMENT_TARGET` settings.
        case deploymentTargetSettingName(_ value: String = "")
        case derivedFilesDir(_ path: Path = "$(DERIVED_FILE_DIR)")
        /// Identifies the directory into which derived source files, such as those generated by `lex` and `yacc`, are placed.
        case derivedFileDir(_ path: Path = "$(TEMP_DIR)/DerivedSources")
        case derivedPaths(_ paths: [Path] = [])
        case derivedSourcesDir(_ path: Path = "$(DERIVED_FILE_DIR)")
        case developerDir(_ path: Path)
        /// Files and directories used only for development. Archive and install builds will exclude this content.
        case developmentAssetPaths(_ values: [String] = [])
        case developmentLanguage(_ value: String)
        case developmentTeam(_ value: String = "")
        case diff(_ path: Path = "/usr/bin/diff")
        case doccAnalyzeDiagnostics(_ bool: Bool = false)
        case doccArchivePath(_ value: String = "$(DOCC_OUTPUT_DIR)/$(DOCC_CATALOG_DISPLAY_NAME).doccarchive")
        case doccCatalogDisplayName(_ value: String = "$(PRODUCT_NAME)")
        case doccCatalogIdentifier(_ value: String = "$(PRODUCT_BUNDLE_IDENTIFIER:default=$DOCC_CATALOG_DISPLAY_NAME)")
        case doccCatalogVersion(_ value: String = "$(CURRENT_PROJECT_VERSION:default=0)")
        case doccDiagnosticsFile(_ path: Path = "$(TARGET_TEMP_DIR)/$(DOCC_CATALOG_DISPLAY_NAME)-diagnostics.json")
        case doccEmitFixits(_ bool: Bool = true)
        case doccExec(_ path: Path = "docc")
        /// Extract Swift symbol information for symbols defined within an extension to a type that is not defined in the current module.
        case doccExtractExtensionSymbols(_ bool: Bool = true)
        /// Extract Objective-C symbol information for targets that contain only Swift code so that the documentation output can be read as both Swift and Objective-C.
        case doccExtractOBJCInfoForSwiftSymbols(_ bool: Bool = false)
        case doccExtractSPIDocumentation(_ bool: Bool = false)
        /// Extract Swift symbol information for targets that contain only Objective-C code so that the documentation output can be read as both Swift and Objective-C.
        case doccExtractSwiftInfoForOBJCSymbols(_ bool: Bool = false)
        /// The base path your documentation website will be hosted at.
        /// For example, if you plan on hosting your DocC archive at `https://example.com/ProjectName/documentation` instead of `https://example.com/documentation`, set this value to `"ProjectName"`.
        case doccHostingBasePath(_ value: String = "")
        case doccIDEConsoleOutput(_ bool: Bool = true)
        case doccOutputDigestInformation(_ bool: Bool = false)
        case doccOutputDir(_ value: String = "$(TARGET_BUILD_DIR)")
        case doccOutputNavigatorIndex(_ bool: Bool = true)
        case doccTemplatePath(_ value: String = "")
        case doccTransformForStaticHosting(_ bool: Bool = true)
        /// Identifies the directory that contains the bundle’s documentation files.
        case documentationFolderPath(_ path: Path = "")
        case dontGenerateInfoplistFile(_ bool: Bool = false)
        case doHeaderScanningInJam(_ bool: Bool = false)
        case dstroot(_ path: Path = "/tmp/$(PROJECT_NAME).dst")
        case dsymUtilDSYMSearchPaths(_ values: [String] = [])
        case dsymUtilVariantSuffix(_ value: String = "")
        case dsymUtilVerbose(_ bool: Bool = false)
        case dtraceOtherFlags(_ values: [String] = [])
        case dtraceOutputFileType(_ value: DtraceOutputFileTypeValue = .header)
        case dwarfDSYMFileName(_ value: String = "$(FULL_PRODUCT_NAME).dSYM")
        case dwarfDSYMFileShouldAccompanyProduct(_ bool: Bool = false)
        case dwarfDSYMFolderPath(_ value: String = "$(CONFIGURATION_BUILD_DIR)")
        case dylibCompatibilityVersion(_ value: String = "")
        case dylibCurrentVersion(_ value: String = "")
        case dylibInstallNameBase(_ value: String = "")
        /// If enabled, the build system will emit a TBD file for Swift-only framework and dynamic library targets to unblock linking of dependent targets before their dependency has finished linking.
        case eagerLinking(_ bool: Bool = false)
        case embeddedContentContainsSwift(_ bool: Bool = false)
        /// Embed all the built asset packs inside the product bundle. Since this negates the performance benefits of the On Demand Resources feature, it is only useful for testing purposes when it isn't practical to use an asset pack server.
        case embedAssetPacksInProductBundle(_ bool: Bool = false)
        case enableAppleKEXTCodeGeneration(_ bool: Bool = false)
        case enableAppSandbox(_ bool: Bool = false)
        case enableBitcode(_ bool: Bool = false)
        /// Enables building with code coverage instrumentation. This is only used when the build has code coverage enabled, which is typically done via the Xcode scheme or test plan settings.
        case enableCodeCoverage(_ bool: Bool = true)
        case enableDefaultHeaderSearchPaths(_ bool: Bool = true)
        case enableDefaultSearchPaths(_ bool: Bool = false)
        /// Enable hardened runtime restrictions.
        case enableHardenedRuntime(_ bool: Bool = false)
        /// Specifies whether to automatically track dependencies on included header files.
        case enableHeaderDependencies(_ bool: Bool = true)
        /// Enabled the incremental `distill` option in the asset catalog compiler. This feature is experimental and should only be enabled with caution.
        case enableIncrementalDistill(_ bool: Bool = false)
        case enableNSAssertions(_ bool: Bool = true)
        /// Omit inapplicable resources when building for a single device. For example, when building for a device with a Retina display, exclude 1x resources.
        case enableOnlyActiveResources(_ bool: Bool = true)
        /// If enabled, tagged assets—files and asset catalog entries—are built into asset packs based on their combination of tags. Untagged resources are treated normally.
        case enableOnDemandResources(_ bool: Bool = false)
        /// If enabled, the product will be built with options appropriate for supporting previews.
        case enablePreviews(_ bool: Bool)
        case enableStrictOBJCMSGSEND(_ bool: Bool = false)
        /// Enabling this setting will build the target with options appropriate for running automated tests against its product.
        ///
        /// This setting can be enabled when building targets for debugging if their products will be tested. This may result in tests running slower than otherwise.
        ///
        /// When this setting is enabled:
        ///
        /// * `GCC_SYMBOLS_PRIVATE_EXTERN` is disabled (`-fvisibility=hidden` will not be passed to `clang`).
        /// * `-enable-testing` is passed to the Swift compiler.
        /// * `-export_dynamic` is passed to the linker.
        /// * `STRIP_INSTALLED_PRODUCT` is disabled (`strip` will not be run on the produced binary).
        case enableTestability(_ bool: Bool = false)
        /// Specifies whether the build system should add the search paths necessary for compiling and linking against XCTest. This setting is enabled by default if the target is a unit test target or if the target explicitly links to the XCTest framework.
        case enableTestingSearchPaths(_ bool: Bool = false)
        case enableUSDZCompilation(_ bool: Bool = false)
        /// If enabled, the build system will sandbox user scripts to disallow undeclared input/output dependencies.
        case enableUserScriptSandboxing(_ bool: Bool = false)
        case enableUserSelectedFiles(_ value: EnableUserSelectedFilesValue = .empty)
        case entitlementsDestination(_ value: EntitlementsDestinationValue = .empty)
        case excludedArchs(_ values: [String])
        case excludedInstallSRCSubDirectoryPatterns(_ values: [String] = [".DS_Store", ".svn", ".git", ".hg", "CVS"])
        case excludedRecursiveSearchPathSubdirectories(_ values: [String] = ["*.nib", "*.lproj", "*.framework", "*.gch", "*.xcode*", "*.xcassets", "(*)", ".DS_Store", "CVS", ".svn", ".git", ".hg", "*.pbproj", "*.pbxproj"])
        case excludedSourceFileNames(_ values: [String] = [])
        /// Identifies the directory that contains additional binary files.
        case executablesFolderPath(_ path: Path = "")
        case executableExtension(_ value: String = "")
        /// Identifies the directory that contains the binary the target builds.
        case executableFolderPath(_ path: Path = "")
        /// Specifies the name of the binary the target produces.
        ///
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [CFBundleExecutable](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleexecutable) key in the `Info.plist` file to the value of this build setting.
        case executableName(_ value: String = "")
        /// Specifies the path to the binary the target produces within its bundle.
        case executablePath(_ path: Path = "")
        case executablePrefix(_ value: String = "")
        /// Specifies the suffix of the binary filename, including the character that separates the extension from the rest of the bundle name.
        case executableSuffix(_ value: String = "")
        case executableVariantSuffix(_ value: String = "")
        case exportedSymbolsFile(_ path: Path)
        case expandBuildSettings(_ bool: Bool)
        case fileList(_ path: Path = "$(OBJECT_FILE_DIR)/LinkFileList")
        case fixedFilesDir(_ path: Path = "$(TARGET_TEMP_DIR)/FixedFiles")
        /// Specifies the directory that contains the product’s embedded frameworks.
        case frameworksFolderPath(_ path: Path = "")
        case frameworkSearchPaths(_ paths: [Path])
        case frameworkVersion(_ value: String = "A")
        case fullProductName(_ value: String = "")
        case fuseBuildPhases(_ bool: Bool = true)
        /// If enabled, consecutive run script phases will be allowed to run in parallel if they fully specify their input and output dependencies.
        case fuseBuildScriptPhases(_ bool: Bool = false)
        case gcc3Version(_ value: String = "3.3")
        case gccCharIsUnsignedChar(_ bool: Bool = false)
        case gccCWASMSyntax(_ bool: Bool = true)
        case gccCLanguageStandard(_ value: GccCLanguageStandardValue = .compilerDefault)
        case gccDebugInformationFormat(_ value: GccDebugInformationFormatValue)
        case gccDynamicNoPic(_ bool: Bool = false)
        case gccEnableASMKeyword(_ bool: Bool = true)
        case gccEnableBuiltinFunctions(_ bool: Bool = true)
        case gccEnableCPPExceptions(_ bool: Bool = true)
        case gccEnableCPPRTTI(_ bool: Bool = true)
        case gccEnableExceptions(_ bool: Bool = false)
        case gccEnableFloatingPointLibraryCalls(_ bool: Bool = false)
        case gccEnableKernelDevelopment(_ bool: Bool = false)
        case gccEnableOBJCExceptions(_ bool: Bool = true)
        case gccEnablePascalStrings(_ bool: Bool = true)
        /// Specifies whether the binary uses the builtin functions that provide access to the SSE3 extensions to the IA-32 architecture.
        case gccEnableSSE3Extensions(_ bool: Bool = false)
        /// Specifies whether the binary uses the builtin functions that provide access to the SSE4.1 extensions to the IA-32 architecture.
        case gccEnableSSE41Extensions(_ bool: Bool = false)
        /// Specifies whether the binary uses the builtin functions that provide access to the SSE4.2 extensions to the IA-32 architecture.
        case gccEnableSSE42Extensions(_ bool: Bool = false)
        case gccEnableSupplementalSSE3Instructions(_ bool: Bool = false)
        case gccEnableTrigraphs(_ bool: Bool = false)
        case gccFastMath(_ bool: Bool = false)
        case gccGenerateDebuggingSymbols(_ bool: Bool)
        case gccGenerateTestCoverageFiles(_ bool: Bool = false)
        case gccIncreasePrecompiledHeaderSharing(_ bool: Bool = false)
        /// When enabled, out-of-line copies of inline methods are declared `private extern`.
        case gccInlinesArePrivateExtern(_ bool: Bool = false)
        case gccInputFiletype(_ value: GccInputFiletypeValue = .automatic)
        case gccInstrumentProgramFlowARCS(_ bool: Bool = false)
        case gccLinkWithDynamicLibraries(_ bool: Bool = true)
        case gccNoCommonBlocks(_ bool: Bool = false)
        case gccOBJCABIVersion(_ value: GccObjcAbiVersionValue)
        case gccOBJCLegacyDispatch(_ bool: Bool = false)
        case gccOperation(_ value: GccOperationValue = .compile)
        case gccOptimizationLevel(_ value: GccOptimizationLevelValue = .s)
        case gccPFEFileCDialects(_ values: [String] = ["c", "objective-c", "c++", "objective-c++"])
        case gccPrecompilePrefixHeader(_ bool: Bool = false)
        case gccPrefixHeader(_ value: String = "")
        case gccPreprocessorDefinitions(_ values: [String] = [])
        case gccPreprocessorDefinitionsNotUsedInPrecomps(_ values: [String] = [])
        case gccProductTypePreprocessorDefinitions(_ values: [String] = [])
        case gccReuseStrings(_ bool: Bool = true)
        case gccShortEnums(_ bool: Bool = false)
        case gccStrictAliasing(_ bool: Bool = true)
        case gccSymbolsPrivateExtern(_ bool: Bool = false)
        /// Emits extra code to use the routines specified in the C++ ABI for thread-safe initialization of local statics. You can disable this option to reduce code size slightly in code that doesn't need to be thread-safe.
        case gccThreadsafeStatics(_ bool: Bool = true)
        case gccTreatImplicitFunctionDeclarationsAsErrors(_ bool: Bool = false)
        case gccTreatIncompatiblePointerTypeWarningsAsErrors(_ bool: Bool = false)
        case gccTreatWarningsAsErrors(_ bool: Bool = false)
        case gccUnrollLoops(_ bool: Bool = false)
        case gccUseGCC3PFESupport(_ bool: Bool = true)
        case gccUseStandardIncludeSearching(_ bool: Bool = true)
        case gccVersion(_ value: String = "")
        case gccVersionIdentifier(_ value: String = "$(GCC_VERSION:identifier)")
        case gccWarn64To32BitConversion(_ value: GccWarn64To32BitConversionValue = .no)
        case gccWarnAboutDeprecatedFunctions(_ bool: Bool = true)
        case gccWarnAboutInvalidOffsetOfMacro(_ bool: Bool = true)
        case gccWarnAboutMissingFieldInitializers(_ bool: Bool = false)
        /// Warn when a source file does not end with a newline.
        case gccWarnAboutMissingNewline(_ bool: Bool = false)
        case gccWarnAboutMissingPrototypes(_ bool: Bool = false)
        /// Warn when pointers passed via arguments or assigned to a variable differ in sign.
        case gccWarnAboutPointerSignedness(_ bool: Bool = true)
        case gccWarnAboutReturnType(_ value: GccWarnAboutReturnTypeValue = .no)
        case gccWarnAllowIncompleteProtocol(_ bool: Bool = true)
        case gccWarnCheckSwitchStatements(_ bool: Bool = true)
        case gccWarnFourCharacterConstants(_ bool: Bool = false)
        case gccWarnHiddenVirtualFunctions(_ bool: Bool = false)
        case gccWarnInhibitAllWarnings(_ bool: Bool = false)
        case gccWarnInitializerNotFullyBracketed(_ bool: Bool = false)
        case gccWarnMissingParentheses(_ bool: Bool = true)
        case gccWarnMultipleDefinitionTypesForSelector(_ bool: Bool = false)
        case gccWarnNonVirtualDestructor(_ bool: Bool = false)
        case gccWarnPedantic(_ bool: Bool = false)
        case gccWarnShadow(_ bool: Bool = false)
        case gccWarnSignCompare(_ bool: Bool = false)
        case gccWarnStrictSelectorMatch(_ bool: Bool = false)
        case gccWarnTypecheckCallsToPrintf(_ bool: Bool = true)
        case gccWarnUndeclaredSelector(_ bool: Bool = false)
        case gccWarnUninitializedAutos(_ value: GccWarnUninitializedAutosValue = .no)
        case gccWarnUnknownPragmas(_ bool: Bool = false)
        case gccWarnUnusedFunction(_ bool: Bool = false)
        case gccWarnUnusedLabel(_ bool: Bool = false)
        case gccWarnUnusedParameter(_ bool: Bool = false)
        case gccWarnUnusedValue(_ bool: Bool = true)
        case gccWarnUnusedVariable(_ bool: Bool = false)
        case generatedModulemapDir(_ value: String = "$(OBJROOT)/GeneratedModuleMaps$(EFFECTIVE_PLATFORM_NAME)")
        /// Automatically generate an Info.plist file.
        case generateInfoplistFile(_ bool: Bool = false)
        /// Enables the generation of intermediate Text-Based stubs for dynamic libraries and frameworks to more precisely track linker dependencies in incremental builds.
        case generateIntermediateTextBasedStubs(_ bool: Bool = true)
        case generateMasterObjectFile(_ bool: Bool = false)
        case generatePkginfoFile(_ bool: Bool = false)
        case generateProfilingCode(_ bool: Bool)
        /// Enables the generation of Text-Based stubs for dynamic libraries and frameworks.
        case generateTextBasedStubs(_ bool: Bool = false)
        case globalCFlags(_ values: [String] = [])
        case generatedPkgInfoFile(_ path: Path)
        case headermapFileFormat(_ value: HeadermapFileFormatValue = .traditional)
        /// Specifies whether the header map contains a name/path entry for every header in the target being built.
        case headermapIncludesFlatEntriesForTargetBeingBuilt(_ bool: Bool = true)
        /// Specifies whether the header map contains a framework-name/path entry for every header in the target being built, including targets that do not build frameworks.
        case headermapIncludesFrameworkEntriesForAllProductTypes(_ bool: Bool = true)
        case headermapIncludesNonpublicNonprivateHeaders(_ bool: Bool = false)
        /// Specifies whether the header map contains a name/path entry for every header in the project, regardless of the headers’ target membership.
        case headermapIncludesProjectHeaders(_ bool: Bool = true)
        case headermapUsesFrameworkPrefixEntries(_ bool: Bool = true)
        case headermapUsesVFS(_ bool: Bool = false)
        case headerSearchPaths(_ paths: [Path])
        case hideBitcodeSymbols(_ bool: Bool = true)
        case home(_ value: String)
        case hostArch(_ value: String = "$(NATIVE_ARCH_ACTUAL)")
        case ibcCompilationModeForIOS(_ value: String)
        case ibcCompilerAutoActivateCustomFonts(_ bool: Bool = true)
        case ibcCompilerUseNibkeyedarchiverForMACOS(_ bool: Bool = false)
        case ibcErrors(_ bool: Bool = true)
        case ibcExec(_ path: Path = "ibtool")
        case ibcFlattenNIBS(_ bool: Bool = true)
        case ibcModule(_ value: String = "$(PRODUCT_MODULE_NAME)")
        case ibcNotices(_ bool: Bool = true)
        case ibcOtherFlags(_ values: [String] = [])
        case ibcOverridingPluginsAndFrameworksDir(_ path: Path)
        case ibcPlugins(_ values: [String] = [])
        case ibcPluginSearchPaths(_ paths: [Path] = [])
        case ibcRegionsAndStringsFiles(_ values: [String] = [])
        case ibcStripNIBS(_ bool: Bool = false)
        case ibcWarnings(_ bool: Bool = true)
        case ibscCompilationModeForIOS(_ value: String)
        case ibscCompilerAutoActivateCustomFonts(_ bool: Bool = true)
        case ibscCompilerUseNibkeyedarchiverForMACOS(_ bool: Bool = false)
        case ibscErrors(_ bool: Bool = true)
        case ibscFlattenNIBS(_ bool: Bool = true)
        case ibscModule(_ value: String = "$(PRODUCT_MODULE_NAME)")
        case ibscNotices(_ bool: Bool = true)
        case ibscOtherFlags(_ values: [String] = [])
        case ibscRegionsAndStringsFiles(_ values: [String] = ["$(IBC_REGIONS_AND_STRINGS_FILES)"])
        case ibscStripNIBS(_ bool: Bool = false)
        case ibscWarnings(_ bool: Bool = true)
        case iconv(_ path: Path = "/usr/bin/iconv")
        case iigCXXLanguageStandard(_ value: String = "$(CLANG_CXX_LANGUAGE_STANDARD)")
        case iigDerivedFileDir(_ value: String = "$(DERIVED_FILE_DIR)/$(IIG_FRAMEWORK_NAME)")
        case iigExec(_ path: Path = "iig")
        case iigFrameworkName(_ value: String = "$(PRODUCT_NAME)")
        case iigHeadersDir(_ value: String = "$(IIG_DERIVED_FILE_DIR)")
        case iigImplementationDir(_ value: String = "$(IIG_DERIVED_FILE_DIR)")
        case iigPreprocessorDefinitions(_ values: [String] = ["__IIG=1"])
        case includedRecursiveSearchPathSubdirectories(_ values: [String] = [])
        case includedSourceFileNames(_ values: [String] = [])
        case infoplistEnableCfbundleiconsMerge(_ bool: Bool = true)
        case infoplistExpandBuildSettings(_ bool: Bool = true)
        case infoplistFile(_ value: String = "")
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [CFBundleDisplayName](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundledisplayname) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyCFBundleDisplayName(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [CLKComplicationPrincipalClass](https://developer.apple.com/documentation/bundleresources/information_property_list/clkcomplicationprincipalclass) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyCLKComplicationPrincipalClass(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [LSApplicationCategoryType](https://developer.apple.com/documentation/bundleresources/information_property_list/lsapplicationcategorytype) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyLSApplicationCategoryType(_ value: InfoplistKeyLsapplicationcategorytypeValue)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [LSBackgroundOnly](https://developer.apple.com/documentation/bundleresources/information_property_list/lsbackgroundonly) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyLSBackgroundOnly(_ bool: Bool)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [LSSupportsOpeningDocumentsInPlace](https://developer.apple.com/documentation/bundleresources/information_property_list/lssupportsopeningdocumentsinplace) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyLSSupportsOpeningDocumentsInPlace(_ bool: Bool)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [LSUIElement](https://developer.apple.com/documentation/bundleresources/information_property_list/lsuielement) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyLSUIElement(_ bool: Bool)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the MetalCaptureEnabled key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyMetalCaptureEnabled(_ bool: Bool)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NFCReaderUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nfcreaderusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNFCReaderUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSAppleEventsUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsappleeventsusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSAppleEventsUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSAppleMusicUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsapplemusicusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSAppleMusicUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSBluetoothAlwaysUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsbluetoothalwaysusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSBluetoothAlwaysUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSBluetoothPeripheralUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsbluetoothperipheralusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSBluetoothPeripheralUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the NSBluetoothWhileInUseUsageDescription key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSBluetoothWhileInUseUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSCalendarsUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nscalendarsusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSCalendarsUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSCameraUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nscamerausagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSCameraUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSContactsUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nscontactsusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSContactsUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSDesktopFolderUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsdesktopfolderusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSDesktopFolderUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSDocumentsFolderUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsdocumentsfolderusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSDocumentsFolderUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSDownloadsFolderUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsdownloadsfolderusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSDownloadsFolderUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSFaceIDUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsfaceidusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSFaceIDUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSFallDetectionUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsfalldetectionusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSFallDetectionUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSFileProviderDomainUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsfileproviderdomainusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSFileProviderDomainUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the NSFileProviderPresenceUsageDescription key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSFileProviderPresenceUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the NSFocusStatusUsageDescription key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSFocusStatusUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSGKFriendListUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsgkfriendlistusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSGKFriendListUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSHealthClinicalHealthRecordsShareUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nshealthclinicalhealthrecordsshareusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSHealthClinicalHealthRecordsShareUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSHealthShareUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nshealthshareusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSHealthShareUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSHealthUpdateUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nshealthupdateusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSHealthUpdateUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSHomeKitUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nshomekitusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSHomeKitUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSHumanReadableCopyright](https://developer.apple.com/documentation/bundleresources/information_property_list/nshumanreadablecopyright) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSHumanReadableCopyright(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSLocalNetworkUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocalnetworkusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSLocalNetworkUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSLocationAlwaysAndWhenInUseUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationalwaysandwheninuseusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSLocationAlwaysAndWhenInUseUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSLocationAlwaysUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationalwaysusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSLocationAlwaysUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSLocationTemporaryUsageDescriptionDictionary](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationtemporaryusagedescriptiondictionary) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSLocationTemporaryUsageDescriptionDictionary(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSLocationUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSLocationUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSLocationWhenInUseUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationwheninuseusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSLocationWhenInUseUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSMainNibFile](https://developer.apple.com/documentation/bundleresources/information_property_list/nsmainnibfile) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSMainNibFile(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSMainStoryboardFile](https://developer.apple.com/documentation/bundleresources/information_property_list/nsmainstoryboardfile) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSMainStoryboardFile(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSMicrophoneUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsmicrophoneusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSMicrophoneUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSMotionUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsmotionusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSMotionUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSNearbyInteractionAllowOnceUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsnearbyinteractionallowonceusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSNearbyInteractionAllowOnceUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSNearbyInteractionUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsnearbyinteractionusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSNearbyInteractionUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSNetworkVolumesUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsnetworkvolumesusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSNetworkVolumesUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSPhotoLibraryAddUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsphotolibraryaddusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSPhotoLibraryAddUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSPhotoLibraryUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsphotolibraryusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSPhotoLibraryUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSPrincipalClass](https://developer.apple.com/documentation/bundleresources/information_property_list/nsprincipalclass) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSPrincipalClass(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSRemindersUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsremindersusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSRemindersUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSRemovableVolumesUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsremovablevolumesusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSRemovableVolumesUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSSensorKitPrivacyPolicyURL](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitprivacypolicyurl) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSSensorKitPrivacyPolicyURL(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSSensorKitUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nssensorkitusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSSensorKitUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSSiriUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nssiriusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSSiriUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSSpeechRecognitionUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsspeechrecognitionusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSSpeechRecognitionUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the NSStickerSharingLevel key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSStickerSharingLevel(_ value: InfoplistKeyNsstickersharinglevelValue)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSSupportsLiveActivities](https://developer.apple.com/documentation/bundleresources/information_property_list/nssupportsliveactivities) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSSupportsLiveActivities(_ bool: Bool)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSSupportsLiveActivitiesFrequentUpdates](https://developer.apple.com/documentation/bundleresources/information_property_list/nssupportsliveactivitiesfrequentupdates) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSSupportsLiveActivitiesFrequentUpdates(_ bool: Bool)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSSystemAdministrationUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nssystemadministrationusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSSystemAdministrationUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the NSSystemExtensionUsageDescription key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSSystemExtensionUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSUserTrackingUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsusertrackingusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSUserTrackingUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [NSVideoSubscriberAccountUsageDescription](https://developer.apple.com/documentation/bundleresources/information_property_list/nsvideosubscriberaccountusagedescription) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSVideoSubscriberAccountUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the NSVoIPUsageDescription key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyNSVoIPUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the OSBundleUsageDescription key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyOSBundleUsageDescription(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIApplicationSceneManifest](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest) key in the Info.plist file to an entry suitable for a multi-window application.
        case infoPlistKeyUIApplicationSceneManifestGeneration(_ bool: Bool)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIApplicationSupportsIndirectInputEvents](https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationsupportsindirectinputevents) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyUIApplicationSupportsIndirectInputEvents(_ bool: Bool)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UILaunchScreen](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchscreen) key in the Info.plist file to an empty dictionary.
        case infoPlistKeyUILaunchScreenGeneration(_ bool: Bool)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UILaunchStoryboardName](https://developer.apple.com/documentation/bundleresources/information_property_list/uilaunchstoryboardname) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyUILaunchStoryboardName(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIMainStoryboardFile](https://developer.apple.com/documentation/bundleresources/information_property_list/uimainstoryboardfile) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyUIMainStoryboardFile(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIRequiredDeviceCapabilities](https://developer.apple.com/documentation/bundleresources/information_property_list/uirequireddevicecapabilities) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyUIRequiredDeviceCapabilities(_ values: [String])
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIRequiresFullScreen](https://developer.apple.com/documentation/bundleresources/information_property_list/uirequiresfullscreen) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyUIRequiresFullScreen(_ bool: Bool)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIStatusBarHidden](https://developer.apple.com/documentation/bundleresources/information_property_list/uistatusbarhidden) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyUIStatusBarHidden(_ bool: Bool)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIStatusBarStyle](https://developer.apple.com/documentation/bundleresources/information_property_list/uistatusbarstyle) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyUIStatusBarStyle(_ value: InfoplistKeyUistatusbarstyleValue)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UISupportedInterfaceOrientations](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportedinterfaceorientations) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyUISupportedInterfaceOrientations(_ values: [String])
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UISupportedInterfaceOrientations~iPad](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportedinterfaceorientations) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyUISupportedInterfaceOrientationsiPad(_ values: [String])
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UISupportedInterfaceOrientations~iPhone](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportedinterfaceorientations) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyUISupportedInterfaceOrientationsiPhone(_ values: [String])
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UISupportsDocumentBrowser](https://developer.apple.com/documentation/bundleresources/information_property_list/uisupportsdocumentbrowser) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyUISupportsDocumentBrowser(_ bool: Bool)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [UIUserInterfaceStyle](https://developer.apple.com/documentation/bundleresources/information_property_list/uiuserinterfacestyle) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyUIUserInterfaceStyle(_ value: InfoplistKeyUiuserinterfacestyleValue)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [WKCompanionAppBundleIdentifier](https://developer.apple.com/documentation/bundleresources/information_property_list/wkcompanionappbundleidentifier) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyWKCompanionAppBundleIdentifier(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [WKExtensionDelegateClassName](https://developer.apple.com/documentation/bundleresources/information_property_list/wkextensiondelegateclassname) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyWKExtensionDelegateClassName(_ value: String)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [WKRunsIndependentlyOfCompanionApp](https://developer.apple.com/documentation/bundleresources/information_property_list/wkrunsindependentlyofcompanionapp) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyWKRunsIndependentlyOfCompanionApp(_ bool: Bool)
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [WKWatchOnly](https://developer.apple.com/documentation/bundleresources/information_property_list/wkwatchonly) key in the `Info.plist` file to the value of this build setting.
        case infoPlistKeyWKWatchOnly(_ bool: Bool)
        case infoplistOtherPreprocessorFlags(_ values: [String] = [])
        case infoplistOutputFormat(_ value: InfoplistOutputFormatValue = .sameAsInput)
        /// Specifies the path to the bundle’s information property list file.
        case infoplistPath(_ path: Path = "")
        case infoplistPrefixHeader(_ value: String = "")
        case infoplistPreprocess(_ bool: Bool = false)
        case infoplistPreprocessorDefinitions(_ values: [String] = [])
        /// Specifies the file that contains the bundle’s localized strings file.
        case infostringsPath(_ path: Path = "")
        case initRoutine(_ value: String)
        /// Enables private framework inlining for Text-Based Stubs.
        case inlinePrivateFrameworks(_ bool: Bool = false)
        /// Specifies whether the target’s Copy Files build phases are executed in `installhdr` builds.
        case installhdrsCopyPhase(_ bool: Bool = false)
        /// Specifies whether the target’s Run Script build phases are executed in `installhdr` builds. See `ACTION` for details on `installhdr` builds.
        case installhdrsScriptPhase(_ bool: Bool = false)
        /// Identifies the directory in the developer’s filesystem into which the *installed* product is placed.
        case installDir(_ path: Path = "$(DSTROOT)$(INSTALL_PATH)")
        case installGroup(_ value: String = "$(GROUP)")
        case installModeFlag(_ value: String = "u+w,go-w,a+rX")
        case installOwner(_ value: String = "$(USER)")
        case installPath(_ value: String = "")
        case installRoot(_ path: Path = "$(DSTROOT)")
        case instrumentsPackageBuilder(_ path: Path = "instrumentbuilder")
        case instrumentsPackageBuilderDependencyInfoFile(_ value: String = "$(TARGET_TEMP_DIR)/instruments-package-builder.dependencies")
        case instrumentsPackageBuilderLinkedPackages(_ values: [String] = [])
        case instrumentsPackageBuilderNoSystemSearch(_ bool: Bool = false)
        case instrumentsPackageBuilderSearchPaths(_ values: [String] = ["$(BUILT_PRODUCTS_DIR)"])
        case instrumentsPackageBuilderVersionOverride(_ value: String = "")
        /// The Source-code language to use for generated Intent class.  By default "Automatic" will analyze your project to determine the correct language.  Adjust this setting to explicitly select "Swift" or "Objective-C".
        case intentsCodegenLanguage(_ value: IntentsCodegenLanguageValue = .automatic)
        case infoPlistPath(_ value: String)
        case javacDefaultFlags(_ values: [String] = ["-J-Xms64m", "-J-XX:NewSize=4M", "-J-Dfile.encoding=UTF8"])
        case javaAppStub(_ path: Path = "$(SYSTEM_LIBRARY_DIR)/Frameworks/JavaVM.framework/Resources/MacOS/JavaApplicationStub")
        case javaArchiveClasses(_ bool: Bool = true)
        case javaArchiveType(_ value: String = "JAR")
        case javaCompiler(_ path: Path = "/usr/bin/javac")
        case javaFolderPath(_ path: Path = "")
        case javaFrameworkJars(_ paths: [Path] = [])
        case javaFrameworkResourcesDirs(_ paths: [Path] = ["Resources"])
        case javaJarFlags(_ values: [String] = ["cv"])
        case javaSourceSubdir(_ path: Path = ".")
        case javaUseDependencies(_ bool: Bool = true)
        case javaZipFlags(_ values: [String] = ["-urg"])
        case jikesDefaultFlags(_ values: [String] = ["+E", "+OLDCSO"])
        case keepPrivateExterns(_ bool: Bool = false)
        case kextCFlags(_ values: [String] = [])
        case kextCPlusPlusFlags(_ values: [String] = ["$(KEXT_CFLAGS)"])
        case launchConstraintParent(_ value: String = "")
        case launchConstraintResponsible(_ value: String = "")
        case launchConstraintSelf(_ value: String = "")
        case ldAdditionalDeploymentTargetFlags(_ values: [String])
        case ldBitcodeGenerationMode(_ value: LdBitcodeGenerationModeValue)
        case ldDebugVariant(_ bool: Bool = true)
        case ldDependencyInfoFile(_ path: Path = "$(OBJECT_FILE_DIR_$(CURRENT_VARIANT))/$(CURRENT_ARCH)/$(PRODUCT_NAME)_dependency_info.dat")
        case ldDeterministicMode(_ bool: Bool = true)
        case ldDontRunDeduplication(_ bool: Bool = true)
        case ldDYLIBAllowableClients(_ values: [String] = [])
        case ldDYLIBInstallName(_ path: Path = "")
        case ldEntitlementsSection(_ value: String = "")
        case ldEntitlementsSectionDer(_ value: String = "")
        case ldEntryPoint(_ value: String)
        case ldExportGlobalSymbols(_ bool: Bool = false)
        case ldExportSymbols(_ bool: Bool = true)
        case ldFinalOutputFile(_ path: Path = "$(INSTALL_PATH)/$(EXECUTABLE_PATH)")
        case ldFlags(_ values: [String] = [])
        case ldGenerateBitcodeSymbolMap(_ bool: Bool = false)
        case ldGenerateMapFile(_ bool: Bool = false)
        case ldHideBitcodeSymbols(_ bool: Bool = false)
        case ldLTOObjectFile(_ path: Path = "$(OBJECT_FILE_DIR_$(CURRENT_VARIANT))/$(CURRENT_ARCH)/$(PRODUCT_NAME)_lto.o")
        case ldMakeMergeable(_ bool: Bool = false)
        case ldMapFilePath(_ path: Path = "$(TARGET_TEMP_DIR)/$(PRODUCT_NAME)-LinkMap-$(CURRENT_VARIANT)-$(CURRENT_ARCH).txt")
        case ldNoPie(_ bool: Bool = false)
        case ldOBJCABIVersion(_ value: LdObjcAbiVersionValue)
        case ldOptimizationLevel(_ value: String = "$(GCC_OPTIMIZATION_LEVEL)")
        case ldQuoteLinkerArgumentsForCompilerDriver(_ bool: Bool = true)
        case ldRunpathSearchPaths(_ paths: [Path] = [])
        case ldTargetTripleArchs(_ values: [String] = ["$(CURRENT_ARCH)"])
        case ldTargetTripleVariants(_ values: [String])
        case ldThreadSanitizer(_ bool: Bool = false)
        case ldVerifyBitcode(_ bool: Bool = true)
        case lex(_ path: Path = "lex")
        case lexFlags(_ values: [String] = [])
        case lexCaseInsensitiveScanner(_ bool: Bool = false)
        case lexInsertLineDirectives(_ bool: Bool = true)
        case lexSuppressDefaultRule(_ bool: Bool = false)
        case lexSuppressWarnings(_ bool: Bool = false)
        case libraryDEXTInstallPath(_ value: String = "$(LOCAL_LIBRARY_DIR)/DriverExtensions")
        case libraryFlagNospace(_ bool: Bool = true)
        case libraryFlagPrefix(_ value: String = "")
        case libraryKEXTInstallPath(_ value: String = "$(LOCAL_LIBRARY_DIR)/Extensions")
        case libraryLoadConstraint(_ value: String = "")
        case librarySearchPaths(_ paths: [Path])
        case libTool(_ path: Path = "libtool")
        case libToolDependencyInfoFile(_ path: Path = "$(OBJECT_FILE_DIR_$(CURRENT_VARIANT))/$(CURRENT_ARCH)/$(PRODUCT_NAME)_libtool_dependency_info.dat")
        case libToolDeploymentTarget(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))")
        case libToolDeterministicMode(_ bool: Bool = true)
        case linkerDisplaysMangledNames(_ bool: Bool = false)
        case linkerLibraryFlags(_ values: [String] = [])
        case linkWithStandardLibraries(_ bool: Bool = true)
        case llvmImplicitAggressiveOptimizations(_ bool: Bool = false)
        case llvmLTO(_ value: LlvmLtoValue = .no)
        case llvmOptimizationLevelVal0(_ bool: Bool = false)
        case llvmOptimizationLevelVal1(_ bool: Bool = false)
        case llvmOptimizationLevelVal2(_ bool: Bool = false)
        case llvmOptimizationLevelVal3(_ bool: Bool = false)
        case llvmOptimizationLevelValFast(_ bool: Bool = true)
        case llvmOptimizationLevelValS(_ bool: Bool = false)
        case llvmOptimizationLevelValZ(_ bool: Bool = false)
        case llvmTargetTripleOSVersion(_ value: String = "$(SWIFT_PLATFORM_TARGET_PREFIX)$($(DEPLOYMENT_TARGET_SETTING_NAME))")
        case llvmTargetTripleSuffix(_ value: String = "")
        case llvmTargetTripleVendor(_ value: String = "apple")
        case lmAuxConstMetadataFiles(_ values: [String] = [])
        case lmBinaryPath(_ value: String = "")
        case lmCompileTimeExtraction(_ bool: Bool = true)
        case lmDependencyFiles(_ values: [String] = [])
        case lmEnableAppNameOverride(_ bool: Bool = false)
        case lmEnableLinkGeneration(_ bool: Bool = true)
        case lmEnableStringValidation(_ bool: Bool = true)
        case lmForceLinkGeneration(_ bool: Bool = false)
        case lmIgnoreQueryGenericsErrors(_ bool: Bool = false)
        case lmLegacyExtractionOverride(_ bool: Bool = true)
        case lmSourceFiles(_ values: [String] = [])
        case lmStringsdataFiles(_ values: [String] = [])
        case localizableContentDir(_ path: Path = "")
        /// When enabled, localizable content in this target/project can be exported.
        case localizationExportSupported(_ bool: Bool = true)
        /// When enabled, string tables generated in a localization export will prefer the String Catalog format.
        case localizationPrefersStringCatalogs(_ bool: Bool = false)
        case localizedResourcesFolderPath(_ path: Path = "")
        /// The base names for NSLocalizedString-like macros or functions used to produce localized strings in source code. The default base names of NSLocalizedString and CFCopyLocalizedString are always considered, even if this setting is empty.
        case localizedStringMacroNames(_ values: [String] = ["NSLocalizedString", "CFCopyLocalizedString"])
        /// When enabled, literal strings in SwiftUI will be extracted during localization export. This will only extract string literals in `Text()` initializers, unless `SWIFT_EMIT_LOC_STRINGS` is also enabled.
        case localizedStringSwiftUISupport(_ bool: Bool = true)
        case locRoot(_ path: Path = "")
        case locSYMRoot(_ path: Path = "")
        case logname(_ value: String)
        case machOType(_ value: MachOTypeValue)
        case macOSCreator(_ value: String = "")
        case macOSCreatorArg(_ value: String = "")
        case macOSType(_ value: String = "")
        case macOSTypeArg(_ value: String = "")
        case macOSXVersionMaxAllowed(_ value: String)
        case macOSXVersionMinRequired(_ value: String)
        case makeMergeable(_ bool: Bool = false)
        case mapcModule(_ value: String = "$(PRODUCT_MODULE_NAME)")
        case mapcNoWarnings(_ bool: Bool = false)
        case marketingVersion(_ value: String = "")
        case mergeableLibrary(_ bool: Bool = false)
        case mergedBinaryType(_ value: MergedBinaryTypeValue = .none)
        case mergeLinkedLibraries(_ bool: Bool = false)
        case metalLibraryFileBase(_ value: String = "default")
        case metalLibraryOutputDir(_ value: String = "$(TARGET_BUILD_DIR)/$(UNLOCALIZED_RESOURCES_FOLDER_PATH)")
        case migDeploymentTarget(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))")
        case migExec(_ path: Path = "mig")
        case modulemapFile(_ value: String = "")
        case modulemapPrivateFile(_ value: String = "")
        /// Specifies the directory that contains the product’s Clang module maps and Swift module content.
        case modulesFolderPath(_ path: Path = "")
        /// Absolute path of folder in which compiler stores its cached modules—this cache is a performance improvement.
        case moduleCacheDir(_ path: Path = "$(DERIVED_DATA_DIR)/ModuleCache.noindex")
        case moduleName(_ value: String = "")
        case moduleStart(_ value: String = "")
        case moduleStop(_ value: String = "")
        case moduleVersion(_ value: String = "")
        case momcModule(_ value: String = "$(PRODUCT_MODULE_NAME)")
        case momcNoDeleteRuleWarnings(_ bool: Bool = false)
        case momcNoInverseRelationshipWarnings(_ bool: Bool = false)
        case momcNoMaxPropertyCountWarnings(_ bool: Bool = false)
        case momcNoWarnings(_ bool: Bool = false)
        case momcOutputSuffix(_ value: String = "$(MOMC_OUTPUT_SUFFIX_$(InputFileSuffix:identifier))")
        case momcOutputSuffixXcdatamodel(_ value: String = ".mom")
        case momcOutputSuffixXcdatamodeld(_ value: String = ".momd")
        case momcSuppressInverseTransientError(_ bool: Bool = false)
        case mtlCompilerDependencyInfoFile(_ value: String = "$(TARGET_TEMP_DIR)/Metal/$(InputFileBase)$(InputFileBaseUniquefier).dat")
        case mtlCompilerOutputFile(_ value: String = "$(TARGET_TEMP_DIR)/Metal/$(InputFileBase)$(InputFileBaseUniquefier).air")
        case mtllinkerAlternateLinker(_ value: String)
        case mtllinkerFlags(_ values: [String] = [])
        case mtllinkerIncludeSource(_ value: String)
        case mtllinkerOutputFile(_ value: String = "$(METAL_LIBRARY_OUTPUT_DIR)/$(METAL_LIBRARY_FILE_BASE).metallib")
        case mtllinkerTargetTriple(_ value: String = "air64-$(LLVM_TARGET_TRIPLE_VENDOR)-$(LLVM_TARGET_TRIPLE_OS_VERSION)$(LLVM_TARGET_TRIPLE_SUFFIX)")
        case mtlCompilerFlags(_ values: [String] = [])
        case mtlEnableDebugInfo(_ value: MtlEnableDebugInfoValue = .no)
        case mtlEnableIndexStore(_ bool: Bool = false)
        case mtlEnableModules(_ value: MtlEnableModulesValue = .stdlib)
        case mtlFastMath(_ bool: Bool = true)
        case mtlFrameworkSearchPathBuiltProductsDir(_ path: Path)
        case mtlHeaderSearchPaths(_ paths: [Path] = [])
        case mtlHeaderSearchPathBuiltProductsDir(_ path: Path)
        case mtlIgnoreWarnings(_ bool: Bool = false)
        case mtlIndexStorePath(_ path: Path = "$(INDEX_DATA_STORE_DIR)")
        case mtlLanguageRevision(_ value: MtlLanguageRevisionValue = .usedeploymenttarget)
        case mtlLanguageRevisionDialect(_ value: String = "$(MTL_LANGUAGE_REVISION_dialect_$(PLATFORM_NAME):default=ios)")
        case mtlLanguageRevisionDialectMacosx(_ value: String = "macos")
        case mtlLanguageRevisionOptgen(_ value: MtlLanguageRevisionOptgenValue)
        case mtlOptimizationLevel(_ value: MtlOptimizationLevelValue = .Default)
        case mtlPreprocessorDefinitions(_ values: [String])
        case mtlTargetTriple(_ value: String = "air64-$(LLVM_TARGET_TRIPLE_VENDOR)-$(LLVM_TARGET_TRIPLE_OS_VERSION)$(LLVM_TARGET_TRIPLE_SUFFIX)")
        case mtlTreatWarningsAsErrors(_ bool: Bool = false)
        case nasmOtherFlags(_ values: [String] = [])
        case nasmOutputFileFormat(_ value: String = "macho")
        case nasmPreincludeFile(_ value: String = "")
        /// Identifies the architecture on which the build is being performed.
        case nativeArch(_ value: String)
        case nativeArch32Bit(_ value: String)
        case nativeArch64Bit(_ value: String)
        case nativeArchActual(_ value: String)
        case noCommon(_ bool: Bool = true)
        /// Partially identifies the directory into which variant object files are placed. The complete specification is computed using the variants of this build setting.
        case objectFileDir(_ path: Path = "$(TEMP_DIR)/Objects")
        case objroot(_ path: Path = "$(SYMROOT)")
        case onlyActiveArch(_ bool: Bool = false)
        /// Defined a set of initial On Demand Resources tags to be downloaded and installed with your application.
        case onDemandResourcesInitialInstallTags(_ values: [String])
        /// Once your app is installed, this defined a set of On Demand Resources tags that should be downloaded. These tags are downloaded after the initial installation of your application, and will be downloaded in the order the tags provided in the list from first to last.
        case onDemandResourcesPrefetchOrder(_ values: [String])
        case openclc(_ value: String = "/System/Library/Frameworks/OpenCL.framework/Libraries/openclc")
        case openCLArchs(_ value: String = "i386 x86_64 gpu_32 gpu_64")
        case openCLAutoVectorizeEnable(_ bool: Bool = true)
        case openCLCompilerVersion(_ value: OpenclCompilerVersionValue = .cl11)
        case openCLDenormsAreZero(_ bool: Bool = false)
        case openCLDoubleAsSingle(_ bool: Bool = false)
        case openCLFastRelaxedMath(_ bool: Bool = false)
        case openCLMADEnable(_ bool: Bool = false)
        case openCLOptimizationLevel(_ value: OpenclOptimizationLevelValue = .s)
        case openCLOtherBCFlags(_ values: [String])
        case openCLPreprocessorDefinitions(_ values: [String])
        case optimizationCFlags(_ values: [String] = [])
        case orderFile(_ path: Path = "")
        case osac(_ path: Path = "/usr/bin/osacompile")
        case osacompileExecuteOnly(_ bool: Bool = false)
        case otherCFlags(_ values: [String])
        case otherCodeSignFlags(_ values: [String] = [])
        case otherCPlusPlusFlags(_ values: [String] = ["$(OTHER_CFLAGS)"])
        /// A list of additional flags to pass to DocC
        case otherDocCFlags(_ values: [String])
        /// Space-separated list of additional flags to pass to the `iig` invocation of clang. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `iig` flag
        case otherIIGCFlags(_ values: [String] = [])
        /// Space-separated list of additional flags to pass to the `iig` compiler. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `iig` flag
        case otherIIGFlags(_ values: [String] = [])
        case otherLDFlags(_ values: [String] = [])
        case otherLDRFlags(_ values: [String] = ["$(OTHER_LDFLAGS)"])
        case otherLIBToolFlags(_ values: [String] = [])
        case otherMIGFlags(_ values: [String] = [])
        case otherOSACompileFlags(_ values: [String] = [])
        case otherOSAFlags(_ values: [String] = [])
        case otherPrecompCFlags(_ values: [String] = [])
        case otherRCProjectFlags(_ values: [String] = [])
        case otherRealityAssetFlags(_ values: [String] = [])
        case otherRESMergerFlags(_ values: [String] = [])
        case otherREZFlags(_ values: [String] = [])
        case otherSkyboxFlags(_ values: [String] = [])
        case otherSwiftABICheckerFlags(_ values: [String])
        /// A list of additional flags to pass to the Swift compiler.
        case otherSwiftFlags(_ values: [String])
        case otherSwiftSTDLibToolFlags(_ values: [String] = [])
        /// Options defined in this setting are passed to invocations of the `Text-Based InstallAPI` tool.
        case otherTAPIFlags(_ values: [String] = [])
        case otherUSDZFlags(_ values: [String] = [])
        case outputformat(_ value: OutputformatValue = .none)
        /// Uniform type identifier. Identifies the type of the product the target builds. Some products may be made up of a single binary or archive. Others may comprise several files, which are grouped under a single directory. These container directories are known as *bundles*.
        case packageType(_ value: String = "")
        case pascalStrings(_ bool: Bool = true)
        case pathPrefixesExcludedFromHeaderDependencies(_ paths: [Path] = ["/usr/include", "/usr/local/include", "/System/Library/Frameworks", "/System/Library/PrivateFrameworks", "$(SYSTEM_DEVELOPER_DIR)/Headers", "$(SYSTEM_DEVELOPER_DIR)/SDKs", "$(SYSTEM_DEVELOPER_DIR)/Platforms"])
        case pbDevelopmentPlistPath(_ path: Path = "")
        case pbxcpBitcodeStripMode(_ value: PbxcpBitcodeStripModeValue = .empty)
        case pbxcpBitcodeStripTool(_ path: Path = "")
        case pbxcpExcludeSubpaths(_ values: [String] = [])
        case pbxcpIgnoreMissingInputs(_ bool: Bool = false)
        case pbxcpIncludeOnlySubpaths(_ values: [String] = [])
        case pbxcpStripBitcode(_ bool: Bool = false)
        case pbxcpStripSubpaths(_ values: [String] = [])
        case pbxcpStripTool(_ path: Path = "")
        case pbxcpStripUnsignedBinaries(_ bool: Bool = false)
        case perStyleBuildDirectories(_ bool: Bool = true)
        case pfeFileCDialects(_ values: [String] = [])
        case pkginfoPath(_ path: Path = "")
        case platformName(_ value: String)
        case plistFileOutputFormat(_ value: PlistFileOutputFormatValue)
        /// Specifies the directory that contains the product’s plugins.
        case pluginsFolderPath(_ path: Path = "")
        case precompilePrefixHeader(_ bool: Bool = false)
        case precompsIncludeHeadersFromBuiltProductsDir(_ bool: Bool = true)
        case precompDestinationDir(_ path: Path = "$(TARGET_TEMP_DIR)/PrefixHeaders")
        case prefixCFlagBase(_ value: String = "")
        case prefixFlags(_ values: [String] = [])
        case prefixHeader(_ path: Path = "")
        case prefixReference(_ value: String = "")
        case prelinkFlags(_ values: [String] = [])
        case prelinkLibs(_ values: [String] = [])
        case preserveDeadCodeInitsAndTerms(_ bool: Bool = false)
        case privateHeadersFolderPath(_ value: String = "")
        /// A string that uniquely identifies the bundle. The string should be in reverse DNS format using only alphanumeric characters (`A-Z`, `a-z`, `0-9`), the dot (`.`), and the hyphen (`-`).
        ///
        /// When `GENERATE_INFOPLIST_FILE` is enabled, sets the value of the [CFBundleIdentifier](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleidentifier) key in the `Info.plist` file to the value of this build setting.
        case productBundleIdentifier(_ value: String = "")
        case productModuleName(_ value: String = "$(PRODUCT_NAME:c99extidentifier)")
        case productName(_ value: String = "")
        case productType(_ value: String = "")
        case productTypeFrameworkSearchPaths(_ paths: [Path])
        case productTypeLibrarySearchPaths(_ paths: [Path])
        case productTypeSwiftSTDLibToolFlags(_ values: [String] = [])
        case profilingCode(_ bool: Bool = false)
        case projectDerivedFileDir(_ path: Path = "$(OBJROOT)/$(PROJECT_NAME).build/DerivedSources")
        case projectDir(_ path: Path = "$(SRCROOT)")
        /// The name of the current project.
        case projectName(_ value: String = "")
        /// Identifies the directory in which the project’s intermediate build files are placed. This directory is shared between all the targets defined by the project. Run Script build phases should generate intermediate build files in the directory identified by `DERIVED_FILE_DIR`, not the location this build setting specifies.
        case projectTempDir(_ path: Path = "$(PROJECT_TEMP_ROOT)/$(PROJECT_NAME).build")
        case projectTempRoot(_ path: Path = "$(OBJROOT)")
        case provisioningProfile(_ value: String = "")
        case provisioningProfileDestinationPath(_ value: String = "$(TARGET_BUILD_DIR)/$(CONTENTS_FOLDER_PATH)")
        case provisioningProfileSpecifier(_ value: String = "")
        case publicHeadersFolderPath(_ value: String = "")
        case pwd(_ value: String)
        /// The Source-code language to use for generated RC objects.  By default Xcode will generate Swift types that represent the objects in your scene.  Adjust this setting to explicitly select "Swift", or select "None" to disable RC object generation.
        case rcProjectCodegenLanguage(_ value: RcprojectCodegenLanguageValue = .swift)
        case rcProjectCodegenSwiftVersion(_ value: String = "$(SWIFT_VERSION)")
        case rcProjectEnableWarnings(_ value: RcprojectEnableWarningsValue = .yes)
        case realityAssetDeploymentTarget(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))")
        case realityAssetEnableWarnings(_ value: RealityassetEnableWarningsValue = .yes)
        case recursiveSearchPathsFollowSYMLINKS(_ bool: Bool = true)
        case reexportedFrameworkInstallNames(_ values: [String])
        case reexportedFrameworkNames(_ values: [String])
        case reexportedLibraryInstallNames(_ paths: [Path])
        case reexportedLibraryNames(_ values: [String])
        case reexportedLibraryPaths(_ paths: [Path])
        case removeCVSFromResources(_ bool: Bool = true)
        case removeGitFromResources(_ bool: Bool = true)
        case removeHeadersFromEmbeddedBundles(_ bool: Bool = true)
        case removeHeaderDirectories(_ bool: Bool = false)
        case removeHGFromResources(_ bool: Bool = true)
        case removeStaticExecutablesFromEmbeddedBundles(_ bool: Bool = true)
        case removeSVNFromResources(_ bool: Bool = true)
        case resmergerSourcesFork(_ value: ResmergerSourcesForkValue = .auto)
        case resourcesPlatformName(_ value: String)
        case resourcesTargetedDeviceFamily(_ values: [String])
        case resourcesUiFrameworkFamily(_ value: String)
        case resourceRulesPlistPath(_ path: Path = "")
        /// Specifies whether to keep copies of unstripped binaries available.
        case retainRawBinaries(_ bool: Bool = false)
        /// Specifies the directory in which the collected Resource Manager resources generated by `ResMerger` are stored before they are added to the product.
        case rezCollectorDir(_ path: Path = "$(TARGET_TEMP_DIR)/ResourceManagerResources")
        case rezExecutable(_ value: String = "")
        /// Specifies the directory in which compiled Resource Manager resources generated by `Rez` are stored before they are collected using `ResMerger`.
        case rezObjectsDir(_ path: Path = "$(REZ_COLLECTOR_DIR)/Objects")
        case rezPrefixFile(_ value: String = "")
        case rezPreprocessorDefinitions(_ values: [String] = [])
        case rezPreprocessorUndefinitions(_ values: [String] = [])
        case rezResolveAliases(_ value: RezResolveAliasesValue = .always)
        case rezResourceMapReadOnly(_ bool: Bool = false)
        case rezScriptType(_ value: RezScriptTypeValue = .roman)
        case rezSearchPaths(_ values: [String] = [])
        case rezShowDebugOutput(_ bool: Bool = false)
        case rezSuppressRedeclaredResourceTypeWarnings(_ bool: Bool = false)
        case runClangStaticAnalyzer(_ bool: Bool = false)
        /// Also build documentation as part of the 'Build' action.
        case runDocumentationCompiler(_ bool: Bool = false)
        case removeFile(_ bool: Bool)
        case requiredarchitectures(_ values: [String])
        case scanAllSourceFilesForIncludes(_ bool: Bool = false)
        case scenekitDeploymentTarget(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))")
        /// Specifies the directory that contains the product’s scripts.
        case scriptsFolderPath(_ path: Path = "")
        case sdkdbToSymgraphExec(_ path: Path = "$(DEVELOPER_DIR)/../SharedFrameworks/CoreDocumentation.framework/Resources/sdkdb_to_symgraph")
        case sdkroot(_ path: Path)
        case sdkStatCacheEnable(_ bool: Bool = true)
        case sdkStatCacheVerboseLogging(_ bool: Bool = false)
        case sectOrderFlags(_ values: [String] = [])
        case sed(_ path: Path = "/usr/bin/sed")
        case separateStrip(_ bool: Bool = false)
        case separateSymbolEdit(_ bool: Bool = false)
        case setDirModeOwnerGroup(_ bool: Bool = true)
        case setFileModeOwnerGroup(_ bool: Bool = false)
        case shallowBundle(_ bool: Bool = false)
        case sharedDerivedFileDir(_ path: Path = "$(BUILT_PRODUCTS_DIR)/DerivedSources")
        /// Specifies the directory that contains the product’s shared frameworks.
        case sharedFrameworksFolderPath(_ path: Path = "")
        case sharedPrecompsDir(_ value: String = "$(OBJROOT)/SharedPrecompiledHeaders")
        case sharedSupportFolderPath(_ path: Path = "")
        case shell(_ value: String)
        case skipInstall(_ bool: Bool = false)
        case skyboxEnableWarnings(_ value: SkyboxEnableWarningsValue = .yes)
        case sourceRoot(_ path: Path = "$(SRCROOT)")
        /// Identifies the directory containing the target’s source files.
        case srcRoot(_ path: Path = ".")
        case storyboardCompilerInfoplistContentFile(_ path: Path = "$(TARGET_TEMP_DIR)/$(InputFileRegionPathComponent)$(InputFileBase)-SBPartialInfo.plist")
        /// The location to write .stringsdata files to when SWIFT_EMIT_LOC_STRINGS is enabled.
        case stringsdataDir(_ value: String = "$(OBJECT_FILE_DIR_$(CURRENT_VARIANT))/$(CURRENT_ARCH)")
        /// The location to traverse and collect .stringsdata files from when exporting for localization.
        case stringsdataRoot(_ value: String = "$(TARGET_TEMP_DIR)")
        case stringsFileInfoplistRename(_ bool: Bool = true)
        case stringsFileInputEncoding(_ value: String = "$(InputFileTextEncoding)")
        case stringsFileOutputEncoding(_ value: String = "UTF-16")
        case stringsFileOutputFilename(_ value: String = "$(InputFileName)")
        case stripflags(_ values: [String])
        case stripBitcodeFromCopiedFiles(_ bool: Bool = false)
        case stripDeterministicMode(_ bool: Bool = true)
        case stripInstalledProduct(_ bool: Bool = true)
        /// Metadata in the form of text chunks in PNG files will be removed to reduce their footprint on disk.
        case stripPNGText(_ bool: Bool = true)
        case stripStyle(_ value: StripStyleValue)
        case stripSwiftSymbols(_ bool: Bool)
        case supportedPlatforms(_ values: [String] = [])
        /// Enable to indicate that the target supports `Text-Based InstallAPI`, which will enable its generation during `install` builds.
        case supportsTextBasedAPI(_ bool: Bool = false)
        /// A list of compilation conditions to enable for conditional compilation expressions.
        case swiftActiveCompilationConditions(_ values: [String] = [])
        case swiftAddressSanitizer(_ bool: Bool = false)
        case swiftAddressSanitizerAllowErrorRecovery(_ bool: Bool = false)
        case swiftBitcodeGenerationMode(_ value: SwiftBitcodeGenerationModeValue)
        case swiftClangCXXLanguageStandard(_ value: String = "$(SWIFT_OBJC_INTEROP_MODE)-$(CLANG_CXX_LANGUAGE_STANDARD)")
        case swiftCompilationMode(_ value: SwiftCompilationModeValue = .singlefile)
        case swiftCrossModuleOptimization(_ bool: Bool = false)
        case swiftDeploymentTarget(_ value: String = "$($(DEPLOYMENT_TARGET_SETTING_NAME))")
        /// Disable runtime safety checks when optimizing.
        case swiftDisableSafetyChecks(_ bool: Bool = false)
        /// A list of protocol names whose conformances the Swift compiler is to emit compile-time-known values for.
        case swiftEmitConstValueProtocols(_ values: [String] = ["AppIntent", "EntityQuery", "AppEntity", "TransientEntity", "AppEnum", "AppShortcutProviding", "AppShortcutsProvider", "AnyResolverProviding", "AppIntentsPackage", "DynamicOptionsProvider"])
        /// When enabled, the Swift compiler will be used to extract Swift string literal and interpolation `LocalizedStringKey` and `LocalizationKey` types during localization export.
        case swiftEmitLOCStrings(_ bool: Bool = false)
        case swiftEmitModuleInterface(_ bool: Bool = false)
        case swiftEnableAppExtension(_ bool: Bool = false)
        /// Enable the use of forward slash regular-expression literal syntax (-enable-bare-slash-regex)
        case swiftEnableBareSlashRegex(_ bool: Bool = true)
        case swiftEnableBatchMode(_ bool: Bool = true)
        /// Emit the extracted compile-time known values from the Swift compiler (-emit-const-values)
        case swiftEnableEmitConstValues(_ bool: Bool = true)
        case swiftEnableIncrementalCompilation(_ bool: Bool = true)
        case swiftEnableLibraryEvolution(_ bool: Bool = false)
        case swiftEnableOpaqueTypeErasure(_ bool: Bool = true)
        case swiftEnableTestability(_ bool: Bool = false)
        /// Enforce exclusive access at run-time.
        case swiftEnforceExclusiveAccess(_ value: SwiftEnforceExclusiveAccessValue = .on)
        case swiftExec(_ path: Path = "swiftc")
        /// A list of paths to be searched by the Swift compiler for additional Swift modules.
        case swiftIncludePaths(_ paths: [Path])
        case swiftIndexStoreEnable(_ bool: Bool = false)
        case swiftIndexStorePath(_ path: Path = "$(INDEX_DATA_STORE_DIR)")
        /// For frameworks, install the Swift module so it can be accessed from Swift code using the framework.
        case swiftInstallModule(_ bool: Bool = true)
        /// For frameworks, install the C++/Objective-C generated header describing bridged Swift types into the `PUBLIC_HEADERS_FOLDER_PATH` so they may be accessed from Objective-C or C++ code using the framework. Defaults to `YES`.
        case swiftInstallOBJCHeader(_ bool: Bool = true)
        case swiftLibrariesOnly(_ bool: Bool = false)
        case swiftLibraryPath(_ path: Path = "")
        case swiftLinkOBJCRuntime(_ bool: Bool = false)
        case swiftMigrateCode(_ bool: Bool)
        case swiftModuleAliases(_ values: [String] = [])
        case swiftModuleName(_ value: String = "$(PRODUCT_MODULE_NAME)")
        /// Path to the header defining the Objective-C interfaces to be exposed in Swift.
        case swiftOBJCBridgingHeader(_ value: String = "")
        /// Name to use for the header that is generated by the Swift compiler for use in `#import` statements in Objective-C or C++.
        case swiftOBJCInterfaceHeaderName(_ value: String = "$(SWIFT_MODULE_NAME)-Swift.h")
        /// Determines whether Swift can interoperate with C++ in addition to Objective-C.
        case swiftOBJCInteropMode(_ value: SwiftObjcInteropModeValue = .objc)
        case swiftOptimizationLevel(_ value: SwiftOptimizationLevelValue = .o)
        /// An identifier that allows grouping of modules with access to symbols with a package access modifier.
        case swiftPackageName(_ value: String)
        case swiftPlatformTargetPrefix(_ value: String = "")
        /// Generate a precompiled header for the Objective-C bridging header, if used, in order to reduce overall build times.
        case swiftPrecompileBridgingHeader(_ bool: Bool = true)
        case swiftReflectionMetadataLevel(_ value: SwiftReflectionMetadataLevelValue = .all)
        case swiftResourceDir(_ path: Path)
        case swiftResponseFilePath(_ path: Path = "$(SWIFT_RESPONSE_FILE_PATH_$(variant)_$(arch))")
        case swiftSerializeDebuggingOptions(_ bool: Bool = true)
        case swiftSTDLib(_ value: String = "swiftCore")
        case swiftSTDLibToolAction(_ value: String)
        case swiftSTDLibToolCodeSignIdentity(_ value: String = "$(EXPANDED_CODE_SIGN_IDENTITY)")
        case swiftSTDLibToolDestinationDir(_ path: Path = "$(TARGET_BUILD_DIR)/$(FRAMEWORKS_FOLDER_PATH)")
        case swiftSTDLibToolExecutableToScan(_ path: Path = "$(InputPath)")
        case swiftSTDLibToolFoldersToScan(_ paths: [Path] = [])
        case swiftSTDLibToolKeychain(_ value: String = "$(CODE_SIGN_KEYCHAIN)")
        case swiftSTDLibToolOtherCodeSignFlags(_ values: [String] = ["$(OTHER_CODE_SIGN_FLAGS)"])
        case swiftSTDLibToolSourceLibraries(_ path: Path = "$(SWIFT_LIBRARY_PATH)")
        case swiftSTDLibToolStripBitcode(_ bool: Bool = true)
        case swiftSTDLibToolToolchains(_ paths: [Path] = ["$(EFFECTIVE_TOOLCHAINS_DIRS)"])
        case swiftSTDLibToolUnsignedDestinationDir(_ path: Path = "")
        case swiftSTDLibToolVerbosity(_ value: SwiftStdlibToolVerbosityValue = .verbose)
        case swiftStrictConcurrency(_ value: SwiftStrictConcurrencyValue = .minimal)
        /// Don't emit any warnings.
        case swiftSuppressWarnings(_ bool: Bool = false)
        case swiftTargetTriple(_ value: String = "$(CURRENT_ARCH)-apple-$(SWIFT_PLATFORM_TARGET_PREFIX)$(SWIFT_DEPLOYMENT_TARGET)$(LLVM_TARGET_TRIPLE_SUFFIX)")
        case swiftTargetTripleVariants(_ values: [String])
        case swiftThreadSanitizer(_ bool: Bool = false)
        case swiftToolchainFlags(_ values: [String])
        /// Treat all warnings as errors.
        case swiftTreatWarningsAsErrors(_ bool: Bool = false)
        case swiftUseParallelWholeModuleOptimization(_ bool: Bool = true)
        case swiftUseParallelWMOTargets(_ bool: Bool = true)
        case swiftValidateClangModulesOncePerBuildSession(_ bool: Bool = true)
        /// The language version used to compile the target's Swift code.
        case swiftVersion(_ value: String = "")
        case swiftWholeModuleOptimization(_ bool: Bool = false)
        case symbolGraphExtractorExec(_ path: Path = "swift-symbolgraph-extract")
        case symbolGraphExtractorModuleCachePath(_ path: Path = "$(MODULE_CACHE_DIR)")
        /// The name of the main module to extract.
        case symbolGraphExtractorModuleName(_ value: String = "$(PRODUCT_MODULE_NAME)")
        case symbolGraphExtractorOutputBase(_ value: String = "$(TARGET_TEMP_DIR)/symbol-graph")
        /// The symbol graph JSON output directory.
        case symbolGraphExtractorOutputDir(_ value: String = "$(SYMBOL_GRAPH_EXTRACTOR_OUTPUT_BASE)/swift/$(SYMBOL_GRAPH_EXTRACTOR_TARGET_TRIPLE)")
        case symbolGraphExtractorSDK(_ value: String = "$(SDKROOT)")
        case symbolGraphExtractorSearchPaths(_ values: [String] = [])
        case symbolGraphExtractorSwiftVersion(_ value: String = "$(SWIFT_VERSION)")
        case symbolGraphExtractorTargetTriple(_ value: String = "$(SWIFT_TARGET_TRIPLE)")
        case symbolHeader(_ path: Path = "")
        case symroot(_ path: Path = "build")
        case systemDEXTInstallPath(_ value: String = "$(SYSTEM_LIBRARY_DIR)/DriverExtensions")
        case systemFrameworkSearchPaths(_ paths: [Path])
        case systemHeaderSearchPaths(_ paths: [Path])
        case systemKEXTInstallPath(_ value: String = "$(SYSTEM_LIBRARY_DIR)/Extensions")
        case signingCert(_ value: String)
        case tapiApplicationExtensionAPIOnly(_ bool: Bool = false)
        /// Display demangled symbols when building `Text-Based InstallAPI`.
        case tapiDemangle(_ bool: Bool = true)
        case tapiDYLIBAllowableClients(_ values: [String] = ["$(LD_DYLIB_ALLOWABLE_CLIENTS)"])
        case tapiDYLIBCompatibilityVersion(_ path: Path = "$(DYLIB_COMPATIBILITY_VERSION)")
        case tapiDYLIBCurrentVersion(_ path: Path = "$(DYLIB_CURRENT_VERSION)")
        case tapiDYLIBInstallName(_ path: Path = "$(LD_DYLIB_INSTALL_NAME)")
        case tapiEmitProfilingSymbols(_ bool: Bool = true)
        case tapiEnableModules(_ bool: Bool = false)
        /// Include project-level headers when building `Text-Based InstallAPI`.
        case tapiEnableProjectHeaders(_ bool: Bool = false)
        case tapiEnableVerificationMode(_ bool: Bool = true)
        /// Remove private-level headers from target when building `Text-Based InstallAPI`.
        case tapiExcludePrivateHeaders(_ values: [String] = [])
        /// Remove project-level headers from target when building `Text-Based InstallAPI`.
        case tapiExcludeProjectHeaders(_ values: [String] = [])
        /// Remove public-level headers from target when building `Text-Based InstallAPI`.
        case tapiExcludePublicHeaders(_ values: [String] = [])
        case tapiExec(_ path: Path = "tapi")
        case tapiExtractAPIEnableModules(_ bool: Bool = false)
        case tapiExtractAPIEnableOBJCARC(_ bool: Bool = false)
        case tapiExtractAPIModuleCachePath(_ path: Path = "$(MODULE_CACHE_DIR)")
        case tapiExtractAPIOutputDir(_ path: Path = "$(SYMBOL_GRAPH_EXTRACTOR_OUTPUT_BASE)/clang/$(TAPI_EXTRACT_API_TARGET_TRIPLE)")
        case tapiExtractAPISDKDBOutputPath(_ path: Path = "$(TAPI_EXTRACT_API_OUTPUT_DIR)/$(PRODUCT_NAME).sdkdb")
        case tapiExtractAPISearchPaths(_ values: [String] = [])
        case tapiExtractAPISystemRoot(_ path: Path = "${SDKROOT}")
        case tapiExtractAPITargetTriple(_ value: String = "$(CURRENT_ARCH)-$(LLVM_TARGET_TRIPLE_VENDOR)-$(LLVM_TARGET_TRIPLE_OS_VERSION)$(LLVM_TARGET_TRIPLE_SUFFIX)")
        /// Add private-level headers from other targets when building `Text-Based InstallAPI`.
        case tapiExtraPrivateHeaders(_ values: [String] = [])
        /// Add project-level headers from other targets when building `Text-Based InstallAPI`.
        case tapiExtraProjectHeaders(_ values: [String] = [])
        /// Add public-level headers from other targets when building `Text-Based InstallAPI`.
        case tapiExtraPublicHeaders(_ values: [String] = [])
        case tapiFrameworkSearchPaths(_ paths: [Path] = ["$(FRAMEWORK_SEARCH_PATHS)"])
        case tapiHeaderSearchPaths(_ paths: [Path] = ["$(HEADER_SEARCH_PATHS)"])
        case tapiInputs(_ paths: [Path])
        /// Selects the language mode when building `Text-Based InstallAPI`.
        case tapiLanguage(_ value: TapiLanguageValue = .objectiveC)
        /// Selects the langauge dialect when building `Text-Based InstallAPI`.
        case tapiLanguageStandard(_ value: TapiLanguageStandardValue = .compilerDefault)
        case tapiLibrarySearchPaths(_ paths: [Path] = ["$(LIBRARY_SEARCH_PATHS)"])
        case tapiModulesValidateSystemHeaders(_ bool: Bool = false)
        case tapiModuleCachePath(_ value: String = "$(CLANG_MODULE_CACHE_PATH)")
        case tapiPreprocessorDefinitions(_ values: [String] = ["$(GCC_PREPROCESSOR_DEFINITIONS)", "$(GCC_PREPROCESSOR_DEFINITIONS_NOT_USED_IN_PRECOMPS)"])
        case tapiProductType(_ value: String = "$(PRODUCT_TYPE)")
        case tapiReadDSYM(_ bool: Bool = false)
        case tapiReexportedFrameworkInstallNames(_ values: [String] = ["$(REEXPORTED_FRAMEWORK_INSTALL_NAMES)"])
        case tapiReexportedFrameworkNames(_ values: [String] = ["$(REEXPORTED_FRAMEWORK_NAMES)"])
        case tapiReexportedLibraryInstallNames(_ values: [String] = ["$(REEXPORTED_LIBRARY_INSTALL_NAMES)"])
        case tapiReexportedLibraryNames(_ values: [String] = ["$(REEXPORTED_LIBRARY_NAMES)"])
        case tapiReexportedLibraryPaths(_ values: [String] = ["$(REEXPORTED_LIBRARY_PATHS)"])
        case tapiRunpathSearchPaths(_ paths: [Path] = ["$(LD_RUNPATH_SEARCH_PATHS)"])
        case tapiSystemFrameworkSearchPaths(_ paths: [Path] = ["$(SYSTEM_FRAMEWORK_SEARCH_PATHS)"])
        case tapiSystemHeaderSearchPaths(_ paths: [Path] = ["$(SYSTEM_HEADER_SEARCH_PATHS)"])
        case tapiTargetTripleArchs(_ values: [String] = ["$(ARCHS)"])
        case tapiTargetTripleVariants(_ values: [String])
        case tapiUseSRCRoot(_ bool: Bool = false)
        case tapiVerifyAgainst(_ value: String = "$(BuiltBinaryPath)")
        /// Selects the level of warnings and errors to report when building `Text-Based InstallAPI`.
        case tapiVerifyMode(_ value: TapiVerifyModeValue = .errorsonly)
        case targetBuildDir(_ value: String)
        case targetBuildSubpath(_ path: Path = "")
        /// The name of the current target.
        case targetName(_ value: String = "")
        case targetTempDir(_ value: String)
        case tempDir(_ path: Path = "$(TARGET_TEMP_DIR)")
        case tempFilesDir(_ path: Path = "$(TEMP_FILE_DIR)")
        case tempFileDir(_ path: Path = "$(TEMP_DIR)")
        case tempRoot(_ path: Path = "$(OBJROOT)")
        case testHost(_ value: String = "")
        case textureAtlasEnableWarnings(_ value: TextureAtlasEnableWarningsValue = .yes)
        case textureAtlasFormat(_ value: TextureAtlasFormatValue = .rgba8888Png)
        case textureAtlasMaximumSize(_ value: TextureAtlasMaximumSizeValue = ._2048x2048)
        case toolchains(_ values: [String])
        case treatMissingBaselinesAsTestFailures(_ bool: Bool = false)
        case unexportedSymbolsFile(_ path: Path)
        case uninstalledProductsDir(_ path: Path = "$(TEMP_ROOT)/UninstalledProducts")
        case unlocalizedResourcesFolderPath(_ value: String)
        case unstrippedProduct(_ bool: Bool = false)
        case usdzEnableWarnings(_ value: UsdzEnableWarningsValue = .yes)
        case user(_ value: String)
        case userHeaderSearchPaths(_ paths: [Path])
        case useDynamicNoPic(_ bool: Bool = true)
        case useGCC3PFESupport(_ bool: Bool = false)
        case useHeadermap(_ bool: Bool = true)
        case useHeaderSYMLINKS(_ bool: Bool = false)
        case validatePlistFilesWhileCopying(_ bool: Bool = false)
        case validateProduct(_ bool: Bool = false)
        case validateStringsFilesWhileCopying(_ bool: Bool = true)
        case validArchs(_ values: [String])
        case verbosePBXCP(_ bool: Bool = false)
        case versioningStub(_ value: String = "")
        case versioningSystem(_ value: VersioningSystemValue = .empty)
        case versionplistPath(_ path: Path = "")
        case versionsFolderPath(_ value: String = "")
        case versionInfoBuilder(_ value: String = "")
        case versionInfoExportDecl(_ value: String = "")
        case versionInfoFile(_ value: String = "")
        case versionInfoPrefix(_ value: String = "")
        case versionInfoString(_ value: String = "\"@(#)PROGRAM:$(PRODUCT_NAME)  PROJECT:$(PROJECT_NAME)-$(CURRENT_PROJECT_VERSION)\"")
        case versionInfoSuffix(_ value: String = "")
        case validateForStore(_ bool: Bool)
        case warningCFlags(_ values: [String] = [])
        case warningLDFlags(_ values: [String] = [])
        case wrapperExtension(_ value: String = "")
        /// Specifies the filename, including the appropriate extension, of the product bundle.
        case wrapperName(_ value: String = "")
        case wrapperPrefix(_ value: String = "")
        /// Specifies the suffix of the product bundle name, including the character that separates the extension from the rest of the bundle name.
        case wrapperSuffix(_ value: String = "")
        case wrapAssetPacksInSeparateDirectories(_ bool: Bool = false)
        case xcodeDeveloperDirPath(_ value: String)
        case xcstringsForceBuildAllStrings(_ bool: Bool = false)
        case xcstringsLanguagesToCompile(_ values: [String] = ["[]"])
        case xibCompilerInfoplistContentFile(_ path: Path = "$(TARGET_TEMP_DIR)/$(InputFileRegionPathComponent)$(InputFileBase)-PartialInfo.plist")
        case xpcServicesFolderPath(_ path: Path = "$(CONTENTS_FOLDER_PATH)/XPCServices")
        case yacc(_ path: Path = "yacc")
        case yaccFlags(_ values: [String] = [])
        case yaccGeneratedFileStem(_ value: YaccGeneratedFileStemValue = .standard)
        case yaccGenerateDebuggingDirectives(_ bool: Bool = false)
        case yaccInsertLineDirectives(_ bool: Bool = true)
        case ExcludeDsStoreFiles(_ value: String)
        case ResolveSrcSymlinks(_ value: String)
        case arch(_ value: String)
        case buildFileCompilerFlags(_ values: [String] = [])
        case diagnosticMessageLength(_ value: String = "0")
        case migGenerateClientSources(_ bool: Bool = true)
        case migGenerateServerSources(_ bool: Bool = false)
        case printNoteIncludeStack(_ bool: Bool = true)

        var info: (key: String, value: SettingValue) {
            switch self {
                case .action(let value):
                    return ("ACTION", .string(value))
                case .additionalSDKs(let value):
                    return ("ADDITIONAL_SDKS", .array(value))
                case .allowTargetPlatformSpecialization(let value):
                    return ("ALLOW_TARGET_PLATFORM_SPECIALIZATION", .init(booleanLiteral: value))
                case .allOtherLDFlags(let value):
                    return ("ALL_OTHER_LDFLAGS", .array(value))
                case .allOtherLIBToolFlags(let value):
                    return ("ALL_OTHER_LIBTOOLFLAGS", .array(value))
                case .alternateGroup(let value):
                    return ("ALTERNATE_GROUP", .string(value))
                case .alternateLinker(let value):
                    return ("ALTERNATE_LINKER", .string(value))
                case .alternateMode(let value):
                    return ("ALTERNATE_MODE", .string(value))
                case .alternateOwner(let value):
                    return ("ALTERNATE_OWNER", .string(value))
                case .alternatePermissionsFiles(let value):
                    return ("ALTERNATE_PERMISSIONS_FILES", .array(value))
                case .alwaysEmbedSwiftStandardLibraries(let value):
                    return ("ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES", .init(booleanLiteral: value))
                case .alwaysSearchUserPaths(let value):
                    return ("ALWAYS_SEARCH_USER_PATHS", .init(booleanLiteral: value))
                case .alwaysUseSeparateHeadermaps(let value):
                    return ("ALWAYS_USE_SEPARATE_HEADERMAPS", .init(booleanLiteral: value))
                case .applicationExtensionAPIOnly(let value):
                    return ("APPLICATION_EXTENSION_API_ONLY", .init(booleanLiteral: value))
                case .applyRulesInCopyFiles(let value):
                    return ("APPLY_RULES_IN_COPY_FILES", .init(booleanLiteral: value))
                case .applyRulesInCopyHeaders(let value):
                    return ("APPLY_RULES_IN_COPY_HEADERS", .init(booleanLiteral: value))
                case .appIntentsDeploymentPostprocessing(let value):
                    return ("APP_INTENTS_DEPLOYMENT_POSTPROCESSING", .init(booleanLiteral: value))
                case .appIntentsDeploymentTarget(let value):
                    return ("APP_INTENTS_DEPLOYMENT_TARGET", .string(value))
                case .appIntentsMetadataPath(let value):
                    return ("APP_INTENTS_METADATA_PATH", .string(value))
                case .appIntentsPlatformFamily(let value):
                    return ("APP_INTENTS_PLATFORM_FAMILY", .string(value))
                case .appShortcutsEnableFlexibleMatching(let value):
                    return ("APP_SHORTCUTS_ENABLE_FLEXIBLE_MATCHING", .init(booleanLiteral: value))
                case .archs(let value):
                    return ("ARCHS", .array(value))
                case .archsStandard3264Bit(let value):
                    return ("ARCHS_STANDARD_32_64_BIT", .array(value))
                case .archsStandard32Bit(let value):
                    return ("ARCHS_STANDARD_32_BIT", .array(value))
                case .archsStandard64Bit(let value):
                    return ("ARCHS_STANDARD_64_BIT", .array(value))
                case .archsStandardIncluding64Bit(let value):
                    return ("ARCHS_STANDARD_INCLUDING_64_BIT", .array(value))
                case .assetCatalogCompilerAlternateAppiconNames(let value):
                    return ("ASSETCATALOG_COMPILER_ALTERNATE_APPICON_NAMES", .array(value))
                case .assetCatalogCompilerAppiconName(let value):
                    return ("ASSETCATALOG_COMPILER_APPICON_NAME", .string(value))
                case .assetCatalogCompilerBundleIdentifier(let value):
                    return ("ASSETCATALOG_COMPILER_BUNDLE_IDENTIFIER", .string(value))
                case .assetCatalogCompilerComplicationName(let value):
                    return ("ASSETCATALOG_COMPILER_COMPLICATION_NAME", .string(value))
                case .assetCatalogCompilerCompressPNGS(let value):
                    return ("ASSETCATALOG_COMPILER_COMPRESS_PNGS", .init(booleanLiteral: value))
                case .assetCatalogCompilerDependencyInfoFile(let value):
                    return ("ASSETCATALOG_COMPILER_DEPENDENCY_INFO_FILE", .string(value))
                case .assetCatalogCompilerEnableOnDemandResources(let value):
                    return ("ASSETCATALOG_COMPILER_ENABLE_ON_DEMAND_RESOURCES", .init(booleanLiteral: value))
                case .assetCatalogCompilerFlattenedAppIconPath(let value):
                    return ("ASSETCATALOG_COMPILER_FLATTENED_APP_ICON_PATH", .string(value))
                case .assetCatalogCompilerGenerateAssetSymbols(let value):
                    return ("ASSETCATALOG_COMPILER_GENERATE_ASSET_SYMBOLS", .init(booleanLiteral: value))
                case .assetCatalogCompilerGenerateAssetSymbolBackwardsDeploymentSupport(let value):
                    return ("ASSETCATALOG_COMPILER_GENERATE_ASSET_SYMBOL_BACKWARDS_DEPLOYMENT_SUPPORT", .string(value))
                case .assetCatalogCompilerGenerateAssetSymbolErrors(let value):
                    return ("ASSETCATALOG_COMPILER_GENERATE_ASSET_SYMBOL_ERRORS", .init(booleanLiteral: value))
                case .assetCatalogCompilerGenerateAssetSymbolFrameworks(let value):
                    return ("ASSETCATALOG_COMPILER_GENERATE_ASSET_SYMBOL_FRAMEWORKS", .array(value))
                case .assetCatalogCompilerGenerateAssetSymbolIndexPath(let value):
                    return ("ASSETCATALOG_COMPILER_GENERATE_ASSET_SYMBOL_INDEX_PATH", .string(value))
                case .assetCatalogCompilerGenerateAssetSymbolWarnings(let value):
                    return ("ASSETCATALOG_COMPILER_GENERATE_ASSET_SYMBOL_WARNINGS", .init(booleanLiteral: value))
                case .assetCatalogCompilerGenerateOBJCAssetSymbolsPath(let value):
                    return ("ASSETCATALOG_COMPILER_GENERATE_OBJC_ASSET_SYMBOLS_PATH", .string(value))
                case .assetCatalogCompilerGenerateSwiftAssetSymbolsPath(let value):
                    return ("ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOLS_PATH", .string(value))
                case .assetCatalogCompilerGenerateSwiftAssetSymbolExtensions(let value):
                    return ("ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS", .init(booleanLiteral: value))
                case .assetCatalogCompilerGlobalAccentColorName(let value):
                    return ("ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME", .string(value))
                case .assetCatalogCompilerIncludeAllAppiconAssets(let value):
                    return ("ASSETCATALOG_COMPILER_INCLUDE_ALL_APPICON_ASSETS", .init(booleanLiteral: value))
                case .assetCatalogCompilerIncludeInfoplistLocalizations(let value):
                    return ("ASSETCATALOG_COMPILER_INCLUDE_INFOPLIST_LOCALIZATIONS", .init(booleanLiteral: value))
                case .assetCatalogCompilerIncludeStickerContent(let value):
                    return ("ASSETCATALOG_COMPILER_INCLUDE_STICKER_CONTENT", .init(booleanLiteral: value))
                case .assetCatalogCompilerInfoplistContentFile(let value):
                    return ("ASSETCATALOG_COMPILER_INFOPLIST_CONTENT_FILE", .string(value))
                case .assetCatalogCompilerLaunchimageName(let value):
                    return ("ASSETCATALOG_COMPILER_LAUNCHIMAGE_NAME", .string(value))
                case .assetCatalogCompilerLeaderboardIdentifierPrefix(let value):
                    return ("ASSETCATALOG_COMPILER_LEADERBOARD_IDENTIFIER_PREFIX", .string(value))
                case .assetCatalogCompilerLeaderboardSetIdentifierPrefix(let value):
                    return ("ASSETCATALOG_COMPILER_LEADERBOARD_SET_IDENTIFIER_PREFIX", .string(value))
                case .assetCatalogCompilerOptimization(let value):
                    return ("ASSETCATALOG_COMPILER_OPTIMIZATION", .string(value.rawValue))
                case .assetCatalogCompilerSkipAppStoreDeployment(let value):
                    return ("ASSETCATALOG_COMPILER_SKIP_APP_STORE_DEPLOYMENT", .init(booleanLiteral: value))
                case .assetCatalogCompilerStandaloneIconBehavior(let value):
                    return ("ASSETCATALOG_COMPILER_STANDALONE_ICON_BEHAVIOR", .string(value.rawValue))
                case .assetCatalogCompilerStickerPackIdentifierPrefix(let value):
                    return ("ASSETCATALOG_COMPILER_STICKER_PACK_IDENTIFIER_PREFIX", .string(value))
                case .assetCatalogCompilerStickerPackStrings(let value):
                    return ("ASSETCATALOG_COMPILER_STICKER_PACK_STRINGS", .array(value))
                case .assetCatalogCompilerTargetStickersIconRole(let value):
                    return ("ASSETCATALOG_COMPILER_TARGET_STICKERS_ICON_ROLE", .string(value.rawValue))
                case .assetCatalogCompilerWidgetBackgroundColorName(let value):
                    return ("ASSETCATALOG_COMPILER_WIDGET_BACKGROUND_COLOR_NAME", .string(value))
                case .assetCatalogExec(let value):
                    return ("ASSETCATALOG_EXEC", .string(value))
                case .assetCatalogFilterForDeviceModel(let value):
                    return ("ASSETCATALOG_FILTER_FOR_DEVICE_MODEL", .string(value))
                case .assetCatalogFilterForDeviceOSVersion(let value):
                    return ("ASSETCATALOG_FILTER_FOR_DEVICE_OS_VERSION", .string(value))
                case .assetCatalogFilterForThinningDeviceConfiguration(let value):
                    return ("ASSETCATALOG_FILTER_FOR_THINNING_DEVICE_CONFIGURATION", .string(value))
                case .assetCatalogLightweightAssetRuntimeMode(let value):
                    return ("ASSETCATALOG_LIGHTWEIGHT_ASSET_RUNTIME_MODE", .string(value.rawValue))
                case .assetCatalogNotices(let value):
                    return ("ASSETCATALOG_NOTICES", .init(booleanLiteral: value))
                case .assetCatalogOtherFlags(let value):
                    return ("ASSETCATALOG_OTHER_FLAGS", .array(value))
                case .assetCatalogOutputFormat(let value):
                    return ("ASSETCATALOG_OUTPUT_FORMAT", .string(value.rawValue))
                case .assetCatalogWarnings(let value):
                    return ("ASSETCATALOG_WARNINGS", .init(booleanLiteral: value))
                case .assetPackManifestURLPrefix(let value):
                    return ("ASSET_PACK_MANIFEST_URL_PREFIX", .string(value))
                case .automaticallyMergeDependencies(let value):
                    return ("AUTOMATICALLY_MERGE_DEPENDENCIES", .init(booleanLiteral: value))
                case .additionalCommandLineArguments(let value):
                    return ("AdditionalCommandLineArguments", .array(value))
                case .additionalContentFilePaths(let value):
                    return ("AdditionalContentFilePaths", .array(value))
                case .additionalInfoFileKeys(let value):
                    return ("AdditionalInfoFileKeys", .string(value))
                case .additionalInfoFileValues(let value):
                    return ("AdditionalInfoFileValues", .string(value))
                case .appPrivacyContentFilePaths(let value):
                    return ("AppPrivacyContentFilePaths", .array(value))
                case .bitcodeGenerationMode(let value):
                    return ("BITCODE_GENERATION_MODE", .string(value.rawValue))
                case .buildActiveResourcesOnly(let value):
                    return ("BUILD_ACTIVE_RESOURCES_ONLY", .init(booleanLiteral: value))
                case .buildComponents(let value):
                    return ("BUILD_COMPONENTS", .array(value))
                case .buildDir(let value):
                    return ("BUILD_DIR", .string(value))
                case .buildLibraryForDistribution(let value):
                    return ("BUILD_LIBRARY_FOR_DISTRIBUTION", .init(booleanLiteral: value))
                case .buildRoot(let value):
                    return ("BUILD_ROOT", .string(value))
                case .buildStyle(let value):
                    return ("BUILD_STYLE", .string(value))
                case .buildVariants(let value):
                    return ("BUILD_VARIANTS", .array(value))
                case .builtProductsDir(let value):
                    return ("BUILT_PRODUCTS_DIR", .string(value))
                case .bundleContentsFolderPath(let value):
                    return ("BUNDLE_CONTENTS_FOLDER_PATH", .string(value))
                case .bundleContentsFolderPathDeep(let value):
                    return ("BUNDLE_CONTENTS_FOLDER_PATH_deep", .string(value))
                case .bundleExecutableFolderNameDeep(let value):
                    return ("BUNDLE_EXECUTABLE_FOLDER_NAME_deep", .string(value))
                case .bundleExecutableFolderPath(let value):
                    return ("BUNDLE_EXECUTABLE_FOLDER_PATH", .string(value))
                case .bundleExtensionsFolderPath(let value):
                    return ("BUNDLE_EXTENSIONS_FOLDER_PATH", .string(value))
                case .bundleFormat(let value):
                    return ("BUNDLE_FORMAT", .string(value.rawValue))
                case .bundleFrameworksFolderPath(let value):
                    return ("BUNDLE_FRAMEWORKS_FOLDER_PATH", .string(value))
                case .bundleLoader(let value):
                    return ("BUNDLE_LOADER", .string(value))
                case .bundlePluginsFolderPath(let value):
                    return ("BUNDLE_PLUGINS_FOLDER_PATH", .string(value))
                case .bundlePrivateHeadersFolderPath(let value):
                    return ("BUNDLE_PRIVATE_HEADERS_FOLDER_PATH", .string(value))
                case .bundlePublicHeadersFolderPath(let value):
                    return ("BUNDLE_PUBLIC_HEADERS_FOLDER_PATH", .string(value))
                case .cc(let value):
                    return ("CC", .string(value))
                case .cchroot(let value):
                    return ("CCHROOT", .string(value))
                case .chmod(let value):
                    return ("CHMOD", .string(value))
                case .chown(let value):
                    return ("CHOWN", .string(value))
                case .clang(let value):
                    return ("CLANG", .string(value))
                case .clangAddressSanitizer(let value):
                    return ("CLANG_ADDRESS_SANITIZER", .init(booleanLiteral: value))
                case .clangAddressSanitizerAllowErrorRecovery(let value):
                    return ("CLANG_ADDRESS_SANITIZER_ALLOW_ERROR_RECOVERY", .init(booleanLiteral: value))
                case .clangAddressSanitizerContainerOverflow(let value):
                    return ("CLANG_ADDRESS_SANITIZER_CONTAINER_OVERFLOW", .init(booleanLiteral: value))
                case .clangAddressSanitizerUseAfterScope(let value):
                    return ("CLANG_ADDRESS_SANITIZER_USE_AFTER_SCOPE", .init(booleanLiteral: value))
                case .clangAllowNonModularIncludesInFrameworkModules(let value):
                    return ("CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES", .init(booleanLiteral: value))
                case .clangAnalyzerDeadcodeDeadstores(let value):
                    return ("CLANG_ANALYZER_DEADCODE_DEADSTORES", .init(booleanLiteral: value))
                case .clangAnalyzerDefines(let value):
                    return ("CLANG_ANALYZER_DEFINES", .string(value))
                case .clangAnalyzerDivideByZero(let value):
                    return ("CLANG_ANALYZER_DIVIDE_BY_ZERO", .init(booleanLiteral: value))
                case .clangAnalyzerExec(let value):
                    return ("CLANG_ANALYZER_EXEC", .string(value))
                case .clangAnalyzerGCD(let value):
                    return ("CLANG_ANALYZER_GCD", .init(booleanLiteral: value))
                case .clangAnalyzerGCDPerformance(let value):
                    return ("CLANG_ANALYZER_GCD_PERFORMANCE", .string(value.rawValue))
                case .clangAnalyzerLibkernRetainCount(let value):
                    return ("CLANG_ANALYZER_LIBKERN_RETAIN_COUNT", .init(booleanLiteral: value))
                case .clangAnalyzerLocalizabilityEmptyContext(let value):
                    return ("CLANG_ANALYZER_LOCALIZABILITY_EMPTY_CONTEXT", .string(value.rawValue))
                case .clangAnalyzerLocalizabilityNonlocalized(let value):
                    return ("CLANG_ANALYZER_LOCALIZABILITY_NONLOCALIZED", .string(value.rawValue))
                case .clangAnalyzerMalloc(let value):
                    return ("CLANG_ANALYZER_MALLOC", .init(booleanLiteral: value))
                case .clangAnalyzerMemoryManagement(let value):
                    return ("CLANG_ANALYZER_MEMORY_MANAGEMENT", .init(booleanLiteral: value))
                case .clangAnalyzerMIGConventions(let value):
                    return ("CLANG_ANALYZER_MIG_CONVENTIONS", .string(value.rawValue))
                case .clangAnalyzerNONNULL(let value):
                    return ("CLANG_ANALYZER_NONNULL", .string(value.rawValue))
                case .clangAnalyzerNullDereference(let value):
                    return ("CLANG_ANALYZER_NULL_DEREFERENCE", .init(booleanLiteral: value))
                case .clangAnalyzerNumberObjectConversion(let value):
                    return ("CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION", .string(value.rawValue))
                case .clangAnalyzerOBJCAtsync(let value):
                    return ("CLANG_ANALYZER_OBJC_ATSYNC", .init(booleanLiteral: value))
                case .clangAnalyzerOBJCCollections(let value):
                    return ("CLANG_ANALYZER_OBJC_COLLECTIONS", .init(booleanLiteral: value))
                case .clangAnalyzerOBJCDealloc(let value):
                    return ("CLANG_ANALYZER_OBJC_DEALLOC", .init(booleanLiteral: value))
                case .clangAnalyzerOBJCGenerics(let value):
                    return ("CLANG_ANALYZER_OBJC_GENERICS", .init(booleanLiteral: value))
                case .clangAnalyzerOBJCIncompMethodTypes(let value):
                    return ("CLANG_ANALYZER_OBJC_INCOMP_METHOD_TYPES", .init(booleanLiteral: value))
                case .clangAnalyzerOBJCNscferror(let value):
                    return ("CLANG_ANALYZER_OBJC_NSCFERROR", .init(booleanLiteral: value))
                case .clangAnalyzerOBJCRetainCount(let value):
                    return ("CLANG_ANALYZER_OBJC_RETAIN_COUNT", .init(booleanLiteral: value))
                case .clangAnalyzerOBJCSelfInit(let value):
                    return ("CLANG_ANALYZER_OBJC_SELF_INIT", .init(booleanLiteral: value))
                case .clangAnalyzerOBJCUnusedIVARS(let value):
                    return ("CLANG_ANALYZER_OBJC_UNUSED_IVARS", .init(booleanLiteral: value))
                case .clangAnalyzerOsobjectCStyleCast(let value):
                    return ("CLANG_ANALYZER_OSOBJECT_C_STYLE_CAST", .init(booleanLiteral: value))
                case .clangAnalyzerOtherCheckers(let value):
                    return ("CLANG_ANALYZER_OTHER_CHECKERS", .array(value))
                case .clangAnalyzerOtherFlags(let value):
                    return ("CLANG_ANALYZER_OTHER_FLAGS", .array(value))
                case .clangAnalyzerOutput(let value):
                    return ("CLANG_ANALYZER_OUTPUT", .string(value.rawValue))
                case .clangAnalyzerOutputDir(let value):
                    return ("CLANG_ANALYZER_OUTPUT_DIR", .string(value))
                case .clangAnalyzerReportMainSourceFile(let value):
                    return ("CLANG_ANALYZER_REPORT_MAIN_SOURCE_FILE", .init(booleanLiteral: value))
                case .clangAnalyzerSecurityBufferOverflowExperimental(let value):
                    return ("CLANG_ANALYZER_SECURITY_BUFFER_OVERFLOW_EXPERIMENTAL", .init(booleanLiteral: value))
                case .clangAnalyzerSecurityFloatloopcounter(let value):
                    return ("CLANG_ANALYZER_SECURITY_FLOATLOOPCOUNTER", .init(booleanLiteral: value))
                case .clangAnalyzerSecurityInsecureapiGetpwGets(let value):
                    return ("CLANG_ANALYZER_SECURITY_INSECUREAPI_GETPW_GETS", .init(booleanLiteral: value))
                case .clangAnalyzerSecurityInsecureapiMkstemp(let value):
                    return ("CLANG_ANALYZER_SECURITY_INSECUREAPI_MKSTEMP", .init(booleanLiteral: value))
                case .clangAnalyzerSecurityInsecureapiRand(let value):
                    return ("CLANG_ANALYZER_SECURITY_INSECUREAPI_RAND", .init(booleanLiteral: value))
                case .clangAnalyzerSecurityInsecureapiStrcpy(let value):
                    return ("CLANG_ANALYZER_SECURITY_INSECUREAPI_STRCPY", .init(booleanLiteral: value))
                case .clangAnalyzerSecurityInsecureapiUncheckedreturn(let value):
                    return ("CLANG_ANALYZER_SECURITY_INSECUREAPI_UNCHECKEDRETURN", .init(booleanLiteral: value))
                case .clangAnalyzerSecurityInsecureapiVfork(let value):
                    return ("CLANG_ANALYZER_SECURITY_INSECUREAPI_VFORK", .init(booleanLiteral: value))
                case .clangAnalyzerSecurityKeychainAPI(let value):
                    return ("CLANG_ANALYZER_SECURITY_KEYCHAIN_API", .init(booleanLiteral: value))
                case .clangAnalyzerUseAfterMove(let value):
                    return ("CLANG_ANALYZER_USE_AFTER_MOVE", .string(value.rawValue))
                case .clangARCMigrateDir(let value):
                    return ("CLANG_ARC_MIGRATE_DIR", .string(value))
                case .clangARCMigrateEmitError(let value):
                    return ("CLANG_ARC_MIGRATE_EMIT_ERROR", .init(booleanLiteral: value))
                case .clangARCMigratePrecheck(let value):
                    return ("CLANG_ARC_MIGRATE_PRECHECK", .string(value.rawValue))
                case .clangARCMigrateReportOutput(let value):
                    return ("CLANG_ARC_MIGRATE_REPORT_OUTPUT", .string(value))
                case .clangBitcodeGenerationMode(let value):
                    return ("CLANG_BITCODE_GENERATION_MODE", .string(value.rawValue))
                case .clangColorDiagnostics(let value):
                    return ("CLANG_COLOR_DIAGNOSTICS", .init(booleanLiteral: value))
                case .clangCoverageMapping(let value):
                    return ("CLANG_COVERAGE_MAPPING", .init(booleanLiteral: value))
                case .clangCoverageMappingLinkerArgs(let value):
                    return ("CLANG_COVERAGE_MAPPING_LINKER_ARGS", .init(booleanLiteral: value))
                case .clangCXXLanguageStandard(let value):
                    return ("CLANG_CXX_LANGUAGE_STANDARD", .string(value.rawValue))
                case .clangCXXLibrary(let value):
                    return ("CLANG_CXX_LIBRARY", .string(value.rawValue))
                case .clangDebugInformationLevel(let value):
                    return ("CLANG_DEBUG_INFORMATION_LEVEL", .string(value.rawValue))
                case .clangDebugModules(let value):
                    return ("CLANG_DEBUG_MODULES", .init(booleanLiteral: value))
                case .clangDiagnosticsFile(let value):
                    return ("CLANG_DIAGNOSTICS_FILE", .string(value))
                case .clangEnableAppExtension(let value):
                    return ("CLANG_ENABLE_APP_EXTENSION", .init(booleanLiteral: value))
                case .clangEnableBoundsAttributes(let value):
                    return ("CLANG_ENABLE_BOUNDS_ATTRIBUTES", .init(booleanLiteral: value))
                case .clangEnableBoundsSafety(let value):
                    return ("CLANG_ENABLE_BOUNDS_SAFETY", .init(booleanLiteral: value))
                case .clangEnableCodeCoverage(let value):
                    return ("CLANG_ENABLE_CODE_COVERAGE", .init(booleanLiteral: value))
                case .clangEnableCPPStaticDestructors(let value):
                    return ("CLANG_ENABLE_CPP_STATIC_DESTRUCTORS", .init(booleanLiteral: value))
                case .clangEnableExplicitModules(let value):
                    return ("CLANG_ENABLE_EXPLICIT_MODULES", .init(booleanLiteral: value))
                case .clangEnableModules(let value):
                    return ("CLANG_ENABLE_MODULES", .init(booleanLiteral: value))
                case .clangEnableModuleDebugging(let value):
                    return ("CLANG_ENABLE_MODULE_DEBUGGING", .init(booleanLiteral: value))
                case .clangEnableModuleImplementationOf(let value):
                    return ("CLANG_ENABLE_MODULE_IMPLEMENTATION_OF", .init(booleanLiteral: value))
                case .clangEnableOBJCARC(let value):
                    return ("CLANG_ENABLE_OBJC_ARC", .init(booleanLiteral: value))
                case .clangEnableOBJCARCExceptions(let value):
                    return ("CLANG_ENABLE_OBJC_ARC_EXCEPTIONS", .init(booleanLiteral: value))
                case .clangEnableOBJCWeak(let value):
                    return ("CLANG_ENABLE_OBJC_WEAK", .init(booleanLiteral: value))
                case .clangEnablePrefixMapping(let value):
                    return ("CLANG_ENABLE_PREFIX_MAPPING", .init(booleanLiteral: value))
                case .clangIndexStoreEnable(let value):
                    return ("CLANG_INDEX_STORE_ENABLE", .init(booleanLiteral: value))
                case .clangIndexStorePath(let value):
                    return ("CLANG_INDEX_STORE_PATH", .string(value))
                case .clangInstrumentForOptimizationProfiling(let value):
                    return ("CLANG_INSTRUMENT_FOR_OPTIMIZATION_PROFILING", .init(booleanLiteral: value))
                case .clangLibfuzzer(let value):
                    return ("CLANG_LIBFUZZER", .init(booleanLiteral: value))
                case .clangLinkOBJCRuntime(let value):
                    return ("CLANG_LINK_OBJC_RUNTIME", .init(booleanLiteral: value))
                case .clangMacroBacktraceLimit(let value):
                    return ("CLANG_MACRO_BACKTRACE_LIMIT", .string(value))
                case .clangMigratorAnnotations(let value):
                    return ("CLANG_MIGRATOR_ANNOTATIONS", .init(booleanLiteral: value))
                case .clangMigratorInstanceType(let value):
                    return ("CLANG_MIGRATOR_INSTANCE_TYPE", .init(booleanLiteral: value))
                case .clangMigratorNSEnumMacros(let value):
                    return ("CLANG_MIGRATOR_NSENUM_MACROS", .init(booleanLiteral: value))
                case .clangMigratorOBJCDesignatedInit(let value):
                    return ("CLANG_MIGRATOR_OBJC_DESIGNATED_INIT", .init(booleanLiteral: value))
                case .clangMigratorOBJCLiterals(let value):
                    return ("CLANG_MIGRATOR_OBJC_LITERALS", .init(booleanLiteral: value))
                case .clangMigratorOBJCSubscripting(let value):
                    return ("CLANG_MIGRATOR_OBJC_SUBSCRIPTING", .init(booleanLiteral: value))
                case .clangMigratorPropertyAtomicity(let value):
                    return ("CLANG_MIGRATOR_PROPERTY_ATOMICITY", .string(value.rawValue))
                case .clangMigratorPropertyDotSyntax(let value):
                    return ("CLANG_MIGRATOR_PROPERTY_DOT_SYNTAX", .init(booleanLiteral: value))
                case .clangMigratorProtocolConformance(let value):
                    return ("CLANG_MIGRATOR_PROTOCOL_CONFORMANCE", .init(booleanLiteral: value))
                case .clangMigratorPublicHeadersOnly(let value):
                    return ("CLANG_MIGRATOR_PUBLIC_HEADERS_ONLY", .init(booleanLiteral: value))
                case .clangMigratorReadonlyProperty(let value):
                    return ("CLANG_MIGRATOR_READONLY_PROPERTY", .init(booleanLiteral: value))
                case .clangMigratorReadwriteProperty(let value):
                    return ("CLANG_MIGRATOR_READWRITE_PROPERTY", .init(booleanLiteral: value))
                case .clangModulesAutolink(let value):
                    return ("CLANG_MODULES_AUTOLINK", .init(booleanLiteral: value))
                case .clangModulesBuildSessionFile(let value):
                    return ("CLANG_MODULES_BUILD_SESSION_FILE", .string(value))
                case .clangModulesDisablePrivateWarning(let value):
                    return ("CLANG_MODULES_DISABLE_PRIVATE_WARNING", .init(booleanLiteral: value))
                case .clangModulesIgnoreMacros(let value):
                    return ("CLANG_MODULES_IGNORE_MACROS", .array(value))
                case .clangModulesPruneAfter(let value):
                    return ("CLANG_MODULES_PRUNE_AFTER", .string(value))
                case .clangModulesPruneInterval(let value):
                    return ("CLANG_MODULES_PRUNE_INTERVAL", .string(value))
                case .clangModulesValidateSystemHeaders(let value):
                    return ("CLANG_MODULES_VALIDATE_SYSTEM_HEADERS", .init(booleanLiteral: value))
                case .clangModuleCachePath(let value):
                    return ("CLANG_MODULE_CACHE_PATH", .string(value))
                case .clangModuleLSV(let value):
                    return ("CLANG_MODULE_LSV", .init(booleanLiteral: value))
                case .clangOBJCMigrateDir(let value):
                    return ("CLANG_OBJC_MIGRATE_DIR", .string(value))
                case .clangOptimizationProfileFile(let value):
                    return ("CLANG_OPTIMIZATION_PROFILE_FILE", .string(value))
                case .clangOtherPrefixMappings(let value):
                    return ("CLANG_OTHER_PREFIX_MAPPINGS", .array(value))
                case .clangRetainCommentsFromSystemHeaders(let value):
                    return ("CLANG_RETAIN_COMMENTS_FROM_SYSTEM_HEADERS", .init(booleanLiteral: value))
                case .clangSanitizerCoverage(let value):
                    return ("CLANG_SANITIZER_COVERAGE", .init(booleanLiteral: value))
                case .clangStaticAnalyzerMode(let value):
                    return ("CLANG_STATIC_ANALYZER_MODE", .string(value.rawValue))
                case .clangStaticAnalyzerModeActionDeep(let value):
                    return ("CLANG_STATIC_ANALYZER_MODE_ACTION_deep", .string(value))
                case .clangStaticAnalyzerModeActionShallow(let value):
                    return ("CLANG_STATIC_ANALYZER_MODE_ACTION_shallow", .string(value))
                case .clangStaticAnalyzerModeOnAnalyzeAction(let value):
                    return ("CLANG_STATIC_ANALYZER_MODE_ON_ANALYZE_ACTION", .string(value.rawValue))
                case .clangTargetTripleArchs(let value):
                    return ("CLANG_TARGET_TRIPLE_ARCHS", .array(value))
                case .clangTargetTripleVariants(let value):
                    return ("CLANG_TARGET_TRIPLE_VARIANTS", .array(value))
                case .clangThreadSanitizer(let value):
                    return ("CLANG_THREAD_SANITIZER", .init(booleanLiteral: value))
                case .clangTidyBugproneAssertSideEffect(let value):
                    return ("CLANG_TIDY_BUGPRONE_ASSERT_SIDE_EFFECT", .init(booleanLiteral: value))
                case .clangTidyBugproneInfiniteLoop(let value):
                    return ("CLANG_TIDY_BUGPRONE_INFINITE_LOOP", .init(booleanLiteral: value))
                case .clangTidyBugproneMoveForwardingReference(let value):
                    return ("CLANG_TIDY_BUGPRONE_MOVE_FORWARDING_REFERENCE", .init(booleanLiteral: value))
                case .clangTidyBugproneRedundantBranchCondition(let value):
                    return ("CLANG_TIDY_BUGPRONE_REDUNDANT_BRANCH_CONDITION", .init(booleanLiteral: value))
                case .clangTidyMiscRedundantExpression(let value):
                    return ("CLANG_TIDY_MISC_REDUNDANT_EXPRESSION", .init(booleanLiteral: value))
                case .clangToolchainFlags(let value):
                    return ("CLANG_TOOLCHAIN_FLAGS", .array(value))
                case .clangTrivialAutoVarInit(let value):
                    return ("CLANG_TRIVIAL_AUTO_VAR_INIT", .string(value.rawValue))
                case .clangUndefinedBehaviorSanitizer(let value):
                    return ("CLANG_UNDEFINED_BEHAVIOR_SANITIZER", .init(booleanLiteral: value))
                case .clangUndefinedBehaviorSanitizerInteger(let value):
                    return ("CLANG_UNDEFINED_BEHAVIOR_SANITIZER_INTEGER", .init(booleanLiteral: value))
                case .clangUndefinedBehaviorSanitizerNullability(let value):
                    return ("CLANG_UNDEFINED_BEHAVIOR_SANITIZER_NULLABILITY", .init(booleanLiteral: value))
                case .clangUndefinedBehaviorSanitizerTrapOnSecurityIssues(let value):
                    return ("CLANG_UNDEFINED_BEHAVIOR_SANITIZER_TRAP_ON_SECURITY_ISSUES", .init(booleanLiteral: value))
                case .clangUndefinedBehaviorSanitizerTrapOnSecurityIssuesOpt(let value):
                    return ("CLANG_UNDEFINED_BEHAVIOR_SANITIZER_TRAP_ON_SECURITY_ISSUES_OPT", .init(booleanLiteral: value))
                case .clangUseOptimizationProfile(let value):
                    return ("CLANG_USE_OPTIMIZATION_PROFILE", .init(booleanLiteral: value))
                case .clangWarnAssignEnum(let value):
                    return ("CLANG_WARN_ASSIGN_ENUM", .init(booleanLiteral: value))
                case .clangWarnAtomicImplicitSEQCST(let value):
                    return ("CLANG_WARN_ATOMIC_IMPLICIT_SEQ_CST", .init(booleanLiteral: value))
                case .clangWarnBlockCaptureAutoreleasing(let value):
                    return ("CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING", .string(value.rawValue))
                case .clangWarnBoolConversion(let value):
                    return ("CLANG_WARN_BOOL_CONVERSION", .string(value.rawValue))
                case .clangWarnComma(let value):
                    return ("CLANG_WARN_COMMA", .string(value.rawValue))
                case .clangWarnCompletionHandlerMisuse(let value):
                    return ("CLANG_WARN_COMPLETION_HANDLER_MISUSE", .init(booleanLiteral: value))
                case .clangWarnConstantConversion(let value):
                    return ("CLANG_WARN_CONSTANT_CONVERSION", .string(value.rawValue))
                case .clangWarnCxx0XExtensions(let value):
                    return ("CLANG_WARN_CXX0X_EXTENSIONS", .init(booleanLiteral: value))
                case .clangWarnDeleteNonVirtualDTOR(let value):
                    return ("CLANG_WARN_DELETE_NON_VIRTUAL_DTOR", .string(value.rawValue))
                case .clangWarnDeprecatedOBJCImplementations(let value):
                    return ("CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS", .init(booleanLiteral: value))
                case .clangWarnDirectOBJCISAUsage(let value):
                    return ("CLANG_WARN_DIRECT_OBJC_ISA_USAGE", .string(value.rawValue))
                case .clangWarnDocumentationComments(let value):
                    return ("CLANG_WARN_DOCUMENTATION_COMMENTS", .init(booleanLiteral: value))
                case .clangWarnEmptyBody(let value):
                    return ("CLANG_WARN_EMPTY_BODY", .init(booleanLiteral: value))
                case .clangWarnEnumConversion(let value):
                    return ("CLANG_WARN_ENUM_CONVERSION", .string(value.rawValue))
                case .clangWarnFloatConversion(let value):
                    return ("CLANG_WARN_FLOAT_CONVERSION", .string(value.rawValue))
                case .clangWarnFrameworkIncludePrivateFromPublic(let value):
                    return ("CLANG_WARN_FRAMEWORK_INCLUDE_PRIVATE_FROM_PUBLIC", .string(value.rawValue))
                case .clangWarnImplicitFallthrough(let value):
                    return ("CLANG_WARN_IMPLICIT_FALLTHROUGH", .string(value.rawValue))
                case .clangWarnImplicitSignConversion(let value):
                    return ("CLANG_WARN_IMPLICIT_SIGN_CONVERSION", .string(value.rawValue))
                case .clangWarnInfiniteRecursion(let value):
                    return ("CLANG_WARN_INFINITE_RECURSION", .init(booleanLiteral: value))
                case .clangWarnIntConversion(let value):
                    return ("CLANG_WARN_INT_CONVERSION", .string(value.rawValue))
                case .clangWarnMissingNoescape(let value):
                    return ("CLANG_WARN_MISSING_NOESCAPE", .string(value.rawValue))
                case .clangWarnNonLiteralNullConversion(let value):
                    return ("CLANG_WARN_NON_LITERAL_NULL_CONVERSION", .string(value.rawValue))
                case .clangWarnNullableToNONNULLConversion(let value):
                    return ("CLANG_WARN_NULLABLE_TO_NONNULL_CONVERSION", .init(booleanLiteral: value))
                case .clangWarnOBJCExplicitOwnershipType(let value):
                    return ("CLANG_WARN_OBJC_EXPLICIT_OWNERSHIP_TYPE", .init(booleanLiteral: value))
                case .clangWarnOBJCImplicitAtomicProperties(let value):
                    return ("CLANG_WARN_OBJC_IMPLICIT_ATOMIC_PROPERTIES", .init(booleanLiteral: value))
                case .clangWarnOBJCImplicitRetainSelf(let value):
                    return ("CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF", .init(booleanLiteral: value))
                case .clangWarnOBJCInterfaceIVARS(let value):
                    return ("CLANG_WARN_OBJC_INTERFACE_IVARS", .string(value.rawValue))
                case .clangWarnOBJCLiteralConversion(let value):
                    return ("CLANG_WARN_OBJC_LITERAL_CONVERSION", .string(value.rawValue))
                case .clangWarnOBJCMissingPropertySynthesis(let value):
                    return ("CLANG_WARN_OBJC_MISSING_PROPERTY_SYNTHESIS", .init(booleanLiteral: value))
                case .clangWarnOBJCRepeatedUseOfWeak(let value):
                    return ("CLANG_WARN_OBJC_REPEATED_USE_OF_WEAK", .string(value.rawValue))
                case .clangWarnOBJCRootClass(let value):
                    return ("CLANG_WARN_OBJC_ROOT_CLASS", .string(value.rawValue))
                case .clangWarnPragmaPack(let value):
                    return ("CLANG_WARN_PRAGMA_PACK", .string(value.rawValue))
                case .clangWarnPrivateModule(let value):
                    return ("CLANG_WARN_PRIVATE_MODULE", .init(booleanLiteral: value))
                case .clangWarnQuotedIncludeInFrameworkHeader(let value):
                    return ("CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER", .string(value.rawValue))
                case .clangWarnRangeLoopAnalysis(let value):
                    return ("CLANG_WARN_RANGE_LOOP_ANALYSIS", .init(booleanLiteral: value))
                case .clangWarnSemicolonBeforeMethodBody(let value):
                    return ("CLANG_WARN_SEMICOLON_BEFORE_METHOD_BODY", .init(booleanLiteral: value))
                case .clangWarnStrictPrototypes(let value):
                    return ("CLANG_WARN_STRICT_PROTOTYPES", .string(value.rawValue))
                case .clangWarnSuspiciousImplicitConversion(let value):
                    return ("CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION", .string(value.rawValue))
                case .clangWarnSuspiciousMove(let value):
                    return ("CLANG_WARN_SUSPICIOUS_MOVE", .init(booleanLiteral: value))
                case .clangWarnUnguardedAvailability(let value):
                    return ("CLANG_WARN_UNGUARDED_AVAILABILITY", .string(value.rawValue))
                case .clangWarnUnreachableCode(let value):
                    return ("CLANG_WARN_UNREACHABLE_CODE", .string(value.rawValue))
                case .clangWarnVexingParse(let value):
                    return ("CLANG_WARN_VEXING_PARSE", .string(value.rawValue))
                case .clangWarnXNUTypedAllocators(let value):
                    return ("CLANG_WARN_XNU_TYPED_ALLOCATORS", .string(value.rawValue))
                case .clangWarnARCBridgeCastNONARC(let value):
                    return ("CLANG_WARN__ARC_BRIDGE_CAST_NONARC", .init(booleanLiteral: value))
                case .clangWarnDuplicateMethodMatch(let value):
                    return ("CLANG_WARN__DUPLICATE_METHOD_MATCH", .init(booleanLiteral: value))
                case .clangWarnExitTimeDestructors(let value):
                    return ("CLANG_WARN__EXIT_TIME_DESTRUCTORS", .init(booleanLiteral: value))
                case .clangX86VectorInstructions(let value):
                    return ("CLANG_X86_VECTOR_INSTRUCTIONS", .string(value.rawValue))
                case .classFileDir(let value):
                    return ("CLASS_FILE_DIR", .string(value))
                case .cleanPrecomps(let value):
                    return ("CLEAN_PRECOMPS", .init(booleanLiteral: value))
                case .cloneHeaders(let value):
                    return ("CLONE_HEADERS", .init(booleanLiteral: value))
                case .codesigningFolderPath(let value):
                    return ("CODESIGNING_FOLDER_PATH", .string(value))
                case .codeSigningAllowed(let value):
                    return ("CODE_SIGNING_ALLOWED", .init(booleanLiteral: value))
                case .codeSignEntitlements(let value):
                    return ("CODE_SIGN_ENTITLEMENTS", .string(value))
                case .codeSignIdentity(let value):
                    return ("CODE_SIGN_IDENTITY", .string(value))
                case .codeSignInjectBaseEntitlements(let value):
                    return ("CODE_SIGN_INJECT_BASE_ENTITLEMENTS", .init(booleanLiteral: value))
                case .codeSignKeychain(let value):
                    return ("CODE_SIGN_KEYCHAIN", .string(value))
                case .codeSignLocalExecutionIdentity(let value):
                    return ("CODE_SIGN_LOCAL_EXECUTION_IDENTITY", .string(value.rawValue))
                case .codeSignResourceRulesInBundle(let value):
                    return ("CODE_SIGN_RESOURCE_RULES_IN_BUNDLE", .string(value))
                case .codeSignStyle(let value):
                    return ("CODE_SIGN_STYLE", .string(value.rawValue))
                case .colorDiagnostics(let value):
                    return ("COLOR_DIAGNOSTICS", .init(booleanLiteral: value))
                case .combineHIDPIImages(let value):
                    return ("COMBINE_HIDPI_IMAGES", .init(booleanLiteral: value))
                case .compilerIndexStoreEnable(let value):
                    return ("COMPILER_INDEX_STORE_ENABLE", .string(value.rawValue))
                case .compositeSDKDirs(let value):
                    return ("COMPOSITE_SDK_DIRS", .array(value))
                case .compressPNGFiles(let value):
                    return ("COMPRESS_PNG_FILES", .init(booleanLiteral: value))
                case .compressTIFFFilesWhileCopying(let value):
                    return ("COMPRESS_TIFF_FILES_WHILE_COPYING", .init(booleanLiteral: value))
                case .configuration(let value):
                    return ("CONFIGURATION", .string(value))
                case .configurationBuildDir(let value):
                    return ("CONFIGURATION_BUILD_DIR", .string(value))
                case .configurationTempDir(let value):
                    return ("CONFIGURATION_TEMP_DIR", .string(value))
                case .contentsFolderPath(let value):
                    return ("CONTENTS_FOLDER_PATH", .string(value))
                case .copyingPreservesHfsData(let value):
                    return ("COPYING_PRESERVES_HFS_DATA", .init(booleanLiteral: value))
                case .copyHeadersRunUnifdef(let value):
                    return ("COPY_HEADERS_RUN_UNIFDEF", .init(booleanLiteral: value))
                case .copyHeadersUnifdefFlags(let value):
                    return ("COPY_HEADERS_UNIFDEF_FLAGS", .array(value))
                case .copyPhaseStrip(let value):
                    return ("COPY_PHASE_STRIP", .init(booleanLiteral: value))
                case .coreMLCodegenLanguage(let value):
                    return ("COREML_CODEGEN_LANGUAGE", .string(value.rawValue))
                case .coreMLCodegenSwiftGlobalModule(let value):
                    return ("COREML_CODEGEN_SWIFT_GLOBAL_MODULE", .init(booleanLiteral: value))
                case .coreMLCodegenSwiftVersion(let value):
                    return ("COREML_CODEGEN_SWIFT_VERSION", .string(value))
                case .coreMLCompilerContainer(let value):
                    return ("COREML_COMPILER_CONTAINER", .string(value))
                case .coreMLCompilerInfoplistContentFile(let value):
                    return ("COREML_COMPILER_INFOPLIST_CONTENT_FILE", .string(value))
                case .coreMLDeploymentTarget(let value):
                    return ("COREML_DEPLOYMENT_TARGET", .string(value))
                case .coreMLDeploymentTargetNo(let value):
                    return ("COREML_DEPLOYMENT_TARGET__NO", .string(value))
                case .coreMLDeploymentTargetYes(let value):
                    return ("COREML_DEPLOYMENT_TARGET__YES", .string(value))
                case .coreMLPlatformName(let value):
                    return ("COREML_PLATFORM_NAME", .string(value))
                case .coreMLPlatformNameNo(let value):
                    return ("COREML_PLATFORM_NAME__NO", .string(value))
                case .coreMLPlatformNameYes(let value):
                    return ("COREML_PLATFORM_NAME__YES", .string(value))
                case .cp(let value):
                    return ("CP", .string(value))
                case .cppHeadermapFile(let value):
                    return ("CPP_HEADERMAP_FILE", .string(value))
                case .cppHeadermapFileForAllNonFrameworkTargetHeaders(let value):
                    return ("CPP_HEADERMAP_FILE_FOR_ALL_NON_FRAMEWORK_TARGET_HEADERS", .string(value))
                case .cppHeadermapFileForAllTargetHeaders(let value):
                    return ("CPP_HEADERMAP_FILE_FOR_ALL_TARGET_HEADERS", .string(value))
                case .cppHeadermapFileForGeneratedFiles(let value):
                    return ("CPP_HEADERMAP_FILE_FOR_GENERATED_FILES", .string(value))
                case .cppHeadermapFileForOwnTargetHeaders(let value):
                    return ("CPP_HEADERMAP_FILE_FOR_OWN_TARGET_HEADERS", .string(value))
                case .cppHeadermapFileForProjectFiles(let value):
                    return ("CPP_HEADERMAP_FILE_FOR_PROJECT_FILES", .string(value))
                case .cppHeadermapProductHeadersVFSFile(let value):
                    return ("CPP_HEADERMAP_PRODUCT_HEADERS_VFS_FILE", .string(value))
                case .cppHeaderSYMLINKSDir(let value):
                    return ("CPP_HEADER_SYMLINKS_DIR", .string(value))
                case .cppOtherPreprocessorFlags(let value):
                    return ("CPP_OTHER_PREPROCESSOR_FLAGS", .array(value))
                case .cppPreprocessorDefinitions(let value):
                    return ("CPP_PREPROCESSOR_DEFINITIONS", .array(value))
                case .createInfoplistSectionInBinary(let value):
                    return ("CREATE_INFOPLIST_SECTION_IN_BINARY", .init(booleanLiteral: value))
                case .currentArch(let value):
                    return ("CURRENT_ARCH", .string(value))
                case .currentProjectVersion(let value):
                    return ("CURRENT_PROJECT_VERSION", .string(value))
                case .currentVariant(let value):
                    return ("CURRENT_VARIANT", .string(value))
                case .currentVersion(let value):
                    return ("CURRENT_VERSION", .string(value))
                case .codeSignResourceRules(let value):
                    return ("CodeSignResourceRules", .init(booleanLiteral: value))
                case .deadCodeStripping(let value):
                    return ("DEAD_CODE_STRIPPING", .init(booleanLiteral: value))
                case .debuggingSymbols(let value):
                    return ("DEBUGGING_SYMBOLS", .init(booleanLiteral: value))
                case .debugInformationFormat(let value):
                    return ("DEBUG_INFORMATION_FORMAT", .string(value.rawValue))
                case .defaultCompiler(let value):
                    return ("DEFAULT_COMPILER", .string(value))
                case .defaultDEXTInstallPath(let value):
                    return ("DEFAULT_DEXT_INSTALL_PATH", .string(value))
                case .defaultKEXTInstallPath(let value):
                    return ("DEFAULT_KEXT_INSTALL_PATH", .string(value))
                case .defaultSSELevel3No(let value):
                    return ("DEFAULT_SSE_LEVEL_3_NO", .string(value))
                case .defaultSSELevel3SupplementalNo(let value):
                    return ("DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_NO", .string(value))
                case .defaultSSELevel3SupplementalYes(let value):
                    return ("DEFAULT_SSE_LEVEL_3_SUPPLEMENTAL_YES", .string(value))
                case .defaultSSELevel3Yes(let value):
                    return ("DEFAULT_SSE_LEVEL_3_YES", .string(value))
                case .defaultSSELevel41No(let value):
                    return ("DEFAULT_SSE_LEVEL_4_1_NO", .string(value))
                case .defaultSSELevel41Yes(let value):
                    return ("DEFAULT_SSE_LEVEL_4_1_YES", .string(value))
                case .defaultSSELevel42No(let value):
                    return ("DEFAULT_SSE_LEVEL_4_2_NO", .string(value))
                case .defaultSSELevel42Yes(let value):
                    return ("DEFAULT_SSE_LEVEL_4_2_YES", .string(value))
                case .definesModule(let value):
                    return ("DEFINES_MODULE", .init(booleanLiteral: value))
                case .deploymentLocation(let value):
                    return ("DEPLOYMENT_LOCATION", .init(booleanLiteral: value))
                case .deploymentPostprocessing(let value):
                    return ("DEPLOYMENT_POSTPROCESSING", .init(booleanLiteral: value))
                case .deploymentTarget(let value):
                    return ("DEPLOYMENT_TARGET", .string(value))
                case .deploymentTargetSettingName(let value):
                    return ("DEPLOYMENT_TARGET_SETTING_NAME", .string(value))
                case .derivedFilesDir(let value):
                    return ("DERIVED_FILES_DIR", .string(value))
                case .derivedFileDir(let value):
                    return ("DERIVED_FILE_DIR", .string(value))
                case .derivedPaths(let value):
                    return ("DERIVED_PATHS", .array(value))
                case .derivedSourcesDir(let value):
                    return ("DERIVED_SOURCES_DIR", .string(value))
                case .developerDir(let value):
                    return ("DEVELOPER_DIR", .string(value))
                case .developmentAssetPaths(let value):
                    return ("DEVELOPMENT_ASSET_PATHS", .array(value))
                case .developmentLanguage(let value):
                    return ("DEVELOPMENT_LANGUAGE", .string(value))
                case .developmentTeam(let value):
                    return ("DEVELOPMENT_TEAM", .string(value))
                case .diff(let value):
                    return ("DIFF", .string(value))
                case .doccAnalyzeDiagnostics(let value):
                    return ("DOCC_ANALYZE_DIAGNOSTICS", .init(booleanLiteral: value))
                case .doccArchivePath(let value):
                    return ("DOCC_ARCHIVE_PATH", .string(value))
                case .doccCatalogDisplayName(let value):
                    return ("DOCC_CATALOG_DISPLAY_NAME", .string(value))
                case .doccCatalogIdentifier(let value):
                    return ("DOCC_CATALOG_IDENTIFIER", .string(value))
                case .doccCatalogVersion(let value):
                    return ("DOCC_CATALOG_VERSION", .string(value))
                case .doccDiagnosticsFile(let value):
                    return ("DOCC_DIAGNOSTICS_FILE", .string(value))
                case .doccEmitFixits(let value):
                    return ("DOCC_EMIT_FIXITS", .init(booleanLiteral: value))
                case .doccExec(let value):
                    return ("DOCC_EXEC", .string(value))
                case .doccExtractExtensionSymbols(let value):
                    return ("DOCC_EXTRACT_EXTENSION_SYMBOLS", .init(booleanLiteral: value))
                case .doccExtractOBJCInfoForSwiftSymbols(let value):
                    return ("DOCC_EXTRACT_OBJC_INFO_FOR_SWIFT_SYMBOLS", .init(booleanLiteral: value))
                case .doccExtractSPIDocumentation(let value):
                    return ("DOCC_EXTRACT_SPI_DOCUMENTATION", .init(booleanLiteral: value))
                case .doccExtractSwiftInfoForOBJCSymbols(let value):
                    return ("DOCC_EXTRACT_SWIFT_INFO_FOR_OBJC_SYMBOLS", .init(booleanLiteral: value))
                case .doccHostingBasePath(let value):
                    return ("DOCC_HOSTING_BASE_PATH", .string(value))
                case .doccIDEConsoleOutput(let value):
                    return ("DOCC_IDE_CONSOLE_OUTPUT", .init(booleanLiteral: value))
                case .doccOutputDigestInformation(let value):
                    return ("DOCC_OUTPUT_DIGEST_INFORMATION", .init(booleanLiteral: value))
                case .doccOutputDir(let value):
                    return ("DOCC_OUTPUT_DIR", .string(value))
                case .doccOutputNavigatorIndex(let value):
                    return ("DOCC_OUTPUT_NAVIGATOR_INDEX", .init(booleanLiteral: value))
                case .doccTemplatePath(let value):
                    return ("DOCC_TEMPLATE_PATH", .string(value))
                case .doccTransformForStaticHosting(let value):
                    return ("DOCC_TRANSFORM_FOR_STATIC_HOSTING", .init(booleanLiteral: value))
                case .documentationFolderPath(let value):
                    return ("DOCUMENTATION_FOLDER_PATH", .string(value))
                case .dontGenerateInfoplistFile(let value):
                    return ("DONT_GENERATE_INFOPLIST_FILE", .init(booleanLiteral: value))
                case .doHeaderScanningInJam(let value):
                    return ("DO_HEADER_SCANNING_IN_JAM", .init(booleanLiteral: value))
                case .dstroot(let value):
                    return ("DSTROOT", .string(value))
                case .dsymUtilDSYMSearchPaths(let value):
                    return ("DSYMUTIL_DSYM_SEARCH_PATHS", .array(value))
                case .dsymUtilVariantSuffix(let value):
                    return ("DSYMUTIL_VARIANT_SUFFIX", .string(value))
                case .dsymUtilVerbose(let value):
                    return ("DSYMUTIL_VERBOSE", .init(booleanLiteral: value))
                case .dtraceOtherFlags(let value):
                    return ("DTRACE_OTHER_FLAGS", .array(value))
                case .dtraceOutputFileType(let value):
                    return ("DTRACE_OUTPUT_FILE_TYPE", .string(value.rawValue))
                case .dwarfDSYMFileName(let value):
                    return ("DWARF_DSYM_FILE_NAME", .string(value))
                case .dwarfDSYMFileShouldAccompanyProduct(let value):
                    return ("DWARF_DSYM_FILE_SHOULD_ACCOMPANY_PRODUCT", .init(booleanLiteral: value))
                case .dwarfDSYMFolderPath(let value):
                    return ("DWARF_DSYM_FOLDER_PATH", .string(value))
                case .dylibCompatibilityVersion(let value):
                    return ("DYLIB_COMPATIBILITY_VERSION", .string(value))
                case .dylibCurrentVersion(let value):
                    return ("DYLIB_CURRENT_VERSION", .string(value))
                case .dylibInstallNameBase(let value):
                    return ("DYLIB_INSTALL_NAME_BASE", .string(value))
                case .eagerLinking(let value):
                    return ("EAGER_LINKING", .init(booleanLiteral: value))
                case .embeddedContentContainsSwift(let value):
                    return ("EMBEDDED_CONTENT_CONTAINS_SWIFT", .init(booleanLiteral: value))
                case .embedAssetPacksInProductBundle(let value):
                    return ("EMBED_ASSET_PACKS_IN_PRODUCT_BUNDLE", .init(booleanLiteral: value))
                case .enableAppleKEXTCodeGeneration(let value):
                    return ("ENABLE_APPLE_KEXT_CODE_GENERATION", .init(booleanLiteral: value))
                case .enableAppSandbox(let value):
                    return ("ENABLE_APP_SANDBOX", .init(booleanLiteral: value))
                case .enableBitcode(let value):
                    return ("ENABLE_BITCODE", .init(booleanLiteral: value))
                case .enableCodeCoverage(let value):
                    return ("ENABLE_CODE_COVERAGE", .init(booleanLiteral: value))
                case .enableDefaultHeaderSearchPaths(let value):
                    return ("ENABLE_DEFAULT_HEADER_SEARCH_PATHS", .init(booleanLiteral: value))
                case .enableDefaultSearchPaths(let value):
                    return ("ENABLE_DEFAULT_SEARCH_PATHS", .init(booleanLiteral: value))
                case .enableHardenedRuntime(let value):
                    return ("ENABLE_HARDENED_RUNTIME", .init(booleanLiteral: value))
                case .enableHeaderDependencies(let value):
                    return ("ENABLE_HEADER_DEPENDENCIES", .init(booleanLiteral: value))
                case .enableIncrementalDistill(let value):
                    return ("ENABLE_INCREMENTAL_DISTILL", .init(booleanLiteral: value))
                case .enableNSAssertions(let value):
                    return ("ENABLE_NS_ASSERTIONS", .init(booleanLiteral: value))
                case .enableOnlyActiveResources(let value):
                    return ("ENABLE_ONLY_ACTIVE_RESOURCES", .init(booleanLiteral: value))
                case .enableOnDemandResources(let value):
                    return ("ENABLE_ON_DEMAND_RESOURCES", .init(booleanLiteral: value))
                case .enablePreviews(let value):
                    return ("ENABLE_PREVIEWS", .init(booleanLiteral: value))
                case .enableStrictOBJCMSGSEND(let value):
                    return ("ENABLE_STRICT_OBJC_MSGSEND", .init(booleanLiteral: value))
                case .enableTestability(let value):
                    return ("ENABLE_TESTABILITY", .init(booleanLiteral: value))
                case .enableTestingSearchPaths(let value):
                    return ("ENABLE_TESTING_SEARCH_PATHS", .init(booleanLiteral: value))
                case .enableUSDZCompilation(let value):
                    return ("ENABLE_USDZ_COMPILATION", .init(booleanLiteral: value))
                case .enableUserScriptSandboxing(let value):
                    return ("ENABLE_USER_SCRIPT_SANDBOXING", .init(booleanLiteral: value))
                case .enableUserSelectedFiles(let value):
                    return ("ENABLE_USER_SELECTED_FILES", .string(value.rawValue))
                case .entitlementsDestination(let value):
                    return ("ENTITLEMENTS_DESTINATION", .string(value.rawValue))
                case .excludedArchs(let value):
                    return ("EXCLUDED_ARCHS", .array(value))
                case .excludedInstallSRCSubDirectoryPatterns(let value):
                    return ("EXCLUDED_INSTALLSRC_SUBDIRECTORY_PATTERNS", .array(value))
                case .excludedRecursiveSearchPathSubdirectories(let value):
                    return ("EXCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES", .array(value))
                case .excludedSourceFileNames(let value):
                    return ("EXCLUDED_SOURCE_FILE_NAMES", .array(value))
                case .executablesFolderPath(let value):
                    return ("EXECUTABLES_FOLDER_PATH", .string(value))
                case .executableExtension(let value):
                    return ("EXECUTABLE_EXTENSION", .string(value))
                case .executableFolderPath(let value):
                    return ("EXECUTABLE_FOLDER_PATH", .string(value))
                case .executableName(let value):
                    return ("EXECUTABLE_NAME", .string(value))
                case .executablePath(let value):
                    return ("EXECUTABLE_PATH", .string(value))
                case .executablePrefix(let value):
                    return ("EXECUTABLE_PREFIX", .string(value))
                case .executableSuffix(let value):
                    return ("EXECUTABLE_SUFFIX", .string(value))
                case .executableVariantSuffix(let value):
                    return ("EXECUTABLE_VARIANT_SUFFIX", .string(value))
                case .exportedSymbolsFile(let value):
                    return ("EXPORTED_SYMBOLS_FILE", .string(value))
                case .expandBuildSettings(let value):
                    return ("ExpandBuildSettings", .init(booleanLiteral: value))
                case .fileList(let value):
                    return ("FILE_LIST", .string(value))
                case .fixedFilesDir(let value):
                    return ("FIXED_FILES_DIR", .string(value))
                case .frameworksFolderPath(let value):
                    return ("FRAMEWORKS_FOLDER_PATH", .string(value))
                case .frameworkSearchPaths(let value):
                    return ("FRAMEWORK_SEARCH_PATHS", .array(value))
                case .frameworkVersion(let value):
                    return ("FRAMEWORK_VERSION", .string(value))
                case .fullProductName(let value):
                    return ("FULL_PRODUCT_NAME", .string(value))
                case .fuseBuildPhases(let value):
                    return ("FUSE_BUILD_PHASES", .init(booleanLiteral: value))
                case .fuseBuildScriptPhases(let value):
                    return ("FUSE_BUILD_SCRIPT_PHASES", .init(booleanLiteral: value))
                case .gcc3Version(let value):
                    return ("GCC3_VERSION", .string(value))
                case .gccCharIsUnsignedChar(let value):
                    return ("GCC_CHAR_IS_UNSIGNED_CHAR", .init(booleanLiteral: value))
                case .gccCWASMSyntax(let value):
                    return ("GCC_CW_ASM_SYNTAX", .init(booleanLiteral: value))
                case .gccCLanguageStandard(let value):
                    return ("GCC_C_LANGUAGE_STANDARD", .string(value.rawValue))
                case .gccDebugInformationFormat(let value):
                    return ("GCC_DEBUG_INFORMATION_FORMAT", .string(value.rawValue))
                case .gccDynamicNoPic(let value):
                    return ("GCC_DYNAMIC_NO_PIC", .init(booleanLiteral: value))
                case .gccEnableASMKeyword(let value):
                    return ("GCC_ENABLE_ASM_KEYWORD", .init(booleanLiteral: value))
                case .gccEnableBuiltinFunctions(let value):
                    return ("GCC_ENABLE_BUILTIN_FUNCTIONS", .init(booleanLiteral: value))
                case .gccEnableCPPExceptions(let value):
                    return ("GCC_ENABLE_CPP_EXCEPTIONS", .init(booleanLiteral: value))
                case .gccEnableCPPRTTI(let value):
                    return ("GCC_ENABLE_CPP_RTTI", .init(booleanLiteral: value))
                case .gccEnableExceptions(let value):
                    return ("GCC_ENABLE_EXCEPTIONS", .init(booleanLiteral: value))
                case .gccEnableFloatingPointLibraryCalls(let value):
                    return ("GCC_ENABLE_FLOATING_POINT_LIBRARY_CALLS", .init(booleanLiteral: value))
                case .gccEnableKernelDevelopment(let value):
                    return ("GCC_ENABLE_KERNEL_DEVELOPMENT", .init(booleanLiteral: value))
                case .gccEnableOBJCExceptions(let value):
                    return ("GCC_ENABLE_OBJC_EXCEPTIONS", .init(booleanLiteral: value))
                case .gccEnablePascalStrings(let value):
                    return ("GCC_ENABLE_PASCAL_STRINGS", .init(booleanLiteral: value))
                case .gccEnableSSE3Extensions(let value):
                    return ("GCC_ENABLE_SSE3_EXTENSIONS", .init(booleanLiteral: value))
                case .gccEnableSSE41Extensions(let value):
                    return ("GCC_ENABLE_SSE41_EXTENSIONS", .init(booleanLiteral: value))
                case .gccEnableSSE42Extensions(let value):
                    return ("GCC_ENABLE_SSE42_EXTENSIONS", .init(booleanLiteral: value))
                case .gccEnableSupplementalSSE3Instructions(let value):
                    return ("GCC_ENABLE_SUPPLEMENTAL_SSE3_INSTRUCTIONS", .init(booleanLiteral: value))
                case .gccEnableTrigraphs(let value):
                    return ("GCC_ENABLE_TRIGRAPHS", .init(booleanLiteral: value))
                case .gccFastMath(let value):
                    return ("GCC_FAST_MATH", .init(booleanLiteral: value))
                case .gccGenerateDebuggingSymbols(let value):
                    return ("GCC_GENERATE_DEBUGGING_SYMBOLS", .init(booleanLiteral: value))
                case .gccGenerateTestCoverageFiles(let value):
                    return ("GCC_GENERATE_TEST_COVERAGE_FILES", .init(booleanLiteral: value))
                case .gccIncreasePrecompiledHeaderSharing(let value):
                    return ("GCC_INCREASE_PRECOMPILED_HEADER_SHARING", .init(booleanLiteral: value))
                case .gccInlinesArePrivateExtern(let value):
                    return ("GCC_INLINES_ARE_PRIVATE_EXTERN", .init(booleanLiteral: value))
                case .gccInputFiletype(let value):
                    return ("GCC_INPUT_FILETYPE", .string(value.rawValue))
                case .gccInstrumentProgramFlowARCS(let value):
                    return ("GCC_INSTRUMENT_PROGRAM_FLOW_ARCS", .init(booleanLiteral: value))
                case .gccLinkWithDynamicLibraries(let value):
                    return ("GCC_LINK_WITH_DYNAMIC_LIBRARIES", .init(booleanLiteral: value))
                case .gccNoCommonBlocks(let value):
                    return ("GCC_NO_COMMON_BLOCKS", .init(booleanLiteral: value))
                case .gccOBJCABIVersion(let value):
                    return ("GCC_OBJC_ABI_VERSION", .string(value.rawValue))
                case .gccOBJCLegacyDispatch(let value):
                    return ("GCC_OBJC_LEGACY_DISPATCH", .init(booleanLiteral: value))
                case .gccOperation(let value):
                    return ("GCC_OPERATION", .string(value.rawValue))
                case .gccOptimizationLevel(let value):
                    return ("GCC_OPTIMIZATION_LEVEL", .string(value.rawValue))
                case .gccPFEFileCDialects(let value):
                    return ("GCC_PFE_FILE_C_DIALECTS", .array(value))
                case .gccPrecompilePrefixHeader(let value):
                    return ("GCC_PRECOMPILE_PREFIX_HEADER", .init(booleanLiteral: value))
                case .gccPrefixHeader(let value):
                    return ("GCC_PREFIX_HEADER", .string(value))
                case .gccPreprocessorDefinitions(let value):
                    return ("GCC_PREPROCESSOR_DEFINITIONS", .array(value))
                case .gccPreprocessorDefinitionsNotUsedInPrecomps(let value):
                    return ("GCC_PREPROCESSOR_DEFINITIONS_NOT_USED_IN_PRECOMPS", .array(value))
                case .gccProductTypePreprocessorDefinitions(let value):
                    return ("GCC_PRODUCT_TYPE_PREPROCESSOR_DEFINITIONS", .array(value))
                case .gccReuseStrings(let value):
                    return ("GCC_REUSE_STRINGS", .init(booleanLiteral: value))
                case .gccShortEnums(let value):
                    return ("GCC_SHORT_ENUMS", .init(booleanLiteral: value))
                case .gccStrictAliasing(let value):
                    return ("GCC_STRICT_ALIASING", .init(booleanLiteral: value))
                case .gccSymbolsPrivateExtern(let value):
                    return ("GCC_SYMBOLS_PRIVATE_EXTERN", .init(booleanLiteral: value))
                case .gccThreadsafeStatics(let value):
                    return ("GCC_THREADSAFE_STATICS", .init(booleanLiteral: value))
                case .gccTreatImplicitFunctionDeclarationsAsErrors(let value):
                    return ("GCC_TREAT_IMPLICIT_FUNCTION_DECLARATIONS_AS_ERRORS", .init(booleanLiteral: value))
                case .gccTreatIncompatiblePointerTypeWarningsAsErrors(let value):
                    return ("GCC_TREAT_INCOMPATIBLE_POINTER_TYPE_WARNINGS_AS_ERRORS", .init(booleanLiteral: value))
                case .gccTreatWarningsAsErrors(let value):
                    return ("GCC_TREAT_WARNINGS_AS_ERRORS", .init(booleanLiteral: value))
                case .gccUnrollLoops(let value):
                    return ("GCC_UNROLL_LOOPS", .init(booleanLiteral: value))
                case .gccUseGCC3PFESupport(let value):
                    return ("GCC_USE_GCC3_PFE_SUPPORT", .init(booleanLiteral: value))
                case .gccUseStandardIncludeSearching(let value):
                    return ("GCC_USE_STANDARD_INCLUDE_SEARCHING", .init(booleanLiteral: value))
                case .gccVersion(let value):
                    return ("GCC_VERSION", .string(value))
                case .gccVersionIdentifier(let value):
                    return ("GCC_VERSION_IDENTIFIER", .string(value))
                case .gccWarn64To32BitConversion(let value):
                    return ("GCC_WARN_64_TO_32_BIT_CONVERSION", .string(value.rawValue))
                case .gccWarnAboutDeprecatedFunctions(let value):
                    return ("GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS", .init(booleanLiteral: value))
                case .gccWarnAboutInvalidOffsetOfMacro(let value):
                    return ("GCC_WARN_ABOUT_INVALID_OFFSETOF_MACRO", .init(booleanLiteral: value))
                case .gccWarnAboutMissingFieldInitializers(let value):
                    return ("GCC_WARN_ABOUT_MISSING_FIELD_INITIALIZERS", .init(booleanLiteral: value))
                case .gccWarnAboutMissingNewline(let value):
                    return ("GCC_WARN_ABOUT_MISSING_NEWLINE", .init(booleanLiteral: value))
                case .gccWarnAboutMissingPrototypes(let value):
                    return ("GCC_WARN_ABOUT_MISSING_PROTOTYPES", .init(booleanLiteral: value))
                case .gccWarnAboutPointerSignedness(let value):
                    return ("GCC_WARN_ABOUT_POINTER_SIGNEDNESS", .init(booleanLiteral: value))
                case .gccWarnAboutReturnType(let value):
                    return ("GCC_WARN_ABOUT_RETURN_TYPE", .string(value.rawValue))
                case .gccWarnAllowIncompleteProtocol(let value):
                    return ("GCC_WARN_ALLOW_INCOMPLETE_PROTOCOL", .init(booleanLiteral: value))
                case .gccWarnCheckSwitchStatements(let value):
                    return ("GCC_WARN_CHECK_SWITCH_STATEMENTS", .init(booleanLiteral: value))
                case .gccWarnFourCharacterConstants(let value):
                    return ("GCC_WARN_FOUR_CHARACTER_CONSTANTS", .init(booleanLiteral: value))
                case .gccWarnHiddenVirtualFunctions(let value):
                    return ("GCC_WARN_HIDDEN_VIRTUAL_FUNCTIONS", .init(booleanLiteral: value))
                case .gccWarnInhibitAllWarnings(let value):
                    return ("GCC_WARN_INHIBIT_ALL_WARNINGS", .init(booleanLiteral: value))
                case .gccWarnInitializerNotFullyBracketed(let value):
                    return ("GCC_WARN_INITIALIZER_NOT_FULLY_BRACKETED", .init(booleanLiteral: value))
                case .gccWarnMissingParentheses(let value):
                    return ("GCC_WARN_MISSING_PARENTHESES", .init(booleanLiteral: value))
                case .gccWarnMultipleDefinitionTypesForSelector(let value):
                    return ("GCC_WARN_MULTIPLE_DEFINITION_TYPES_FOR_SELECTOR", .init(booleanLiteral: value))
                case .gccWarnNonVirtualDestructor(let value):
                    return ("GCC_WARN_NON_VIRTUAL_DESTRUCTOR", .init(booleanLiteral: value))
                case .gccWarnPedantic(let value):
                    return ("GCC_WARN_PEDANTIC", .init(booleanLiteral: value))
                case .gccWarnShadow(let value):
                    return ("GCC_WARN_SHADOW", .init(booleanLiteral: value))
                case .gccWarnSignCompare(let value):
                    return ("GCC_WARN_SIGN_COMPARE", .init(booleanLiteral: value))
                case .gccWarnStrictSelectorMatch(let value):
                    return ("GCC_WARN_STRICT_SELECTOR_MATCH", .init(booleanLiteral: value))
                case .gccWarnTypecheckCallsToPrintf(let value):
                    return ("GCC_WARN_TYPECHECK_CALLS_TO_PRINTF", .init(booleanLiteral: value))
                case .gccWarnUndeclaredSelector(let value):
                    return ("GCC_WARN_UNDECLARED_SELECTOR", .init(booleanLiteral: value))
                case .gccWarnUninitializedAutos(let value):
                    return ("GCC_WARN_UNINITIALIZED_AUTOS", .string(value.rawValue))
                case .gccWarnUnknownPragmas(let value):
                    return ("GCC_WARN_UNKNOWN_PRAGMAS", .init(booleanLiteral: value))
                case .gccWarnUnusedFunction(let value):
                    return ("GCC_WARN_UNUSED_FUNCTION", .init(booleanLiteral: value))
                case .gccWarnUnusedLabel(let value):
                    return ("GCC_WARN_UNUSED_LABEL", .init(booleanLiteral: value))
                case .gccWarnUnusedParameter(let value):
                    return ("GCC_WARN_UNUSED_PARAMETER", .init(booleanLiteral: value))
                case .gccWarnUnusedValue(let value):
                    return ("GCC_WARN_UNUSED_VALUE", .init(booleanLiteral: value))
                case .gccWarnUnusedVariable(let value):
                    return ("GCC_WARN_UNUSED_VARIABLE", .init(booleanLiteral: value))
                case .generatedModulemapDir(let value):
                    return ("GENERATED_MODULEMAP_DIR", .string(value))
                case .generateInfoplistFile(let value):
                    return ("GENERATE_INFOPLIST_FILE", .init(booleanLiteral: value))
                case .generateIntermediateTextBasedStubs(let value):
                    return ("GENERATE_INTERMEDIATE_TEXT_BASED_STUBS", .init(booleanLiteral: value))
                case .generateMasterObjectFile(let value):
                    return ("GENERATE_MASTER_OBJECT_FILE", .init(booleanLiteral: value))
                case .generatePkginfoFile(let value):
                    return ("GENERATE_PKGINFO_FILE", .init(booleanLiteral: value))
                case .generateProfilingCode(let value):
                    return ("GENERATE_PROFILING_CODE", .init(booleanLiteral: value))
                case .generateTextBasedStubs(let value):
                    return ("GENERATE_TEXT_BASED_STUBS", .init(booleanLiteral: value))
                case .globalCFlags(let value):
                    return ("GLOBAL_CFLAGS", .array(value))
                case .generatedPkgInfoFile(let value):
                    return ("GeneratedPkgInfoFile", .string(value))
                case .headermapFileFormat(let value):
                    return ("HEADERMAP_FILE_FORMAT", .string(value.rawValue))
                case .headermapIncludesFlatEntriesForTargetBeingBuilt(let value):
                    return ("HEADERMAP_INCLUDES_FLAT_ENTRIES_FOR_TARGET_BEING_BUILT", .init(booleanLiteral: value))
                case .headermapIncludesFrameworkEntriesForAllProductTypes(let value):
                    return ("HEADERMAP_INCLUDES_FRAMEWORK_ENTRIES_FOR_ALL_PRODUCT_TYPES", .init(booleanLiteral: value))
                case .headermapIncludesNonpublicNonprivateHeaders(let value):
                    return ("HEADERMAP_INCLUDES_NONPUBLIC_NONPRIVATE_HEADERS", .init(booleanLiteral: value))
                case .headermapIncludesProjectHeaders(let value):
                    return ("HEADERMAP_INCLUDES_PROJECT_HEADERS", .init(booleanLiteral: value))
                case .headermapUsesFrameworkPrefixEntries(let value):
                    return ("HEADERMAP_USES_FRAMEWORK_PREFIX_ENTRIES", .init(booleanLiteral: value))
                case .headermapUsesVFS(let value):
                    return ("HEADERMAP_USES_VFS", .init(booleanLiteral: value))
                case .headerSearchPaths(let value):
                    return ("HEADER_SEARCH_PATHS", .array(value))
                case .hideBitcodeSymbols(let value):
                    return ("HIDE_BITCODE_SYMBOLS", .init(booleanLiteral: value))
                case .home(let value):
                    return ("HOME", .string(value))
                case .hostArch(let value):
                    return ("HOST_ARCH", .string(value))
                case .ibcCompilationModeForIOS(let value):
                    return ("IBC_COMPILATION_MODE_FOR_IOS", .string(value))
                case .ibcCompilerAutoActivateCustomFonts(let value):
                    return ("IBC_COMPILER_AUTO_ACTIVATE_CUSTOM_FONTS", .init(booleanLiteral: value))
                case .ibcCompilerUseNibkeyedarchiverForMACOS(let value):
                    return ("IBC_COMPILER_USE_NIBKEYEDARCHIVER_FOR_MACOS", .init(booleanLiteral: value))
                case .ibcErrors(let value):
                    return ("IBC_ERRORS", .init(booleanLiteral: value))
                case .ibcExec(let value):
                    return ("IBC_EXEC", .string(value))
                case .ibcFlattenNIBS(let value):
                    return ("IBC_FLATTEN_NIBS", .init(booleanLiteral: value))
                case .ibcModule(let value):
                    return ("IBC_MODULE", .string(value))
                case .ibcNotices(let value):
                    return ("IBC_NOTICES", .init(booleanLiteral: value))
                case .ibcOtherFlags(let value):
                    return ("IBC_OTHER_FLAGS", .array(value))
                case .ibcOverridingPluginsAndFrameworksDir(let value):
                    return ("IBC_OVERRIDING_PLUGINS_AND_FRAMEWORKS_DIR", .string(value))
                case .ibcPlugins(let value):
                    return ("IBC_PLUGINS", .array(value))
                case .ibcPluginSearchPaths(let value):
                    return ("IBC_PLUGIN_SEARCH_PATHS", .array(value))
                case .ibcRegionsAndStringsFiles(let value):
                    return ("IBC_REGIONS_AND_STRINGS_FILES", .array(value))
                case .ibcStripNIBS(let value):
                    return ("IBC_STRIP_NIBS", .init(booleanLiteral: value))
                case .ibcWarnings(let value):
                    return ("IBC_WARNINGS", .init(booleanLiteral: value))
                case .ibscCompilationModeForIOS(let value):
                    return ("IBSC_COMPILATION_MODE_FOR_IOS", .string(value))
                case .ibscCompilerAutoActivateCustomFonts(let value):
                    return ("IBSC_COMPILER_AUTO_ACTIVATE_CUSTOM_FONTS", .init(booleanLiteral: value))
                case .ibscCompilerUseNibkeyedarchiverForMACOS(let value):
                    return ("IBSC_COMPILER_USE_NIBKEYEDARCHIVER_FOR_MACOS", .init(booleanLiteral: value))
                case .ibscErrors(let value):
                    return ("IBSC_ERRORS", .init(booleanLiteral: value))
                case .ibscFlattenNIBS(let value):
                    return ("IBSC_FLATTEN_NIBS", .init(booleanLiteral: value))
                case .ibscModule(let value):
                    return ("IBSC_MODULE", .string(value))
                case .ibscNotices(let value):
                    return ("IBSC_NOTICES", .init(booleanLiteral: value))
                case .ibscOtherFlags(let value):
                    return ("IBSC_OTHER_FLAGS", .array(value))
                case .ibscRegionsAndStringsFiles(let value):
                    return ("IBSC_REGIONS_AND_STRINGS_FILES", .array(value))
                case .ibscStripNIBS(let value):
                    return ("IBSC_STRIP_NIBS", .init(booleanLiteral: value))
                case .ibscWarnings(let value):
                    return ("IBSC_WARNINGS", .init(booleanLiteral: value))
                case .iconv(let value):
                    return ("ICONV", .string(value))
                case .iigCXXLanguageStandard(let value):
                    return ("IIG_CXX_LANGUAGE_STANDARD", .string(value))
                case .iigDerivedFileDir(let value):
                    return ("IIG_DERIVED_FILE_DIR", .string(value))
                case .iigExec(let value):
                    return ("IIG_EXEC", .string(value))
                case .iigFrameworkName(let value):
                    return ("IIG_FRAMEWORK_NAME", .string(value))
                case .iigHeadersDir(let value):
                    return ("IIG_HEADERS_DIR", .string(value))
                case .iigImplementationDir(let value):
                    return ("IIG_IMPLEMENTATION_DIR", .string(value))
                case .iigPreprocessorDefinitions(let value):
                    return ("IIG_PREPROCESSOR_DEFINITIONS", .array(value))
                case .includedRecursiveSearchPathSubdirectories(let value):
                    return ("INCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES", .array(value))
                case .includedSourceFileNames(let value):
                    return ("INCLUDED_SOURCE_FILE_NAMES", .array(value))
                case .infoplistEnableCfbundleiconsMerge(let value):
                    return ("INFOPLIST_ENABLE_CFBUNDLEICONS_MERGE", .init(booleanLiteral: value))
                case .infoplistExpandBuildSettings(let value):
                    return ("INFOPLIST_EXPAND_BUILD_SETTINGS", .init(booleanLiteral: value))
                case .infoplistFile(let value):
                    return ("INFOPLIST_FILE", .string(value))
                case .infoPlistKeyCFBundleDisplayName(let value):
                    return ("INFOPLIST_KEY_CFBundleDisplayName", .string(value))
                case .infoPlistKeyCLKComplicationPrincipalClass(let value):
                    return ("INFOPLIST_KEY_CLKComplicationPrincipalClass", .string(value))
                case .infoPlistKeyLSApplicationCategoryType(let value):
                    return ("INFOPLIST_KEY_LSApplicationCategoryType", .string(value.rawValue))
                case .infoPlistKeyLSBackgroundOnly(let value):
                    return ("INFOPLIST_KEY_LSBackgroundOnly", .init(booleanLiteral: value))
                case .infoPlistKeyLSSupportsOpeningDocumentsInPlace(let value):
                    return ("INFOPLIST_KEY_LSSupportsOpeningDocumentsInPlace", .init(booleanLiteral: value))
                case .infoPlistKeyLSUIElement(let value):
                    return ("INFOPLIST_KEY_LSUIElement", .init(booleanLiteral: value))
                case .infoPlistKeyMetalCaptureEnabled(let value):
                    return ("INFOPLIST_KEY_MetalCaptureEnabled", .init(booleanLiteral: value))
                case .infoPlistKeyNFCReaderUsageDescription(let value):
                    return ("INFOPLIST_KEY_NFCReaderUsageDescription", .string(value))
                case .infoPlistKeyNSAppleEventsUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSAppleEventsUsageDescription", .string(value))
                case .infoPlistKeyNSAppleMusicUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSAppleMusicUsageDescription", .string(value))
                case .infoPlistKeyNSBluetoothAlwaysUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSBluetoothAlwaysUsageDescription", .string(value))
                case .infoPlistKeyNSBluetoothPeripheralUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSBluetoothPeripheralUsageDescription", .string(value))
                case .infoPlistKeyNSBluetoothWhileInUseUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSBluetoothWhileInUseUsageDescription", .string(value))
                case .infoPlistKeyNSCalendarsUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSCalendarsUsageDescription", .string(value))
                case .infoPlistKeyNSCameraUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSCameraUsageDescription", .string(value))
                case .infoPlistKeyNSContactsUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSContactsUsageDescription", .string(value))
                case .infoPlistKeyNSDesktopFolderUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSDesktopFolderUsageDescription", .string(value))
                case .infoPlistKeyNSDocumentsFolderUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSDocumentsFolderUsageDescription", .string(value))
                case .infoPlistKeyNSDownloadsFolderUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSDownloadsFolderUsageDescription", .string(value))
                case .infoPlistKeyNSFaceIDUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSFaceIDUsageDescription", .string(value))
                case .infoPlistKeyNSFallDetectionUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSFallDetectionUsageDescription", .string(value))
                case .infoPlistKeyNSFileProviderDomainUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSFileProviderDomainUsageDescription", .string(value))
                case .infoPlistKeyNSFileProviderPresenceUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSFileProviderPresenceUsageDescription", .string(value))
                case .infoPlistKeyNSFocusStatusUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSFocusStatusUsageDescription", .string(value))
                case .infoPlistKeyNSGKFriendListUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSGKFriendListUsageDescription", .string(value))
                case .infoPlistKeyNSHealthClinicalHealthRecordsShareUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSHealthClinicalHealthRecordsShareUsageDescription", .string(value))
                case .infoPlistKeyNSHealthShareUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSHealthShareUsageDescription", .string(value))
                case .infoPlistKeyNSHealthUpdateUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSHealthUpdateUsageDescription", .string(value))
                case .infoPlistKeyNSHomeKitUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSHomeKitUsageDescription", .string(value))
                case .infoPlistKeyNSHumanReadableCopyright(let value):
                    return ("INFOPLIST_KEY_NSHumanReadableCopyright", .string(value))
                case .infoPlistKeyNSLocalNetworkUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSLocalNetworkUsageDescription", .string(value))
                case .infoPlistKeyNSLocationAlwaysAndWhenInUseUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSLocationAlwaysAndWhenInUseUsageDescription", .string(value))
                case .infoPlistKeyNSLocationAlwaysUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSLocationAlwaysUsageDescription", .string(value))
                case .infoPlistKeyNSLocationTemporaryUsageDescriptionDictionary(let value):
                    return ("INFOPLIST_KEY_NSLocationTemporaryUsageDescriptionDictionary", .string(value))
                case .infoPlistKeyNSLocationUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSLocationUsageDescription", .string(value))
                case .infoPlistKeyNSLocationWhenInUseUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSLocationWhenInUseUsageDescription", .string(value))
                case .infoPlistKeyNSMainNibFile(let value):
                    return ("INFOPLIST_KEY_NSMainNibFile", .string(value))
                case .infoPlistKeyNSMainStoryboardFile(let value):
                    return ("INFOPLIST_KEY_NSMainStoryboardFile", .string(value))
                case .infoPlistKeyNSMicrophoneUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSMicrophoneUsageDescription", .string(value))
                case .infoPlistKeyNSMotionUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSMotionUsageDescription", .string(value))
                case .infoPlistKeyNSNearbyInteractionAllowOnceUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSNearbyInteractionAllowOnceUsageDescription", .string(value))
                case .infoPlistKeyNSNearbyInteractionUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSNearbyInteractionUsageDescription", .string(value))
                case .infoPlistKeyNSNetworkVolumesUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSNetworkVolumesUsageDescription", .string(value))
                case .infoPlistKeyNSPhotoLibraryAddUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSPhotoLibraryAddUsageDescription", .string(value))
                case .infoPlistKeyNSPhotoLibraryUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSPhotoLibraryUsageDescription", .string(value))
                case .infoPlistKeyNSPrincipalClass(let value):
                    return ("INFOPLIST_KEY_NSPrincipalClass", .string(value))
                case .infoPlistKeyNSRemindersUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSRemindersUsageDescription", .string(value))
                case .infoPlistKeyNSRemovableVolumesUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSRemovableVolumesUsageDescription", .string(value))
                case .infoPlistKeyNSSensorKitPrivacyPolicyURL(let value):
                    return ("INFOPLIST_KEY_NSSensorKitPrivacyPolicyURL", .string(value))
                case .infoPlistKeyNSSensorKitUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSSensorKitUsageDescription", .string(value))
                case .infoPlistKeyNSSiriUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSSiriUsageDescription", .string(value))
                case .infoPlistKeyNSSpeechRecognitionUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSSpeechRecognitionUsageDescription", .string(value))
                case .infoPlistKeyNSStickerSharingLevel(let value):
                    return ("INFOPLIST_KEY_NSStickerSharingLevel", .string(value.rawValue))
                case .infoPlistKeyNSSupportsLiveActivities(let value):
                    return ("INFOPLIST_KEY_NSSupportsLiveActivities", .init(booleanLiteral: value))
                case .infoPlistKeyNSSupportsLiveActivitiesFrequentUpdates(let value):
                    return ("INFOPLIST_KEY_NSSupportsLiveActivitiesFrequentUpdates", .init(booleanLiteral: value))
                case .infoPlistKeyNSSystemAdministrationUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSSystemAdministrationUsageDescription", .string(value))
                case .infoPlistKeyNSSystemExtensionUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSSystemExtensionUsageDescription", .string(value))
                case .infoPlistKeyNSUserTrackingUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSUserTrackingUsageDescription", .string(value))
                case .infoPlistKeyNSVideoSubscriberAccountUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSVideoSubscriberAccountUsageDescription", .string(value))
                case .infoPlistKeyNSVoIPUsageDescription(let value):
                    return ("INFOPLIST_KEY_NSVoIPUsageDescription", .string(value))
                case .infoPlistKeyOSBundleUsageDescription(let value):
                    return ("INFOPLIST_KEY_OSBundleUsageDescription", .string(value))
                case .infoPlistKeyUIApplicationSceneManifestGeneration(let value):
                    return ("INFOPLIST_KEY_UIApplicationSceneManifest_Generation", .init(booleanLiteral: value))
                case .infoPlistKeyUIApplicationSupportsIndirectInputEvents(let value):
                    return ("INFOPLIST_KEY_UIApplicationSupportsIndirectInputEvents", .init(booleanLiteral: value))
                case .infoPlistKeyUILaunchScreenGeneration(let value):
                    return ("INFOPLIST_KEY_UILaunchScreen_Generation", .init(booleanLiteral: value))
                case .infoPlistKeyUILaunchStoryboardName(let value):
                    return ("INFOPLIST_KEY_UILaunchStoryboardName", .string(value))
                case .infoPlistKeyUIMainStoryboardFile(let value):
                    return ("INFOPLIST_KEY_UIMainStoryboardFile", .string(value))
                case .infoPlistKeyUIRequiredDeviceCapabilities(let value):
                    return ("INFOPLIST_KEY_UIRequiredDeviceCapabilities", .array(value))
                case .infoPlistKeyUIRequiresFullScreen(let value):
                    return ("INFOPLIST_KEY_UIRequiresFullScreen", .init(booleanLiteral: value))
                case .infoPlistKeyUIStatusBarHidden(let value):
                    return ("INFOPLIST_KEY_UIStatusBarHidden", .init(booleanLiteral: value))
                case .infoPlistKeyUIStatusBarStyle(let value):
                    return ("INFOPLIST_KEY_UIStatusBarStyle", .string(value.rawValue))
                case .infoPlistKeyUISupportedInterfaceOrientations(let value):
                    return ("INFOPLIST_KEY_UISupportedInterfaceOrientations", .array(value))
                case .infoPlistKeyUISupportedInterfaceOrientationsiPad(let value):
                    return ("INFOPLIST_KEY_UISupportedInterfaceOrientations_iPad", .array(value))
                case .infoPlistKeyUISupportedInterfaceOrientationsiPhone(let value):
                    return ("INFOPLIST_KEY_UISupportedInterfaceOrientations_iPhone", .array(value))
                case .infoPlistKeyUISupportsDocumentBrowser(let value):
                    return ("INFOPLIST_KEY_UISupportsDocumentBrowser", .init(booleanLiteral: value))
                case .infoPlistKeyUIUserInterfaceStyle(let value):
                    return ("INFOPLIST_KEY_UIUserInterfaceStyle", .string(value.rawValue))
                case .infoPlistKeyWKCompanionAppBundleIdentifier(let value):
                    return ("INFOPLIST_KEY_WKCompanionAppBundleIdentifier", .string(value))
                case .infoPlistKeyWKExtensionDelegateClassName(let value):
                    return ("INFOPLIST_KEY_WKExtensionDelegateClassName", .string(value))
                case .infoPlistKeyWKRunsIndependentlyOfCompanionApp(let value):
                    return ("INFOPLIST_KEY_WKRunsIndependentlyOfCompanionApp", .init(booleanLiteral: value))
                case .infoPlistKeyWKWatchOnly(let value):
                    return ("INFOPLIST_KEY_WKWatchOnly", .init(booleanLiteral: value))
                case .infoplistOtherPreprocessorFlags(let value):
                    return ("INFOPLIST_OTHER_PREPROCESSOR_FLAGS", .array(value))
                case .infoplistOutputFormat(let value):
                    return ("INFOPLIST_OUTPUT_FORMAT", .string(value.rawValue))
                case .infoplistPath(let value):
                    return ("INFOPLIST_PATH", .string(value))
                case .infoplistPrefixHeader(let value):
                    return ("INFOPLIST_PREFIX_HEADER", .string(value))
                case .infoplistPreprocess(let value):
                    return ("INFOPLIST_PREPROCESS", .init(booleanLiteral: value))
                case .infoplistPreprocessorDefinitions(let value):
                    return ("INFOPLIST_PREPROCESSOR_DEFINITIONS", .array(value))
                case .infostringsPath(let value):
                    return ("INFOSTRINGS_PATH", .string(value))
                case .initRoutine(let value):
                    return ("INIT_ROUTINE", .string(value))
                case .inlinePrivateFrameworks(let value):
                    return ("INLINE_PRIVATE_FRAMEWORKS", .init(booleanLiteral: value))
                case .installhdrsCopyPhase(let value):
                    return ("INSTALLHDRS_COPY_PHASE", .init(booleanLiteral: value))
                case .installhdrsScriptPhase(let value):
                    return ("INSTALLHDRS_SCRIPT_PHASE", .init(booleanLiteral: value))
                case .installDir(let value):
                    return ("INSTALL_DIR", .string(value))
                case .installGroup(let value):
                    return ("INSTALL_GROUP", .string(value))
                case .installModeFlag(let value):
                    return ("INSTALL_MODE_FLAG", .string(value))
                case .installOwner(let value):
                    return ("INSTALL_OWNER", .string(value))
                case .installPath(let value):
                    return ("INSTALL_PATH", .string(value))
                case .installRoot(let value):
                    return ("INSTALL_ROOT", .string(value))
                case .instrumentsPackageBuilder(let value):
                    return ("INSTRUMENTS_PACKAGE_BUILDER", .string(value))
                case .instrumentsPackageBuilderDependencyInfoFile(let value):
                    return ("INSTRUMENTS_PACKAGE_BUILDER_DEPENDENCY_INFO_FILE", .string(value))
                case .instrumentsPackageBuilderLinkedPackages(let value):
                    return ("INSTRUMENTS_PACKAGE_BUILDER_LINKED_PACKAGES", .array(value))
                case .instrumentsPackageBuilderNoSystemSearch(let value):
                    return ("INSTRUMENTS_PACKAGE_BUILDER_NO_SYSTEM_SEARCH", .init(booleanLiteral: value))
                case .instrumentsPackageBuilderSearchPaths(let value):
                    return ("INSTRUMENTS_PACKAGE_BUILDER_SEARCH_PATHS", .array(value))
                case .instrumentsPackageBuilderVersionOverride(let value):
                    return ("INSTRUMENTS_PACKAGE_BUILDER_VERSION_OVERRIDE", .string(value))
                case .intentsCodegenLanguage(let value):
                    return ("INTENTS_CODEGEN_LANGUAGE", .string(value.rawValue))
                case .infoPlistPath(let value):
                    return ("InfoPlistPath", .string(value))
                case .javacDefaultFlags(let value):
                    return ("JAVAC_DEFAULT_FLAGS", .array(value))
                case .javaAppStub(let value):
                    return ("JAVA_APP_STUB", .string(value))
                case .javaArchiveClasses(let value):
                    return ("JAVA_ARCHIVE_CLASSES", .init(booleanLiteral: value))
                case .javaArchiveType(let value):
                    return ("JAVA_ARCHIVE_TYPE", .string(value))
                case .javaCompiler(let value):
                    return ("JAVA_COMPILER", .string(value))
                case .javaFolderPath(let value):
                    return ("JAVA_FOLDER_PATH", .string(value))
                case .javaFrameworkJars(let value):
                    return ("JAVA_FRAMEWORK_JARS", .array(value))
                case .javaFrameworkResourcesDirs(let value):
                    return ("JAVA_FRAMEWORK_RESOURCES_DIRS", .array(value))
                case .javaJarFlags(let value):
                    return ("JAVA_JAR_FLAGS", .array(value))
                case .javaSourceSubdir(let value):
                    return ("JAVA_SOURCE_SUBDIR", .string(value))
                case .javaUseDependencies(let value):
                    return ("JAVA_USE_DEPENDENCIES", .init(booleanLiteral: value))
                case .javaZipFlags(let value):
                    return ("JAVA_ZIP_FLAGS", .array(value))
                case .jikesDefaultFlags(let value):
                    return ("JIKES_DEFAULT_FLAGS", .array(value))
                case .keepPrivateExterns(let value):
                    return ("KEEP_PRIVATE_EXTERNS", .init(booleanLiteral: value))
                case .kextCFlags(let value):
                    return ("KEXT_CFLAGS", .array(value))
                case .kextCPlusPlusFlags(let value):
                    return ("KEXT_CPLUSPLUSFLAGS", .array(value))
                case .launchConstraintParent(let value):
                    return ("LAUNCH_CONSTRAINT_PARENT", .string(value))
                case .launchConstraintResponsible(let value):
                    return ("LAUNCH_CONSTRAINT_RESPONSIBLE", .string(value))
                case .launchConstraintSelf(let value):
                    return ("LAUNCH_CONSTRAINT_SELF", .string(value))
                case .ldAdditionalDeploymentTargetFlags(let value):
                    return ("LD_ADDITIONAL_DEPLOYMENT_TARGET_FLAGS", .array(value))
                case .ldBitcodeGenerationMode(let value):
                    return ("LD_BITCODE_GENERATION_MODE", .string(value.rawValue))
                case .ldDebugVariant(let value):
                    return ("LD_DEBUG_VARIANT", .init(booleanLiteral: value))
                case .ldDependencyInfoFile(let value):
                    return ("LD_DEPENDENCY_INFO_FILE", .string(value))
                case .ldDeterministicMode(let value):
                    return ("LD_DETERMINISTIC_MODE", .init(booleanLiteral: value))
                case .ldDontRunDeduplication(let value):
                    return ("LD_DONT_RUN_DEDUPLICATION", .init(booleanLiteral: value))
                case .ldDYLIBAllowableClients(let value):
                    return ("LD_DYLIB_ALLOWABLE_CLIENTS", .array(value))
                case .ldDYLIBInstallName(let value):
                    return ("LD_DYLIB_INSTALL_NAME", .string(value))
                case .ldEntitlementsSection(let value):
                    return ("LD_ENTITLEMENTS_SECTION", .string(value))
                case .ldEntitlementsSectionDer(let value):
                    return ("LD_ENTITLEMENTS_SECTION_DER", .string(value))
                case .ldEntryPoint(let value):
                    return ("LD_ENTRY_POINT", .string(value))
                case .ldExportGlobalSymbols(let value):
                    return ("LD_EXPORT_GLOBAL_SYMBOLS", .init(booleanLiteral: value))
                case .ldExportSymbols(let value):
                    return ("LD_EXPORT_SYMBOLS", .init(booleanLiteral: value))
                case .ldFinalOutputFile(let value):
                    return ("LD_FINAL_OUTPUT_FILE", .string(value))
                case .ldFlags(let value):
                    return ("LD_FLAGS", .array(value))
                case .ldGenerateBitcodeSymbolMap(let value):
                    return ("LD_GENERATE_BITCODE_SYMBOL_MAP", .init(booleanLiteral: value))
                case .ldGenerateMapFile(let value):
                    return ("LD_GENERATE_MAP_FILE", .init(booleanLiteral: value))
                case .ldHideBitcodeSymbols(let value):
                    return ("LD_HIDE_BITCODE_SYMBOLS", .init(booleanLiteral: value))
                case .ldLTOObjectFile(let value):
                    return ("LD_LTO_OBJECT_FILE", .string(value))
                case .ldMakeMergeable(let value):
                    return ("LD_MAKE_MERGEABLE", .init(booleanLiteral: value))
                case .ldMapFilePath(let value):
                    return ("LD_MAP_FILE_PATH", .string(value))
                case .ldNoPie(let value):
                    return ("LD_NO_PIE", .init(booleanLiteral: value))
                case .ldOBJCABIVersion(let value):
                    return ("LD_OBJC_ABI_VERSION", .string(value.rawValue))
                case .ldOptimizationLevel(let value):
                    return ("LD_OPTIMIZATION_LEVEL", .string(value))
                case .ldQuoteLinkerArgumentsForCompilerDriver(let value):
                    return ("LD_QUOTE_LINKER_ARGUMENTS_FOR_COMPILER_DRIVER", .init(booleanLiteral: value))
                case .ldRunpathSearchPaths(let value):
                    return ("LD_RUNPATH_SEARCH_PATHS", .array(value))
                case .ldTargetTripleArchs(let value):
                    return ("LD_TARGET_TRIPLE_ARCHS", .array(value))
                case .ldTargetTripleVariants(let value):
                    return ("LD_TARGET_TRIPLE_VARIANTS", .array(value))
                case .ldThreadSanitizer(let value):
                    return ("LD_THREAD_SANITIZER", .init(booleanLiteral: value))
                case .ldVerifyBitcode(let value):
                    return ("LD_VERIFY_BITCODE", .init(booleanLiteral: value))
                case .lex(let value):
                    return ("LEX", .string(value))
                case .lexFlags(let value):
                    return ("LEXFLAGS", .array(value))
                case .lexCaseInsensitiveScanner(let value):
                    return ("LEX_CASE_INSENSITIVE_SCANNER", .init(booleanLiteral: value))
                case .lexInsertLineDirectives(let value):
                    return ("LEX_INSERT_LINE_DIRECTIVES", .init(booleanLiteral: value))
                case .lexSuppressDefaultRule(let value):
                    return ("LEX_SUPPRESS_DEFAULT_RULE", .init(booleanLiteral: value))
                case .lexSuppressWarnings(let value):
                    return ("LEX_SUPPRESS_WARNINGS", .init(booleanLiteral: value))
                case .libraryDEXTInstallPath(let value):
                    return ("LIBRARY_DEXT_INSTALL_PATH", .string(value))
                case .libraryFlagNospace(let value):
                    return ("LIBRARY_FLAG_NOSPACE", .init(booleanLiteral: value))
                case .libraryFlagPrefix(let value):
                    return ("LIBRARY_FLAG_PREFIX", .string(value))
                case .libraryKEXTInstallPath(let value):
                    return ("LIBRARY_KEXT_INSTALL_PATH", .string(value))
                case .libraryLoadConstraint(let value):
                    return ("LIBRARY_LOAD_CONSTRAINT", .string(value))
                case .librarySearchPaths(let value):
                    return ("LIBRARY_SEARCH_PATHS", .array(value))
                case .libTool(let value):
                    return ("LIBTOOL", .string(value))
                case .libToolDependencyInfoFile(let value):
                    return ("LIBTOOL_DEPENDENCY_INFO_FILE", .string(value))
                case .libToolDeploymentTarget(let value):
                    return ("LIBTOOL_DEPLOYMENT_TARGET", .string(value))
                case .libToolDeterministicMode(let value):
                    return ("LIBTOOL_DETERMINISTIC_MODE", .init(booleanLiteral: value))
                case .linkerDisplaysMangledNames(let value):
                    return ("LINKER_DISPLAYS_MANGLED_NAMES", .init(booleanLiteral: value))
                case .linkerLibraryFlags(let value):
                    return ("LINKER_LIBRARY_FLAGS", .array(value))
                case .linkWithStandardLibraries(let value):
                    return ("LINK_WITH_STANDARD_LIBRARIES", .init(booleanLiteral: value))
                case .llvmImplicitAggressiveOptimizations(let value):
                    return ("LLVM_IMPLICIT_AGGRESSIVE_OPTIMIZATIONS", .init(booleanLiteral: value))
                case .llvmLTO(let value):
                    return ("LLVM_LTO", .string(value.rawValue))
                case .llvmOptimizationLevelVal0(let value):
                    return ("LLVM_OPTIMIZATION_LEVEL_VAL_0", .init(booleanLiteral: value))
                case .llvmOptimizationLevelVal1(let value):
                    return ("LLVM_OPTIMIZATION_LEVEL_VAL_1", .init(booleanLiteral: value))
                case .llvmOptimizationLevelVal2(let value):
                    return ("LLVM_OPTIMIZATION_LEVEL_VAL_2", .init(booleanLiteral: value))
                case .llvmOptimizationLevelVal3(let value):
                    return ("LLVM_OPTIMIZATION_LEVEL_VAL_3", .init(booleanLiteral: value))
                case .llvmOptimizationLevelValFast(let value):
                    return ("LLVM_OPTIMIZATION_LEVEL_VAL_fast", .init(booleanLiteral: value))
                case .llvmOptimizationLevelValS(let value):
                    return ("LLVM_OPTIMIZATION_LEVEL_VAL_s", .init(booleanLiteral: value))
                case .llvmOptimizationLevelValZ(let value):
                    return ("LLVM_OPTIMIZATION_LEVEL_VAL_z", .init(booleanLiteral: value))
                case .llvmTargetTripleOSVersion(let value):
                    return ("LLVM_TARGET_TRIPLE_OS_VERSION", .string(value))
                case .llvmTargetTripleSuffix(let value):
                    return ("LLVM_TARGET_TRIPLE_SUFFIX", .string(value))
                case .llvmTargetTripleVendor(let value):
                    return ("LLVM_TARGET_TRIPLE_VENDOR", .string(value))
                case .lmAuxConstMetadataFiles(let value):
                    return ("LM_AUX_CONST_METADATA_FILES", .array(value))
                case .lmBinaryPath(let value):
                    return ("LM_BINARY_PATH", .string(value))
                case .lmCompileTimeExtraction(let value):
                    return ("LM_COMPILE_TIME_EXTRACTION", .init(booleanLiteral: value))
                case .lmDependencyFiles(let value):
                    return ("LM_DEPENDENCY_FILES", .array(value))
                case .lmEnableAppNameOverride(let value):
                    return ("LM_ENABLE_APP_NAME_OVERRIDE", .init(booleanLiteral: value))
                case .lmEnableLinkGeneration(let value):
                    return ("LM_ENABLE_LINK_GENERATION", .init(booleanLiteral: value))
                case .lmEnableStringValidation(let value):
                    return ("LM_ENABLE_STRING_VALIDATION", .init(booleanLiteral: value))
                case .lmForceLinkGeneration(let value):
                    return ("LM_FORCE_LINK_GENERATION", .init(booleanLiteral: value))
                case .lmIgnoreQueryGenericsErrors(let value):
                    return ("LM_IGNORE_QUERY_GENERICS_ERRORS", .init(booleanLiteral: value))
                case .lmLegacyExtractionOverride(let value):
                    return ("LM_LEGACY_EXTRACTION_OVERRIDE", .init(booleanLiteral: value))
                case .lmSourceFiles(let value):
                    return ("LM_SOURCE_FILES", .array(value))
                case .lmStringsdataFiles(let value):
                    return ("LM_STRINGSDATA_FILES", .array(value))
                case .localizableContentDir(let value):
                    return ("LOCALIZABLE_CONTENT_DIR", .string(value))
                case .localizationExportSupported(let value):
                    return ("LOCALIZATION_EXPORT_SUPPORTED", .init(booleanLiteral: value))
                case .localizationPrefersStringCatalogs(let value):
                    return ("LOCALIZATION_PREFERS_STRING_CATALOGS", .init(booleanLiteral: value))
                case .localizedResourcesFolderPath(let value):
                    return ("LOCALIZED_RESOURCES_FOLDER_PATH", .string(value))
                case .localizedStringMacroNames(let value):
                    return ("LOCALIZED_STRING_MACRO_NAMES", .array(value))
                case .localizedStringSwiftUISupport(let value):
                    return ("LOCALIZED_STRING_SWIFTUI_SUPPORT", .init(booleanLiteral: value))
                case .locRoot(let value):
                    return ("LOCROOT", .string(value))
                case .locSYMRoot(let value):
                    return ("LOCSYMROOT", .string(value))
                case .logname(let value):
                    return ("LOGNAME", .string(value))
                case .machOType(let value):
                    return ("MACH_O_TYPE", .string(value.rawValue))
                case .macOSCreator(let value):
                    return ("MACOS_CREATOR", .string(value))
                case .macOSCreatorArg(let value):
                    return ("MACOS_CREATOR_ARG", .string(value))
                case .macOSType(let value):
                    return ("MACOS_TYPE", .string(value))
                case .macOSTypeArg(let value):
                    return ("MACOS_TYPE_ARG", .string(value))
                case .macOSXVersionMaxAllowed(let value):
                    return ("MAC_OS_X_VERSION_MAX_ALLOWED", .string(value))
                case .macOSXVersionMinRequired(let value):
                    return ("MAC_OS_X_VERSION_MIN_REQUIRED", .string(value))
                case .makeMergeable(let value):
                    return ("MAKE_MERGEABLE", .init(booleanLiteral: value))
                case .mapcModule(let value):
                    return ("MAPC_MODULE", .string(value))
                case .mapcNoWarnings(let value):
                    return ("MAPC_NO_WARNINGS", .init(booleanLiteral: value))
                case .marketingVersion(let value):
                    return ("MARKETING_VERSION", .string(value))
                case .mergeableLibrary(let value):
                    return ("MERGEABLE_LIBRARY", .init(booleanLiteral: value))
                case .mergedBinaryType(let value):
                    return ("MERGED_BINARY_TYPE", .string(value.rawValue))
                case .mergeLinkedLibraries(let value):
                    return ("MERGE_LINKED_LIBRARIES", .init(booleanLiteral: value))
                case .metalLibraryFileBase(let value):
                    return ("METAL_LIBRARY_FILE_BASE", .string(value))
                case .metalLibraryOutputDir(let value):
                    return ("METAL_LIBRARY_OUTPUT_DIR", .string(value))
                case .migDeploymentTarget(let value):
                    return ("MIG_DEPLOYMENT_TARGET", .string(value))
                case .migExec(let value):
                    return ("MIG_EXEC", .string(value))
                case .modulemapFile(let value):
                    return ("MODULEMAP_FILE", .string(value))
                case .modulemapPrivateFile(let value):
                    return ("MODULEMAP_PRIVATE_FILE", .string(value))
                case .modulesFolderPath(let value):
                    return ("MODULES_FOLDER_PATH", .string(value))
                case .moduleCacheDir(let value):
                    return ("MODULE_CACHE_DIR", .string(value))
                case .moduleName(let value):
                    return ("MODULE_NAME", .string(value))
                case .moduleStart(let value):
                    return ("MODULE_START", .string(value))
                case .moduleStop(let value):
                    return ("MODULE_STOP", .string(value))
                case .moduleVersion(let value):
                    return ("MODULE_VERSION", .string(value))
                case .momcModule(let value):
                    return ("MOMC_MODULE", .string(value))
                case .momcNoDeleteRuleWarnings(let value):
                    return ("MOMC_NO_DELETE_RULE_WARNINGS", .init(booleanLiteral: value))
                case .momcNoInverseRelationshipWarnings(let value):
                    return ("MOMC_NO_INVERSE_RELATIONSHIP_WARNINGS", .init(booleanLiteral: value))
                case .momcNoMaxPropertyCountWarnings(let value):
                    return ("MOMC_NO_MAX_PROPERTY_COUNT_WARNINGS", .init(booleanLiteral: value))
                case .momcNoWarnings(let value):
                    return ("MOMC_NO_WARNINGS", .init(booleanLiteral: value))
                case .momcOutputSuffix(let value):
                    return ("MOMC_OUTPUT_SUFFIX", .string(value))
                case .momcOutputSuffixXcdatamodel(let value):
                    return ("MOMC_OUTPUT_SUFFIX__xcdatamodel", .string(value))
                case .momcOutputSuffixXcdatamodeld(let value):
                    return ("MOMC_OUTPUT_SUFFIX__xcdatamodeld", .string(value))
                case .momcSuppressInverseTransientError(let value):
                    return ("MOMC_SUPPRESS_INVERSE_TRANSIENT_ERROR", .init(booleanLiteral: value))
                case .mtlCompilerDependencyInfoFile(let value):
                    return ("MTLCOMPILER_DEPENDENCY_INFO_FILE", .string(value))
                case .mtlCompilerOutputFile(let value):
                    return ("MTLCOMPILER_OUTPUT_FILE", .string(value))
                case .mtllinkerAlternateLinker(let value):
                    return ("MTLLINKER_ALTERNATE_LINKER", .string(value))
                case .mtllinkerFlags(let value):
                    return ("MTLLINKER_FLAGS", .array(value))
                case .mtllinkerIncludeSource(let value):
                    return ("MTLLINKER_INCLUDE_SOURCE", .string(value))
                case .mtllinkerOutputFile(let value):
                    return ("MTLLINKER_OUTPUT_FILE", .string(value))
                case .mtllinkerTargetTriple(let value):
                    return ("MTLLINKER_TARGET_TRIPLE", .string(value))
                case .mtlCompilerFlags(let value):
                    return ("MTL_COMPILER_FLAGS", .array(value))
                case .mtlEnableDebugInfo(let value):
                    return ("MTL_ENABLE_DEBUG_INFO", .string(value.rawValue))
                case .mtlEnableIndexStore(let value):
                    return ("MTL_ENABLE_INDEX_STORE", .init(booleanLiteral: value))
                case .mtlEnableModules(let value):
                    return ("MTL_ENABLE_MODULES", .string(value.rawValue))
                case .mtlFastMath(let value):
                    return ("MTL_FAST_MATH", .init(booleanLiteral: value))
                case .mtlFrameworkSearchPathBuiltProductsDir(let value):
                    return ("MTL_FRAMEWORK_SEARCH_PATH_BUILT_PRODUCTS_DIR", .string(value))
                case .mtlHeaderSearchPaths(let value):
                    return ("MTL_HEADER_SEARCH_PATHS", .array(value))
                case .mtlHeaderSearchPathBuiltProductsDir(let value):
                    return ("MTL_HEADER_SEARCH_PATH_BUILT_PRODUCTS_DIR", .string(value))
                case .mtlIgnoreWarnings(let value):
                    return ("MTL_IGNORE_WARNINGS", .init(booleanLiteral: value))
                case .mtlIndexStorePath(let value):
                    return ("MTL_INDEX_STORE_PATH", .string(value))
                case .mtlLanguageRevision(let value):
                    return ("MTL_LANGUAGE_REVISION", .string(value.rawValue))
                case .mtlLanguageRevisionDialect(let value):
                    return ("MTL_LANGUAGE_REVISION_dialect", .string(value))
                case .mtlLanguageRevisionDialectMacosx(let value):
                    return ("MTL_LANGUAGE_REVISION_dialect_macosx", .string(value))
                case .mtlLanguageRevisionOptgen(let value):
                    return ("MTL_LANGUAGE_REVISION_optgen", .string(value.rawValue))
                case .mtlOptimizationLevel(let value):
                    return ("MTL_OPTIMIZATION_LEVEL", .string(value.rawValue))
                case .mtlPreprocessorDefinitions(let value):
                    return ("MTL_PREPROCESSOR_DEFINITIONS", .array(value))
                case .mtlTargetTriple(let value):
                    return ("MTL_TARGET_TRIPLE", .string(value))
                case .mtlTreatWarningsAsErrors(let value):
                    return ("MTL_TREAT_WARNINGS_AS_ERRORS", .init(booleanLiteral: value))
                case .nasmOtherFlags(let value):
                    return ("NASM_OTHER_FLAGS", .array(value))
                case .nasmOutputFileFormat(let value):
                    return ("NASM_OUTPUT_FILE_FORMAT", .string(value))
                case .nasmPreincludeFile(let value):
                    return ("NASM_PREINCLUDE_FILE", .string(value))
                case .nativeArch(let value):
                    return ("NATIVE_ARCH", .string(value))
                case .nativeArch32Bit(let value):
                    return ("NATIVE_ARCH_32_BIT", .string(value))
                case .nativeArch64Bit(let value):
                    return ("NATIVE_ARCH_64_BIT", .string(value))
                case .nativeArchActual(let value):
                    return ("NATIVE_ARCH_ACTUAL", .string(value))
                case .noCommon(let value):
                    return ("NO_COMMON", .init(booleanLiteral: value))
                case .objectFileDir(let value):
                    return ("OBJECT_FILE_DIR", .string(value))
                case .objroot(let value):
                    return ("OBJROOT", .string(value))
                case .onlyActiveArch(let value):
                    return ("ONLY_ACTIVE_ARCH", .init(booleanLiteral: value))
                case .onDemandResourcesInitialInstallTags(let value):
                    return ("ON_DEMAND_RESOURCES_INITIAL_INSTALL_TAGS", .array(value))
                case .onDemandResourcesPrefetchOrder(let value):
                    return ("ON_DEMAND_RESOURCES_PREFETCH_ORDER", .array(value))
                case .openclc(let value):
                    return ("OPENCLC", .string(value))
                case .openCLArchs(let value):
                    return ("OPENCL_ARCHS", .string(value))
                case .openCLAutoVectorizeEnable(let value):
                    return ("OPENCL_AUTO_VECTORIZE_ENABLE", .init(booleanLiteral: value))
                case .openCLCompilerVersion(let value):
                    return ("OPENCL_COMPILER_VERSION", .string(value.rawValue))
                case .openCLDenormsAreZero(let value):
                    return ("OPENCL_DENORMS_ARE_ZERO", .init(booleanLiteral: value))
                case .openCLDoubleAsSingle(let value):
                    return ("OPENCL_DOUBLE_AS_SINGLE", .init(booleanLiteral: value))
                case .openCLFastRelaxedMath(let value):
                    return ("OPENCL_FAST_RELAXED_MATH", .init(booleanLiteral: value))
                case .openCLMADEnable(let value):
                    return ("OPENCL_MAD_ENABLE", .init(booleanLiteral: value))
                case .openCLOptimizationLevel(let value):
                    return ("OPENCL_OPTIMIZATION_LEVEL", .string(value.rawValue))
                case .openCLOtherBCFlags(let value):
                    return ("OPENCL_OTHER_BC_FLAGS", .array(value))
                case .openCLPreprocessorDefinitions(let value):
                    return ("OPENCL_PREPROCESSOR_DEFINITIONS", .array(value))
                case .optimizationCFlags(let value):
                    return ("OPTIMIZATION_CFLAGS", .array(value))
                case .orderFile(let value):
                    return ("ORDER_FILE", .string(value))
                case .osac(let value):
                    return ("OSAC", .string(value))
                case .osacompileExecuteOnly(let value):
                    return ("OSACOMPILE_EXECUTE_ONLY", .init(booleanLiteral: value))
                case .otherCFlags(let value):
                    return ("OTHER_CFLAGS", .array(value))
                case .otherCodeSignFlags(let value):
                    return ("OTHER_CODE_SIGN_FLAGS", .array(value))
                case .otherCPlusPlusFlags(let value):
                    return ("OTHER_CPLUSPLUSFLAGS", .array(value))
                case .otherDocCFlags(let value):
                    return ("OTHER_DOCC_FLAGS", .array(value))
                case .otherIIGCFlags(let value):
                    return ("OTHER_IIG_CFLAGS", .array(value))
                case .otherIIGFlags(let value):
                    return ("OTHER_IIG_FLAGS", .array(value))
                case .otherLDFlags(let value):
                    return ("OTHER_LDFLAGS", .array(value))
                case .otherLDRFlags(let value):
                    return ("OTHER_LDRFLAGS", .array(value))
                case .otherLIBToolFlags(let value):
                    return ("OTHER_LIBTOOLFLAGS", .array(value))
                case .otherMIGFlags(let value):
                    return ("OTHER_MIGFLAGS", .array(value))
                case .otherOSACompileFlags(let value):
                    return ("OTHER_OSACOMPILEFLAGS", .array(value))
                case .otherOSAFlags(let value):
                    return ("OTHER_OSAFLAGS", .array(value))
                case .otherPrecompCFlags(let value):
                    return ("OTHER_PRECOMP_CFLAGS", .array(value))
                case .otherRCProjectFlags(let value):
                    return ("OTHER_RCPROJECT_FLAGS", .array(value))
                case .otherRealityAssetFlags(let value):
                    return ("OTHER_REALITYASSET_FLAGS", .array(value))
                case .otherRESMergerFlags(let value):
                    return ("OTHER_RESMERGERFLAGS", .array(value))
                case .otherREZFlags(let value):
                    return ("OTHER_REZFLAGS", .array(value))
                case .otherSkyboxFlags(let value):
                    return ("OTHER_SKYBOX_FLAGS", .array(value))
                case .otherSwiftABICheckerFlags(let value):
                    return ("OTHER_SWIFT_ABI_CHECKER_FLAGS", .array(value))
                case .otherSwiftFlags(let value):
                    return ("OTHER_SWIFT_FLAGS", .array(value))
                case .otherSwiftSTDLibToolFlags(let value):
                    return ("OTHER_SWIFT_STDLIB_TOOL_FLAGS", .array(value))
                case .otherTAPIFlags(let value):
                    return ("OTHER_TAPI_FLAGS", .array(value))
                case .otherUSDZFlags(let value):
                    return ("OTHER_USDZ_FLAGS", .array(value))
                case .outputformat(let value):
                    return ("OutputFormat", .string(value.rawValue))
                case .packageType(let value):
                    return ("PACKAGE_TYPE", .string(value))
                case .pascalStrings(let value):
                    return ("PASCAL_STRINGS", .init(booleanLiteral: value))
                case .pathPrefixesExcludedFromHeaderDependencies(let value):
                    return ("PATH_PREFIXES_EXCLUDED_FROM_HEADER_DEPENDENCIES", .array(value))
                case .pbDevelopmentPlistPath(let value):
                    return ("PBDEVELOPMENTPLIST_PATH", .string(value))
                case .pbxcpBitcodeStripMode(let value):
                    return ("PBXCP_BITCODE_STRIP_MODE", .string(value.rawValue))
                case .pbxcpBitcodeStripTool(let value):
                    return ("PBXCP_BITCODE_STRIP_TOOL", .string(value))
                case .pbxcpExcludeSubpaths(let value):
                    return ("PBXCP_EXCLUDE_SUBPATHS", .array(value))
                case .pbxcpIgnoreMissingInputs(let value):
                    return ("PBXCP_IGNORE_MISSING_INPUTS", .init(booleanLiteral: value))
                case .pbxcpIncludeOnlySubpaths(let value):
                    return ("PBXCP_INCLUDE_ONLY_SUBPATHS", .array(value))
                case .pbxcpStripBitcode(let value):
                    return ("PBXCP_STRIP_BITCODE", .init(booleanLiteral: value))
                case .pbxcpStripSubpaths(let value):
                    return ("PBXCP_STRIP_SUBPATHS", .array(value))
                case .pbxcpStripTool(let value):
                    return ("PBXCP_STRIP_TOOL", .string(value))
                case .pbxcpStripUnsignedBinaries(let value):
                    return ("PBXCP_STRIP_UNSIGNED_BINARIES", .init(booleanLiteral: value))
                case .perStyleBuildDirectories(let value):
                    return ("PER_STYLE_BUILD_DIRECTORIES", .init(booleanLiteral: value))
                case .pfeFileCDialects(let value):
                    return ("PFE_FILE_C_DIALECTS", .array(value))
                case .pkginfoPath(let value):
                    return ("PKGINFO_PATH", .string(value))
                case .platformName(let value):
                    return ("PLATFORM_NAME", .string(value))
                case .plistFileOutputFormat(let value):
                    return ("PLIST_FILE_OUTPUT_FORMAT", .string(value.rawValue))
                case .pluginsFolderPath(let value):
                    return ("PLUGINS_FOLDER_PATH", .string(value))
                case .precompilePrefixHeader(let value):
                    return ("PRECOMPILE_PREFIX_HEADER", .init(booleanLiteral: value))
                case .precompsIncludeHeadersFromBuiltProductsDir(let value):
                    return ("PRECOMPS_INCLUDE_HEADERS_FROM_BUILT_PRODUCTS_DIR", .init(booleanLiteral: value))
                case .precompDestinationDir(let value):
                    return ("PRECOMP_DESTINATION_DIR", .string(value))
                case .prefixCFlagBase(let value):
                    return ("PREFIX_CFLAG_BASE", .string(value))
                case .prefixFlags(let value):
                    return ("PREFIX_FLAGS", .array(value))
                case .prefixHeader(let value):
                    return ("PREFIX_HEADER", .string(value))
                case .prefixReference(let value):
                    return ("PREFIX_REFERENCE", .string(value))
                case .prelinkFlags(let value):
                    return ("PRELINK_FLAGS", .array(value))
                case .prelinkLibs(let value):
                    return ("PRELINK_LIBS", .array(value))
                case .preserveDeadCodeInitsAndTerms(let value):
                    return ("PRESERVE_DEAD_CODE_INITS_AND_TERMS", .init(booleanLiteral: value))
                case .privateHeadersFolderPath(let value):
                    return ("PRIVATE_HEADERS_FOLDER_PATH", .string(value))
                case .productBundleIdentifier(let value):
                    return ("PRODUCT_BUNDLE_IDENTIFIER", .string(value))
                case .productModuleName(let value):
                    return ("PRODUCT_MODULE_NAME", .string(value))
                case .productName(let value):
                    return ("PRODUCT_NAME", .string(value))
                case .productType(let value):
                    return ("PRODUCT_TYPE", .string(value))
                case .productTypeFrameworkSearchPaths(let value):
                    return ("PRODUCT_TYPE_FRAMEWORK_SEARCH_PATHS", .array(value))
                case .productTypeLibrarySearchPaths(let value):
                    return ("PRODUCT_TYPE_LIBRARY_SEARCH_PATHS", .array(value))
                case .productTypeSwiftSTDLibToolFlags(let value):
                    return ("PRODUCT_TYPE_SWIFT_STDLIB_TOOL_FLAGS", .array(value))
                case .profilingCode(let value):
                    return ("PROFILING_CODE", .init(booleanLiteral: value))
                case .projectDerivedFileDir(let value):
                    return ("PROJECT_DERIVED_FILE_DIR", .string(value))
                case .projectDir(let value):
                    return ("PROJECT_DIR", .string(value))
                case .projectName(let value):
                    return ("PROJECT_NAME", .string(value))
                case .projectTempDir(let value):
                    return ("PROJECT_TEMP_DIR", .string(value))
                case .projectTempRoot(let value):
                    return ("PROJECT_TEMP_ROOT", .string(value))
                case .provisioningProfile(let value):
                    return ("PROVISIONING_PROFILE", .string(value))
                case .provisioningProfileDestinationPath(let value):
                    return ("PROVISIONING_PROFILE_DESTINATION_PATH", .string(value))
                case .provisioningProfileSpecifier(let value):
                    return ("PROVISIONING_PROFILE_SPECIFIER", .string(value))
                case .publicHeadersFolderPath(let value):
                    return ("PUBLIC_HEADERS_FOLDER_PATH", .string(value))
                case .pwd(let value):
                    return ("PWD", .string(value))
                case .rcProjectCodegenLanguage(let value):
                    return ("RCPROJECT_CODEGEN_LANGUAGE", .string(value.rawValue))
                case .rcProjectCodegenSwiftVersion(let value):
                    return ("RCPROJECT_CODEGEN_SWIFT_VERSION", .string(value))
                case .rcProjectEnableWarnings(let value):
                    return ("RCPROJECT_ENABLE_WARNINGS", .string(value.rawValue))
                case .realityAssetDeploymentTarget(let value):
                    return ("REALITYASSET_DEPLOYMENT_TARGET", .string(value))
                case .realityAssetEnableWarnings(let value):
                    return ("REALITYASSET_ENABLE_WARNINGS", .string(value.rawValue))
                case .recursiveSearchPathsFollowSYMLINKS(let value):
                    return ("RECURSIVE_SEARCH_PATHS_FOLLOW_SYMLINKS", .init(booleanLiteral: value))
                case .reexportedFrameworkInstallNames(let value):
                    return ("REEXPORTED_FRAMEWORK_INSTALL_NAMES", .array(value))
                case .reexportedFrameworkNames(let value):
                    return ("REEXPORTED_FRAMEWORK_NAMES", .array(value))
                case .reexportedLibraryInstallNames(let value):
                    return ("REEXPORTED_LIBRARY_INSTALL_NAMES", .array(value))
                case .reexportedLibraryNames(let value):
                    return ("REEXPORTED_LIBRARY_NAMES", .array(value))
                case .reexportedLibraryPaths(let value):
                    return ("REEXPORTED_LIBRARY_PATHS", .array(value))
                case .removeCVSFromResources(let value):
                    return ("REMOVE_CVS_FROM_RESOURCES", .init(booleanLiteral: value))
                case .removeGitFromResources(let value):
                    return ("REMOVE_GIT_FROM_RESOURCES", .init(booleanLiteral: value))
                case .removeHeadersFromEmbeddedBundles(let value):
                    return ("REMOVE_HEADERS_FROM_EMBEDDED_BUNDLES", .init(booleanLiteral: value))
                case .removeHeaderDirectories(let value):
                    return ("REMOVE_HEADER_DIRECTORIES", .init(booleanLiteral: value))
                case .removeHGFromResources(let value):
                    return ("REMOVE_HG_FROM_RESOURCES", .init(booleanLiteral: value))
                case .removeStaticExecutablesFromEmbeddedBundles(let value):
                    return ("REMOVE_STATIC_EXECUTABLES_FROM_EMBEDDED_BUNDLES", .init(booleanLiteral: value))
                case .removeSVNFromResources(let value):
                    return ("REMOVE_SVN_FROM_RESOURCES", .init(booleanLiteral: value))
                case .resmergerSourcesFork(let value):
                    return ("RESMERGER_SOURCES_FORK", .string(value.rawValue))
                case .resourcesPlatformName(let value):
                    return ("RESOURCES_PLATFORM_NAME", .string(value))
                case .resourcesTargetedDeviceFamily(let value):
                    return ("RESOURCES_TARGETED_DEVICE_FAMILY", .array(value))
                case .resourcesUiFrameworkFamily(let value):
                    return ("RESOURCES_UI_FRAMEWORK_FAMILY", .string(value))
                case .resourceRulesPlistPath(let value):
                    return ("RESOURCE_RULES_PLIST_PATH", .string(value))
                case .retainRawBinaries(let value):
                    return ("RETAIN_RAW_BINARIES", .init(booleanLiteral: value))
                case .rezCollectorDir(let value):
                    return ("REZ_COLLECTOR_DIR", .string(value))
                case .rezExecutable(let value):
                    return ("REZ_EXECUTABLE", .string(value))
                case .rezObjectsDir(let value):
                    return ("REZ_OBJECTS_DIR", .string(value))
                case .rezPrefixFile(let value):
                    return ("REZ_PREFIX_FILE", .string(value))
                case .rezPreprocessorDefinitions(let value):
                    return ("REZ_PREPROCESSOR_DEFINITIONS", .array(value))
                case .rezPreprocessorUndefinitions(let value):
                    return ("REZ_PREPROCESSOR_UNDEFINITIONS", .array(value))
                case .rezResolveAliases(let value):
                    return ("REZ_RESOLVE_ALIASES", .string(value.rawValue))
                case .rezResourceMapReadOnly(let value):
                    return ("REZ_RESOURCE_MAP_READ_ONLY", .init(booleanLiteral: value))
                case .rezScriptType(let value):
                    return ("REZ_SCRIPT_TYPE", .string(value.rawValue))
                case .rezSearchPaths(let value):
                    return ("REZ_SEARCH_PATHS", .array(value))
                case .rezShowDebugOutput(let value):
                    return ("REZ_SHOW_DEBUG_OUTPUT", .init(booleanLiteral: value))
                case .rezSuppressRedeclaredResourceTypeWarnings(let value):
                    return ("REZ_SUPPRESS_REDECLARED_RESOURCE_TYPE_WARNINGS", .init(booleanLiteral: value))
                case .runClangStaticAnalyzer(let value):
                    return ("RUN_CLANG_STATIC_ANALYZER", .init(booleanLiteral: value))
                case .runDocumentationCompiler(let value):
                    return ("RUN_DOCUMENTATION_COMPILER", .init(booleanLiteral: value))
                case .removeFile(let value):
                    return ("RemoveFile", .init(booleanLiteral: value))
                case .requiredarchitectures(let value):
                    return ("RequiredArchitectures", .array(value))
                case .scanAllSourceFilesForIncludes(let value):
                    return ("SCAN_ALL_SOURCE_FILES_FOR_INCLUDES", .init(booleanLiteral: value))
                case .scenekitDeploymentTarget(let value):
                    return ("SCENEKIT_DEPLOYMENT_TARGET", .string(value))
                case .scriptsFolderPath(let value):
                    return ("SCRIPTS_FOLDER_PATH", .string(value))
                case .sdkdbToSymgraphExec(let value):
                    return ("SDKDB_TO_SYMGRAPH_EXEC", .string(value))
                case .sdkroot(let value):
                    return ("SDKROOT", .string(value))
                case .sdkStatCacheEnable(let value):
                    return ("SDK_STAT_CACHE_ENABLE", .init(booleanLiteral: value))
                case .sdkStatCacheVerboseLogging(let value):
                    return ("SDK_STAT_CACHE_VERBOSE_LOGGING", .init(booleanLiteral: value))
                case .sectOrderFlags(let value):
                    return ("SECTORDER_FLAGS", .array(value))
                case .sed(let value):
                    return ("SED", .string(value))
                case .separateStrip(let value):
                    return ("SEPARATE_STRIP", .init(booleanLiteral: value))
                case .separateSymbolEdit(let value):
                    return ("SEPARATE_SYMBOL_EDIT", .init(booleanLiteral: value))
                case .setDirModeOwnerGroup(let value):
                    return ("SET_DIR_MODE_OWNER_GROUP", .init(booleanLiteral: value))
                case .setFileModeOwnerGroup(let value):
                    return ("SET_FILE_MODE_OWNER_GROUP", .init(booleanLiteral: value))
                case .shallowBundle(let value):
                    return ("SHALLOW_BUNDLE", .init(booleanLiteral: value))
                case .sharedDerivedFileDir(let value):
                    return ("SHARED_DERIVED_FILE_DIR", .string(value))
                case .sharedFrameworksFolderPath(let value):
                    return ("SHARED_FRAMEWORKS_FOLDER_PATH", .string(value))
                case .sharedPrecompsDir(let value):
                    return ("SHARED_PRECOMPS_DIR", .string(value))
                case .sharedSupportFolderPath(let value):
                    return ("SHARED_SUPPORT_FOLDER_PATH", .string(value))
                case .shell(let value):
                    return ("SHELL", .string(value))
                case .skipInstall(let value):
                    return ("SKIP_INSTALL", .init(booleanLiteral: value))
                case .skyboxEnableWarnings(let value):
                    return ("SKYBOX_ENABLE_WARNINGS", .string(value.rawValue))
                case .sourceRoot(let value):
                    return ("SOURCE_ROOT", .string(value))
                case .srcRoot(let value):
                    return ("SRCROOT", .string(value))
                case .storyboardCompilerInfoplistContentFile(let value):
                    return ("STORYBOARD_COMPILER_INFOPLIST_CONTENT_FILE", .string(value))
                case .stringsdataDir(let value):
                    return ("STRINGSDATA_DIR", .string(value))
                case .stringsdataRoot(let value):
                    return ("STRINGSDATA_ROOT", .string(value))
                case .stringsFileInfoplistRename(let value):
                    return ("STRINGS_FILE_INFOPLIST_RENAME", .init(booleanLiteral: value))
                case .stringsFileInputEncoding(let value):
                    return ("STRINGS_FILE_INPUT_ENCODING", .string(value))
                case .stringsFileOutputEncoding(let value):
                    return ("STRINGS_FILE_OUTPUT_ENCODING", .string(value))
                case .stringsFileOutputFilename(let value):
                    return ("STRINGS_FILE_OUTPUT_FILENAME", .string(value))
                case .stripflags(let value):
                    return ("STRIPFLAGS", .array(value))
                case .stripBitcodeFromCopiedFiles(let value):
                    return ("STRIP_BITCODE_FROM_COPIED_FILES", .init(booleanLiteral: value))
                case .stripDeterministicMode(let value):
                    return ("STRIP_DETERMINISTIC_MODE", .init(booleanLiteral: value))
                case .stripInstalledProduct(let value):
                    return ("STRIP_INSTALLED_PRODUCT", .init(booleanLiteral: value))
                case .stripPNGText(let value):
                    return ("STRIP_PNG_TEXT", .init(booleanLiteral: value))
                case .stripStyle(let value):
                    return ("STRIP_STYLE", .string(value.rawValue))
                case .stripSwiftSymbols(let value):
                    return ("STRIP_SWIFT_SYMBOLS", .init(booleanLiteral: value))
                case .supportedPlatforms(let value):
                    return ("SUPPORTED_PLATFORMS", .array(value))
                case .supportsTextBasedAPI(let value):
                    return ("SUPPORTS_TEXT_BASED_API", .init(booleanLiteral: value))
                case .swiftActiveCompilationConditions(let value):
                    return ("SWIFT_ACTIVE_COMPILATION_CONDITIONS", .array(value))
                case .swiftAddressSanitizer(let value):
                    return ("SWIFT_ADDRESS_SANITIZER", .init(booleanLiteral: value))
                case .swiftAddressSanitizerAllowErrorRecovery(let value):
                    return ("SWIFT_ADDRESS_SANITIZER_ALLOW_ERROR_RECOVERY", .init(booleanLiteral: value))
                case .swiftBitcodeGenerationMode(let value):
                    return ("SWIFT_BITCODE_GENERATION_MODE", .string(value.rawValue))
                case .swiftClangCXXLanguageStandard(let value):
                    return ("SWIFT_CLANG_CXX_LANGUAGE_STANDARD", .string(value))
                case .swiftCompilationMode(let value):
                    return ("SWIFT_COMPILATION_MODE", .string(value.rawValue))
                case .swiftCrossModuleOptimization(let value):
                    return ("SWIFT_CROSS_MODULE_OPTIMIZATION", .init(booleanLiteral: value))
                case .swiftDeploymentTarget(let value):
                    return ("SWIFT_DEPLOYMENT_TARGET", .string(value))
                case .swiftDisableSafetyChecks(let value):
                    return ("SWIFT_DISABLE_SAFETY_CHECKS", .init(booleanLiteral: value))
                case .swiftEmitConstValueProtocols(let value):
                    return ("SWIFT_EMIT_CONST_VALUE_PROTOCOLS", .array(value))
                case .swiftEmitLOCStrings(let value):
                    return ("SWIFT_EMIT_LOC_STRINGS", .init(booleanLiteral: value))
                case .swiftEmitModuleInterface(let value):
                    return ("SWIFT_EMIT_MODULE_INTERFACE", .init(booleanLiteral: value))
                case .swiftEnableAppExtension(let value):
                    return ("SWIFT_ENABLE_APP_EXTENSION", .init(booleanLiteral: value))
                case .swiftEnableBareSlashRegex(let value):
                    return ("SWIFT_ENABLE_BARE_SLASH_REGEX", .init(booleanLiteral: value))
                case .swiftEnableBatchMode(let value):
                    return ("SWIFT_ENABLE_BATCH_MODE", .init(booleanLiteral: value))
                case .swiftEnableEmitConstValues(let value):
                    return ("SWIFT_ENABLE_EMIT_CONST_VALUES", .init(booleanLiteral: value))
                case .swiftEnableIncrementalCompilation(let value):
                    return ("SWIFT_ENABLE_INCREMENTAL_COMPILATION", .init(booleanLiteral: value))
                case .swiftEnableLibraryEvolution(let value):
                    return ("SWIFT_ENABLE_LIBRARY_EVOLUTION", .init(booleanLiteral: value))
                case .swiftEnableOpaqueTypeErasure(let value):
                    return ("SWIFT_ENABLE_OPAQUE_TYPE_ERASURE", .init(booleanLiteral: value))
                case .swiftEnableTestability(let value):
                    return ("SWIFT_ENABLE_TESTABILITY", .init(booleanLiteral: value))
                case .swiftEnforceExclusiveAccess(let value):
                    return ("SWIFT_ENFORCE_EXCLUSIVE_ACCESS", .string(value.rawValue))
                case .swiftExec(let value):
                    return ("SWIFT_EXEC", .string(value))
                case .swiftIncludePaths(let value):
                    return ("SWIFT_INCLUDE_PATHS", .array(value))
                case .swiftIndexStoreEnable(let value):
                    return ("SWIFT_INDEX_STORE_ENABLE", .init(booleanLiteral: value))
                case .swiftIndexStorePath(let value):
                    return ("SWIFT_INDEX_STORE_PATH", .string(value))
                case .swiftInstallModule(let value):
                    return ("SWIFT_INSTALL_MODULE", .init(booleanLiteral: value))
                case .swiftInstallOBJCHeader(let value):
                    return ("SWIFT_INSTALL_OBJC_HEADER", .init(booleanLiteral: value))
                case .swiftLibrariesOnly(let value):
                    return ("SWIFT_LIBRARIES_ONLY", .init(booleanLiteral: value))
                case .swiftLibraryPath(let value):
                    return ("SWIFT_LIBRARY_PATH", .string(value))
                case .swiftLinkOBJCRuntime(let value):
                    return ("SWIFT_LINK_OBJC_RUNTIME", .init(booleanLiteral: value))
                case .swiftMigrateCode(let value):
                    return ("SWIFT_MIGRATE_CODE", .init(booleanLiteral: value))
                case .swiftModuleAliases(let value):
                    return ("SWIFT_MODULE_ALIASES", .array(value))
                case .swiftModuleName(let value):
                    return ("SWIFT_MODULE_NAME", .string(value))
                case .swiftOBJCBridgingHeader(let value):
                    return ("SWIFT_OBJC_BRIDGING_HEADER", .string(value))
                case .swiftOBJCInterfaceHeaderName(let value):
                    return ("SWIFT_OBJC_INTERFACE_HEADER_NAME", .string(value))
                case .swiftOBJCInteropMode(let value):
                    return ("SWIFT_OBJC_INTEROP_MODE", .string(value.rawValue))
                case .swiftOptimizationLevel(let value):
                    return ("SWIFT_OPTIMIZATION_LEVEL", .string(value.rawValue))
                case .swiftPackageName(let value):
                    return ("SWIFT_PACKAGE_NAME", .string(value))
                case .swiftPlatformTargetPrefix(let value):
                    return ("SWIFT_PLATFORM_TARGET_PREFIX", .string(value))
                case .swiftPrecompileBridgingHeader(let value):
                    return ("SWIFT_PRECOMPILE_BRIDGING_HEADER", .init(booleanLiteral: value))
                case .swiftReflectionMetadataLevel(let value):
                    return ("SWIFT_REFLECTION_METADATA_LEVEL", .string(value.rawValue))
                case .swiftResourceDir(let value):
                    return ("SWIFT_RESOURCE_DIR", .string(value))
                case .swiftResponseFilePath(let value):
                    return ("SWIFT_RESPONSE_FILE_PATH", .string(value))
                case .swiftSerializeDebuggingOptions(let value):
                    return ("SWIFT_SERIALIZE_DEBUGGING_OPTIONS", .init(booleanLiteral: value))
                case .swiftSTDLib(let value):
                    return ("SWIFT_STDLIB", .string(value))
                case .swiftSTDLibToolAction(let value):
                    return ("SWIFT_STDLIB_TOOL_ACTION", .string(value))
                case .swiftSTDLibToolCodeSignIdentity(let value):
                    return ("SWIFT_STDLIB_TOOL_CODE_SIGN_IDENTITY", .string(value))
                case .swiftSTDLibToolDestinationDir(let value):
                    return ("SWIFT_STDLIB_TOOL_DESTINATION_DIR", .string(value))
                case .swiftSTDLibToolExecutableToScan(let value):
                    return ("SWIFT_STDLIB_TOOL_EXECUTABLE_TO_SCAN", .string(value))
                case .swiftSTDLibToolFoldersToScan(let value):
                    return ("SWIFT_STDLIB_TOOL_FOLDERS_TO_SCAN", .array(value))
                case .swiftSTDLibToolKeychain(let value):
                    return ("SWIFT_STDLIB_TOOL_KEYCHAIN", .string(value))
                case .swiftSTDLibToolOtherCodeSignFlags(let value):
                    return ("SWIFT_STDLIB_TOOL_OTHER_CODE_SIGN_FLAGS", .array(value))
                case .swiftSTDLibToolSourceLibraries(let value):
                    return ("SWIFT_STDLIB_TOOL_SOURCE_LIBRARIES", .string(value))
                case .swiftSTDLibToolStripBitcode(let value):
                    return ("SWIFT_STDLIB_TOOL_STRIP_BITCODE", .init(booleanLiteral: value))
                case .swiftSTDLibToolToolchains(let value):
                    return ("SWIFT_STDLIB_TOOL_TOOLCHAINS", .array(value))
                case .swiftSTDLibToolUnsignedDestinationDir(let value):
                    return ("SWIFT_STDLIB_TOOL_UNSIGNED_DESTINATION_DIR", .string(value))
                case .swiftSTDLibToolVerbosity(let value):
                    return ("SWIFT_STDLIB_TOOL_VERBOSITY", .string(value.rawValue))
                case .swiftStrictConcurrency(let value):
                    return ("SWIFT_STRICT_CONCURRENCY", .string(value.rawValue))
                case .swiftSuppressWarnings(let value):
                    return ("SWIFT_SUPPRESS_WARNINGS", .init(booleanLiteral: value))
                case .swiftTargetTriple(let value):
                    return ("SWIFT_TARGET_TRIPLE", .string(value))
                case .swiftTargetTripleVariants(let value):
                    return ("SWIFT_TARGET_TRIPLE_VARIANTS", .array(value))
                case .swiftThreadSanitizer(let value):
                    return ("SWIFT_THREAD_SANITIZER", .init(booleanLiteral: value))
                case .swiftToolchainFlags(let value):
                    return ("SWIFT_TOOLCHAIN_FLAGS", .array(value))
                case .swiftTreatWarningsAsErrors(let value):
                    return ("SWIFT_TREAT_WARNINGS_AS_ERRORS", .init(booleanLiteral: value))
                case .swiftUseParallelWholeModuleOptimization(let value):
                    return ("SWIFT_USE_PARALLEL_WHOLE_MODULE_OPTIMIZATION", .init(booleanLiteral: value))
                case .swiftUseParallelWMOTargets(let value):
                    return ("SWIFT_USE_PARALLEL_WMO_TARGETS", .init(booleanLiteral: value))
                case .swiftValidateClangModulesOncePerBuildSession(let value):
                    return ("SWIFT_VALIDATE_CLANG_MODULES_ONCE_PER_BUILD_SESSION", .init(booleanLiteral: value))
                case .swiftVersion(let value):
                    return ("SWIFT_VERSION", .string(value))
                case .swiftWholeModuleOptimization(let value):
                    return ("SWIFT_WHOLE_MODULE_OPTIMIZATION", .init(booleanLiteral: value))
                case .symbolGraphExtractorExec(let value):
                    return ("SYMBOL_GRAPH_EXTRACTOR_EXEC", .string(value))
                case .symbolGraphExtractorModuleCachePath(let value):
                    return ("SYMBOL_GRAPH_EXTRACTOR_MODULE_CACHE_PATH", .string(value))
                case .symbolGraphExtractorModuleName(let value):
                    return ("SYMBOL_GRAPH_EXTRACTOR_MODULE_NAME", .string(value))
                case .symbolGraphExtractorOutputBase(let value):
                    return ("SYMBOL_GRAPH_EXTRACTOR_OUTPUT_BASE", .string(value))
                case .symbolGraphExtractorOutputDir(let value):
                    return ("SYMBOL_GRAPH_EXTRACTOR_OUTPUT_DIR", .string(value))
                case .symbolGraphExtractorSDK(let value):
                    return ("SYMBOL_GRAPH_EXTRACTOR_SDK", .string(value))
                case .symbolGraphExtractorSearchPaths(let value):
                    return ("SYMBOL_GRAPH_EXTRACTOR_SEARCH_PATHS", .array(value))
                case .symbolGraphExtractorSwiftVersion(let value):
                    return ("SYMBOL_GRAPH_EXTRACTOR_SWIFT_VERSION", .string(value))
                case .symbolGraphExtractorTargetTriple(let value):
                    return ("SYMBOL_GRAPH_EXTRACTOR_TARGET_TRIPLE", .string(value))
                case .symbolHeader(let value):
                    return ("SYMBOL_HEADER", .string(value))
                case .symroot(let value):
                    return ("SYMROOT", .string(value))
                case .systemDEXTInstallPath(let value):
                    return ("SYSTEM_DEXT_INSTALL_PATH", .string(value))
                case .systemFrameworkSearchPaths(let value):
                    return ("SYSTEM_FRAMEWORK_SEARCH_PATHS", .array(value))
                case .systemHeaderSearchPaths(let value):
                    return ("SYSTEM_HEADER_SEARCH_PATHS", .array(value))
                case .systemKEXTInstallPath(let value):
                    return ("SYSTEM_KEXT_INSTALL_PATH", .string(value))
                case .signingCert(let value):
                    return ("SigningCert", .string(value))
                case .tapiApplicationExtensionAPIOnly(let value):
                    return ("TAPI_APPLICATION_EXTENSION_API_ONLY", .init(booleanLiteral: value))
                case .tapiDemangle(let value):
                    return ("TAPI_DEMANGLE", .init(booleanLiteral: value))
                case .tapiDYLIBAllowableClients(let value):
                    return ("TAPI_DYLIB_ALLOWABLE_CLIENTS", .array(value))
                case .tapiDYLIBCompatibilityVersion(let value):
                    return ("TAPI_DYLIB_COMPATIBILITY_VERSION", .string(value))
                case .tapiDYLIBCurrentVersion(let value):
                    return ("TAPI_DYLIB_CURRENT_VERSION", .string(value))
                case .tapiDYLIBInstallName(let value):
                    return ("TAPI_DYLIB_INSTALL_NAME", .string(value))
                case .tapiEmitProfilingSymbols(let value):
                    return ("TAPI_EMIT_PROFILING_SYMBOLS", .init(booleanLiteral: value))
                case .tapiEnableModules(let value):
                    return ("TAPI_ENABLE_MODULES", .init(booleanLiteral: value))
                case .tapiEnableProjectHeaders(let value):
                    return ("TAPI_ENABLE_PROJECT_HEADERS", .init(booleanLiteral: value))
                case .tapiEnableVerificationMode(let value):
                    return ("TAPI_ENABLE_VERIFICATION_MODE", .init(booleanLiteral: value))
                case .tapiExcludePrivateHeaders(let value):
                    return ("TAPI_EXCLUDE_PRIVATE_HEADERS", .array(value))
                case .tapiExcludeProjectHeaders(let value):
                    return ("TAPI_EXCLUDE_PROJECT_HEADERS", .array(value))
                case .tapiExcludePublicHeaders(let value):
                    return ("TAPI_EXCLUDE_PUBLIC_HEADERS", .array(value))
                case .tapiExec(let value):
                    return ("TAPI_EXEC", .string(value))
                case .tapiExtractAPIEnableModules(let value):
                    return ("TAPI_EXTRACT_API_ENABLE_MODULES", .init(booleanLiteral: value))
                case .tapiExtractAPIEnableOBJCARC(let value):
                    return ("TAPI_EXTRACT_API_ENABLE_OBJC_ARC", .init(booleanLiteral: value))
                case .tapiExtractAPIModuleCachePath(let value):
                    return ("TAPI_EXTRACT_API_MODULE_CACHE_PATH", .string(value))
                case .tapiExtractAPIOutputDir(let value):
                    return ("TAPI_EXTRACT_API_OUTPUT_DIR", .string(value))
                case .tapiExtractAPISDKDBOutputPath(let value):
                    return ("TAPI_EXTRACT_API_SDKDB_OUTPUT_PATH", .string(value))
                case .tapiExtractAPISearchPaths(let value):
                    return ("TAPI_EXTRACT_API_SEARCH_PATHS", .array(value))
                case .tapiExtractAPISystemRoot(let value):
                    return ("TAPI_EXTRACT_API_SYSTEM_ROOT", .string(value))
                case .tapiExtractAPITargetTriple(let value):
                    return ("TAPI_EXTRACT_API_TARGET_TRIPLE", .string(value))
                case .tapiExtraPrivateHeaders(let value):
                    return ("TAPI_EXTRA_PRIVATE_HEADERS", .array(value))
                case .tapiExtraProjectHeaders(let value):
                    return ("TAPI_EXTRA_PROJECT_HEADERS", .array(value))
                case .tapiExtraPublicHeaders(let value):
                    return ("TAPI_EXTRA_PUBLIC_HEADERS", .array(value))
                case .tapiFrameworkSearchPaths(let value):
                    return ("TAPI_FRAMEWORK_SEARCH_PATHS", .array(value))
                case .tapiHeaderSearchPaths(let value):
                    return ("TAPI_HEADER_SEARCH_PATHS", .array(value))
                case .tapiInputs(let value):
                    return ("TAPI_INPUTS", .array(value))
                case .tapiLanguage(let value):
                    return ("TAPI_LANGUAGE", .string(value.rawValue))
                case .tapiLanguageStandard(let value):
                    return ("TAPI_LANGUAGE_STANDARD", .string(value.rawValue))
                case .tapiLibrarySearchPaths(let value):
                    return ("TAPI_LIBRARY_SEARCH_PATHS", .array(value))
                case .tapiModulesValidateSystemHeaders(let value):
                    return ("TAPI_MODULES_VALIDATE_SYSTEM_HEADERS", .init(booleanLiteral: value))
                case .tapiModuleCachePath(let value):
                    return ("TAPI_MODULE_CACHE_PATH", .string(value))
                case .tapiPreprocessorDefinitions(let value):
                    return ("TAPI_PREPROCESSOR_DEFINITIONS", .array(value))
                case .tapiProductType(let value):
                    return ("TAPI_PRODUCT_TYPE", .string(value))
                case .tapiReadDSYM(let value):
                    return ("TAPI_READ_DSYM", .init(booleanLiteral: value))
                case .tapiReexportedFrameworkInstallNames(let value):
                    return ("TAPI_REEXPORTED_FRAMEWORK_INSTALL_NAMES", .array(value))
                case .tapiReexportedFrameworkNames(let value):
                    return ("TAPI_REEXPORTED_FRAMEWORK_NAMES", .array(value))
                case .tapiReexportedLibraryInstallNames(let value):
                    return ("TAPI_REEXPORTED_LIBRARY_INSTALL_NAMES", .array(value))
                case .tapiReexportedLibraryNames(let value):
                    return ("TAPI_REEXPORTED_LIBRARY_NAMES", .array(value))
                case .tapiReexportedLibraryPaths(let value):
                    return ("TAPI_REEXPORTED_LIBRARY_PATHS", .array(value))
                case .tapiRunpathSearchPaths(let value):
                    return ("TAPI_RUNPATH_SEARCH_PATHS", .array(value))
                case .tapiSystemFrameworkSearchPaths(let value):
                    return ("TAPI_SYSTEM_FRAMEWORK_SEARCH_PATHS", .array(value))
                case .tapiSystemHeaderSearchPaths(let value):
                    return ("TAPI_SYSTEM_HEADER_SEARCH_PATHS", .array(value))
                case .tapiTargetTripleArchs(let value):
                    return ("TAPI_TARGET_TRIPLE_ARCHS", .array(value))
                case .tapiTargetTripleVariants(let value):
                    return ("TAPI_TARGET_TRIPLE_VARIANTS", .array(value))
                case .tapiUseSRCRoot(let value):
                    return ("TAPI_USE_SRCROOT", .init(booleanLiteral: value))
                case .tapiVerifyAgainst(let value):
                    return ("TAPI_VERIFY_AGAINST", .string(value))
                case .tapiVerifyMode(let value):
                    return ("TAPI_VERIFY_MODE", .string(value.rawValue))
                case .targetBuildDir(let value):
                    return ("TARGET_BUILD_DIR", .string(value))
                case .targetBuildSubpath(let value):
                    return ("TARGET_BUILD_SUBPATH", .string(value))
                case .targetName(let value):
                    return ("TARGET_NAME", .string(value))
                case .targetTempDir(let value):
                    return ("TARGET_TEMP_DIR", .string(value))
                case .tempDir(let value):
                    return ("TEMP_DIR", .string(value))
                case .tempFilesDir(let value):
                    return ("TEMP_FILES_DIR", .string(value))
                case .tempFileDir(let value):
                    return ("TEMP_FILE_DIR", .string(value))
                case .tempRoot(let value):
                    return ("TEMP_ROOT", .string(value))
                case .testHost(let value):
                    return ("TEST_HOST", .string(value))
                case .textureAtlasEnableWarnings(let value):
                    return ("TEXTURE_ATLAS_ENABLE_WARNINGS", .string(value.rawValue))
                case .textureAtlasFormat(let value):
                    return ("TEXTURE_ATLAS_FORMAT", .string(value.rawValue))
                case .textureAtlasMaximumSize(let value):
                    return ("TEXTURE_ATLAS_MAXIMUM_SIZE", .string(value.rawValue))
                case .toolchains(let value):
                    return ("TOOLCHAINS", .array(value))
                case .treatMissingBaselinesAsTestFailures(let value):
                    return ("TREAT_MISSING_BASELINES_AS_TEST_FAILURES", .init(booleanLiteral: value))
                case .unexportedSymbolsFile(let value):
                    return ("UNEXPORTED_SYMBOLS_FILE", .string(value))
                case .uninstalledProductsDir(let value):
                    return ("UNINSTALLED_PRODUCTS_DIR", .string(value))
                case .unlocalizedResourcesFolderPath(let value):
                    return ("UNLOCALIZED_RESOURCES_FOLDER_PATH", .string(value))
                case .unstrippedProduct(let value):
                    return ("UNSTRIPPED_PRODUCT", .init(booleanLiteral: value))
                case .usdzEnableWarnings(let value):
                    return ("USDZ_ENABLE_WARNINGS", .string(value.rawValue))
                case .user(let value):
                    return ("USER", .string(value))
                case .userHeaderSearchPaths(let value):
                    return ("USER_HEADER_SEARCH_PATHS", .array(value))
                case .useDynamicNoPic(let value):
                    return ("USE_DYNAMIC_NO_PIC", .init(booleanLiteral: value))
                case .useGCC3PFESupport(let value):
                    return ("USE_GCC3_PFE_SUPPORT", .init(booleanLiteral: value))
                case .useHeadermap(let value):
                    return ("USE_HEADERMAP", .init(booleanLiteral: value))
                case .useHeaderSYMLINKS(let value):
                    return ("USE_HEADER_SYMLINKS", .init(booleanLiteral: value))
                case .validatePlistFilesWhileCopying(let value):
                    return ("VALIDATE_PLIST_FILES_WHILE_COPYING", .init(booleanLiteral: value))
                case .validateProduct(let value):
                    return ("VALIDATE_PRODUCT", .init(booleanLiteral: value))
                case .validateStringsFilesWhileCopying(let value):
                    return ("VALIDATE_STRINGS_FILES_WHILE_COPYING", .init(booleanLiteral: value))
                case .validArchs(let value):
                    return ("VALID_ARCHS", .array(value))
                case .verbosePBXCP(let value):
                    return ("VERBOSE_PBXCP", .init(booleanLiteral: value))
                case .versioningStub(let value):
                    return ("VERSIONING_STUB", .string(value))
                case .versioningSystem(let value):
                    return ("VERSIONING_SYSTEM", .string(value.rawValue))
                case .versionplistPath(let value):
                    return ("VERSIONPLIST_PATH", .string(value))
                case .versionsFolderPath(let value):
                    return ("VERSIONS_FOLDER_PATH", .string(value))
                case .versionInfoBuilder(let value):
                    return ("VERSION_INFO_BUILDER", .string(value))
                case .versionInfoExportDecl(let value):
                    return ("VERSION_INFO_EXPORT_DECL", .string(value))
                case .versionInfoFile(let value):
                    return ("VERSION_INFO_FILE", .string(value))
                case .versionInfoPrefix(let value):
                    return ("VERSION_INFO_PREFIX", .string(value))
                case .versionInfoString(let value):
                    return ("VERSION_INFO_STRING", .string(value))
                case .versionInfoSuffix(let value):
                    return ("VERSION_INFO_SUFFIX", .string(value))
                case .validateForStore(let value):
                    return ("ValidateForStore", .init(booleanLiteral: value))
                case .warningCFlags(let value):
                    return ("WARNING_CFLAGS", .array(value))
                case .warningLDFlags(let value):
                    return ("WARNING_LDFLAGS", .array(value))
                case .wrapperExtension(let value):
                    return ("WRAPPER_EXTENSION", .string(value))
                case .wrapperName(let value):
                    return ("WRAPPER_NAME", .string(value))
                case .wrapperPrefix(let value):
                    return ("WRAPPER_PREFIX", .string(value))
                case .wrapperSuffix(let value):
                    return ("WRAPPER_SUFFIX", .string(value))
                case .wrapAssetPacksInSeparateDirectories(let value):
                    return ("WRAP_ASSET_PACKS_IN_SEPARATE_DIRECTORIES", .init(booleanLiteral: value))
                case .xcodeDeveloperDirPath(let value):
                    return ("XCODE_DEVELOPER_DIR_PATH", .string(value))
                case .xcstringsForceBuildAllStrings(let value):
                    return ("XCSTRINGS_FORCE_BUILD_ALL_STRINGS", .init(booleanLiteral: value))
                case .xcstringsLanguagesToCompile(let value):
                    return ("XCSTRINGS_LANGUAGES_TO_COMPILE", .array(value))
                case .xibCompilerInfoplistContentFile(let value):
                    return ("XIB_COMPILER_INFOPLIST_CONTENT_FILE", .string(value))
                case .xpcServicesFolderPath(let value):
                    return ("XPCSERVICES_FOLDER_PATH", .string(value))
                case .yacc(let value):
                    return ("YACC", .string(value))
                case .yaccFlags(let value):
                    return ("YACCFLAGS", .array(value))
                case .yaccGeneratedFileStem(let value):
                    return ("YACC_GENERATED_FILE_STEM", .string(value.rawValue))
                case .yaccGenerateDebuggingDirectives(let value):
                    return ("YACC_GENERATE_DEBUGGING_DIRECTIVES", .init(booleanLiteral: value))
                case .yaccInsertLineDirectives(let value):
                    return ("YACC_INSERT_LINE_DIRECTIVES", .init(booleanLiteral: value))
                case .ExcludeDsStoreFiles(let value):
                    return ("_exclude_ds_store_files_", .string(value))
                case .ResolveSrcSymlinks(let value):
                    return ("_resolve_src_symlinks_", .string(value))
                case .arch(let value):
                    return ("arch", .string(value))
                case .buildFileCompilerFlags(let value):
                    return ("build_file_compiler_flags", .array(value))
                case .diagnosticMessageLength(let value):
                    return ("diagnostic_message_length", .string(value))
                case .migGenerateClientSources(let value):
                    return ("mig_generate_client_sources", .init(booleanLiteral: value))
                case .migGenerateServerSources(let value):
                    return ("mig_generate_server_sources", .init(booleanLiteral: value))
                case .printNoteIncludeStack(let value):
                    return ("print_note_include_stack", .init(booleanLiteral: value))
                default:
                    fatalError("Not a valid build setting")
            }
        }
    }

}

public extension SettingsDictionary {

    enum AssetcatalogCompilerOptimizationValue: String {
        case empty = ""
        case time = "time"
        case space = "space"
    }

    enum AssetcatalogCompilerStandaloneIconBehaviorValue: String {
        case Default = "default"
        case all = "all"
        case none = "none"
    }

    enum AssetcatalogCompilerTargetStickersIconRoleValue: String {
        case empty = ""
        case hostApp = "host-app"
        case Extension = "extension"
    }

    enum AssetcatalogLightweightAssetRuntimeModeValue: String {
        case Default = "default"
        case enabled = "enabled"
        case disabled = "disabled"
    }

    enum AssetcatalogOutputFormatValue: String {
        case humanReadableText = "human-readable-text"
    }

    enum BitcodeGenerationModeValue: String {
        case marker = "marker"
        case bitcode = "bitcode"
    }

    enum BundleFormatValue: String {
        case deep = "deep"
        case shallow = "shallow"
    }

    enum ClangAnalyzerGcdPerformanceValue: String {
        case yes = "YES"
        case no = "NO"
    }

    enum ClangAnalyzerLocalizabilityEmptyContextValue: String {
        case yes = "YES"
        case no = "NO"
    }

    enum ClangAnalyzerLocalizabilityNonlocalizedValue: String {
        case yes = "YES"
        case no = "NO"
    }

    enum ClangAnalyzerMigConventionsValue: String {
        case yes = "YES"
        case no = "NO"
    }

    enum ClangAnalyzerNonnullValue: String {
        case yes = "YES"
        case yesNonaggressive = "YES_NONAGGRESSIVE"
        case no = "NO"
    }

    enum ClangAnalyzerNumberObjectConversionValue: String {
        case yesAggressive = "YES_AGGRESSIVE"
        case yes = "YES"
        case no = "NO"
    }

    enum ClangAnalyzerOutputValue: String {
        case Default = "default"
        case plistMultiFile = "plist-multi-file"
    }

    enum ClangAnalyzerUseAfterMoveValue: String {
        case yesAggressive = "YES_AGGRESSIVE"
        case yes = "YES"
        case no = "NO"
    }

    enum ClangArcMigratePrecheckValue: String {
        case donothing = "donothing"
        case precheck = "precheck"
    }

    enum ClangBitcodeGenerationModeValue: String {
        case none = "none"
        case marker = "marker"
        case bitcode = "bitcode"
    }

    enum ClangCxxLanguageStandardValue: String {
        case cPlusPlus98 = "c++98"
        case gnuPlusPlus98 = "gnu++98"
        case cPlusPlus0X = "c++0x"
        case gnuPlusPlus0X = "gnu++0x"
        case cPlusPlus14 = "c++14"
        case gnuPlusPlus14 = "gnu++14"
        case cPlusPlus17 = "c++17"
        case gnuPlusPlus17 = "gnu++17"
        case cPlusPlus20 = "c++20"
        case gnuPlusPlus20 = "gnu++20"
        case cPlusPlus23 = "c++23"
        case gnuPlusPlus23 = "gnu++23"
        case compilerDefault = "compiler-default"
    }

    enum ClangCxxLibraryValue: String {
        case libcPlusPlus = "libc++"
        case compilerDefault = "compiler-default"
    }

    enum ClangDebugInformationLevelValue: String {
        case Default = "default"
        case lineTablesOnly = "line-tables-only"
    }

    enum ClangMigratorPropertyAtomicityValue: String {
        case nonatomic = "nonatomic"
        case atomic = "atomic"
        case nsNonatomicIosonly = "NS_NONATOMIC_IOSONLY"
    }

    enum ClangStaticAnalyzerModeValue: String {
        case shallow = "shallow"
        case deep = "deep"
    }

    enum ClangStaticAnalyzerModeOnAnalyzeActionValue: String {
        case shallow = "shallow"
        case deep = "deep"
    }

    enum ClangTrivialAutoVarInitValue: String {
        case Default = "default"
        case uninitialized = "uninitialized"
        case zero = "zero"
        case pattern = "pattern"
    }

    enum ClangWarnBlockCaptureAutoreleasingValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }

    enum ClangWarnBoolConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum ClangWarnCommaValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }

    enum ClangWarnConstantConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum ClangWarnDeleteNonVirtualDtorValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum ClangWarnDirectObjcIsaUsageValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }

    enum ClangWarnEnumConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum ClangWarnFloatConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum ClangWarnFrameworkIncludePrivateFromPublicValue: String {
        case yes = "YES"
        case no = "NO"
    }

    enum ClangWarnImplicitFallthroughValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }

    enum ClangWarnImplicitSignConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum ClangWarnIntConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum ClangWarnMissingNoescapeValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum ClangWarnNonLiteralNullConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum ClangWarnObjcInterfaceIvarsValue: String {
        case no = "NO"
        case yes = "YES"
        case yesError = "YES_ERROR"
    }

    enum ClangWarnObjcLiteralConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum ClangWarnObjcRepeatedUseOfWeakValue: String {
        case yes = "YES"
        case no = "NO"
        case yesAggressive = "YES_AGGRESSIVE"
    }

    enum ClangWarnObjcRootClassValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }

    enum ClangWarnPragmaPackValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum ClangWarnQuotedIncludeInFrameworkHeaderValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum ClangWarnStrictPrototypesValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }

    enum ClangWarnSuspiciousImplicitConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum ClangWarnUnguardedAvailabilityValue: String {
        case yes = "YES"
        case yesAggressive = "YES_AGGRESSIVE"
        case no = "NO"
    }

    enum ClangWarnUnreachableCodeValue: String {
        case yes = "YES"
        case yesAggressive = "YES_AGGRESSIVE"
        case no = "NO"
    }

    enum ClangWarnVexingParseValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum ClangWarnXnuTypedAllocatorsValue: String {
        case Default = "DEFAULT"
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
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

    enum CodeSignLocalExecutionIdentityValue: String {
        case empty = ""
        case adHoc = "Ad Hoc"
        case localCertificate = "Local Certificate"
    }

    enum CodeSignStyleValue: String {
        case empty = ""
        case automatic = "Automatic"
        case manual = "Manual"
    }

    enum CompilerIndexStoreEnableValue: String {
        case Default = "Default"
        case yes = "YES"
        case no = "NO"
    }

    enum CoremlCodegenLanguageValue: String {
        case swift = "Swift"
        case objectiveC = "Objective-C"
        case automatic = "Automatic"
        case none = "None"
    }

    enum DebugInformationFormatValue: String {
        case dwarf = "dwarf"
        case dwarfWithDsym = "dwarf-with-dsym"
    }

    enum DtraceOutputFileTypeValue: String {
        case header = "Header"
    }

    enum EnableUserSelectedFilesValue: String {
        case empty = ""
        case readonly = "readonly"
        case readwrite = "readwrite"
    }

    enum EntitlementsDestinationValue: String {
        case empty = ""
        case signature = "Signature"
        case entitlements = "__entitlements"
    }

    enum GccCLanguageStandardValue: String {
        case ansi = "ansi"
        case c89 = "c89"
        case gnu89 = "gnu89"
        case c99 = "c99"
        case gnu99 = "gnu99"
        case c11 = "c11"
        case gnu11 = "gnu11"
        case c17 = "c17"
        case gnu17 = "gnu17"
        case compilerDefault = "compiler-default"
    }

    enum GccDebugInformationFormatValue: String {
        case dwarf = "dwarf"
        case dwarfWithDsym = "dwarf-with-dsym"
    }

    enum GccInputFiletypeValue: String {
        case automatic = "automatic"
        case sourcecodeCC = "sourcecode.c.c"
        case sourcecodeCObjc = "sourcecode.c.objc"
        case sourcecodeCppCpp = "sourcecode.cpp.cpp"
        case sourcecodeCppObjcpp = "sourcecode.cpp.objcpp"
    }

    enum GccObjcAbiVersionValue: String {
        case _1 = "1"
        case _2 = "2"
    }

    enum GccOperationValue: String {
        case compile = "compile"
        case generatePreprocessed = "generate-preprocessed"
        case generateAssembler = "generate-assembler"
        case precompile = "precompile"
        case separateSymbols = "separate-symbols"
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

    enum GccWarn64To32BitConversionValue: String {
        case yes = "YES"
        case yesError = "YES_ERROR"
        case no = "NO"
    }

    enum GccWarnAboutReturnTypeValue: String {
        case yes = "YES"
        case no = "NO"
        case yesError = "YES_ERROR"
    }

    enum GccWarnUninitializedAutosValue: String {
        case yes = "YES"
        case yesAggressive = "YES_AGGRESSIVE"
        case no = "NO"
    }

    enum HeadermapFileFormatValue: String {
        case traditional = "traditional"
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

    enum InfoplistKeyNsstickersharinglevelValue: String {
        case empty = ""
        case messages = "Messages"
        case os = "OS"
    }

    enum InfoplistKeyUistatusbarstyleValue: String {
        case Default = "UIStatusBarStyleDefault"
        case lightContent = "UIStatusBarStyleLightContent"
        case darkContent = "UIStatusBarStyleDarkContent"
        case blackTranslucent = "UIStatusBarStyleBlackTranslucent"
        case blackOpaque = "UIStatusBarStyleBlackOpaque"
    }

    enum InfoplistKeyUiuserinterfacestyleValue: String {
        case automatic = "Automatic"
        case light = "Light"
        case dark = "Dark"
    }

    enum InfoplistOutputFormatValue: String {
        case sameAsInput = "same-as-input"
        case XML = "XML"
        case binary = "binary"
    }

    enum IntentsCodegenLanguageValue: String {
        case swift = "Swift"
        case objectiveC = "Objective-C"
        case automatic = "Automatic"
    }

    enum LdBitcodeGenerationModeValue: String {
        case marker = "marker"
        case bitcode = "bitcode"
    }

    enum LdObjcAbiVersionValue: String {
        case _1 = "1"
        case _2 = "2"
    }

    enum LlvmLtoValue: String {
        case yes = "YES"
        case yesThin = "YES_THIN"
        case no = "NO"
    }

    enum MachOTypeValue: String {
        case mhExecute = "mh_execute"
        case mhDylib = "mh_dylib"
        case mhBundle = "mh_bundle"
        case mhObject = "mh_object"
    }

    enum MergedBinaryTypeValue: String {
        case none = "none"
        case automatic = "automatic"
        case manual = "manual"
    }

    enum MtlEnableDebugInfoValue: String {
        case yes = "YES"
        case includeSource = "INCLUDE_SOURCE"
        case no = "NO"
    }

    enum MtlEnableModulesValue: String {
        case yes = "YES"
        case stdlib = "STDLIB"
        case no = "NO"
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
        case metal31 = "Metal31"
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

    enum MtlOptimizationLevelValue: String {
        case Default = "default"
        case s = "s"
    }

    enum OpenclCompilerVersionValue: String {
        case cl12 = "CL1.2"
        case cl11 = "CL1.1"
    }

    enum OpenclOptimizationLevelValue: String {
        case _0 = "0"
        case _1 = "1"
        case _2 = "2"
        case _3 = "3"
        case s = "s"
    }

    enum OutputformatValue: String {
        case openstep = "openstep"
        case none = "none"
        case xml = "xml"
        case binary = "binary"
    }

    enum PbxcpBitcodeStripModeValue: String {
        case none = "none"
        case replaceWithMarker = "replace-with-marker"
        case all = "all"
        case empty = ""
    }

    enum PlistFileOutputFormatValue: String {
        case sameAsInput = "same-as-input"
        case sameasinput = "SameAsInput"
        case XML = "XML"
        case binary = "binary"
        case Binary = "Binary"
    }

    enum RcprojectCodegenLanguageValue: String {
        case swift = "Swift"
        case automatic = "Automatic"
        case none = "None"
    }

    enum RcprojectEnableWarningsValue: String {
        case yes = "Yes"
        case no = "No"
    }

    enum RealityassetEnableWarningsValue: String {
        case yes = "Yes"
        case no = "No"
    }

    enum ResmergerSourcesForkValue: String {
        case data = "data"
        case resource = "resource"
        case auto = "auto"
    }

    enum RezResolveAliasesValue: String {
        case always = "Always"
        case never = "Never"
        case includes = "Includes"
        case outputs = "Outputs"
    }

    enum RezScriptTypeValue: String {
        case roman = "Roman"
        case japanese = "Japanese"
        case korean = "Korean"
        case simpchinese = "SimpChinese"
        case tradchinese = "TradChinese"
    }

    enum SkyboxEnableWarningsValue: String {
        case yes = "Yes"
        case no = "No"
    }

    enum StripStyleValue: String {
        case all = "all"
        case nonGlobal = "non-global"
        case debugging = "debugging"
    }

    enum SwiftBitcodeGenerationModeValue: String {
        case marker = "marker"
        case bitcode = "bitcode"
    }

    enum SwiftCompilationModeValue: String {
        case singlefile = "singlefile"
        case wholemodule = "wholemodule"
    }

    enum SwiftEnforceExclusiveAccessValue: String {
        case on = "on"
        case debugOnly = "debug-only"
        case off = "off"
    }

    enum SwiftObjcInteropModeValue: String {
        case objcxx = "objcxx"
        case objc = "objc"
    }

    enum SwiftOptimizationLevelValue: String {
        case onone = "-Onone"
        case o = "-O"
        case osize = "-Osize"
    }

    enum SwiftReflectionMetadataLevelValue: String {
        case all = "all"
        case withoutNames = "without-names"
        case none = "none"
    }

    enum SwiftStdlibToolVerbosityValue: String {
        case none = "none"
        case verbose = "verbose"
        case extraVerbose = "extra-verbose"
    }

    enum SwiftStrictConcurrencyValue: String {
        case minimal = "minimal"
        case targeted = "targeted"
        case complete = "complete"
    }

    enum TapiLanguageValue: String {
        case objectiveC = "objective-c"
        case objectiveCPlusPlus = "objective-c++"
        case cPlusPlus = "c++"
        case c = "c"
    }

    enum TapiLanguageStandardValue: String {
        case c89 = "c89"
        case gnu89 = "gnu89"
        case c99 = "c99"
        case gnu99 = "gnu99"
        case c11 = "c11"
        case gnu11 = "gnu11"
        case c17 = "c17"
        case gnu17 = "gnu17"
        case cPlusPlus98 = "c++98"
        case gnuPlusPlus98 = "gnu++98"
        case cPlusPlus0X = "c++0x"
        case gnuPlusPlus0X = "gnu++0x"
        case cPlusPlus14 = "c++14"
        case gnuPlusPlus14 = "gnu++14"
        case cPlusPlus17 = "c++17"
        case gnuPlusPlus17 = "gnu++17"
        case cPlusPlus20 = "c++20"
        case gnuPlusPlus20 = "gnu++20"
        case compilerDefault = "compiler-default"
    }

    enum TapiVerifyModeValue: String {
        case errorsonly = "ErrorsOnly"
        case errorsandwarnings = "ErrorsAndWarnings"
        case pedantic = "Pedantic"
    }

    enum TextureAtlasEnableWarningsValue: String {
        case yes = "Yes"
        case no = "No"
    }

    enum TextureAtlasFormatValue: String {
        case rgba8888Png = "RGBA8888_PNG"
        case rgba8888Compressed = "RGBA8888_COMPRESSED"
        case rgba4444Compressed = "RGBA4444_COMPRESSED"
        case rgba5551Compressed = "RGBA5551_COMPRESSED"
        case rgb565Compressed = "RGB565_COMPRESSED"
    }

    enum TextureAtlasMaximumSizeValue: String {
        case _2048x2048 = "2048x2048"
        case _4096x4096 = "4096x4096"
    }

    enum UsdzEnableWarningsValue: String {
        case yes = "Yes"
        case no = "No"
    }

    enum VersioningSystemValue: String {
        case empty = ""
        case appleGeneric = "apple-generic"
        case appleGenericHidden = "apple-generic-hidden"
    }

    enum YaccGeneratedFileStemValue: String {
        case standard = "Standard"
        case inputfilestem = "InputFileStem"
    }

}


extension SettingsDictionary: ExpressibleByArrayLiteral {

    public init(buildSettings: [XcodeBuildSetting]) {
        self.init()
        buildSettings.forEach { self[$0.info.key] = $0.info.value }
    }

    public init(arrayLiteral elements: XcodeBuildSetting...) {
        self.init()
        elements.forEach { self[$0.info.key] = $0.info.value }
    }

    public func extend(with buildSettings: [XcodeBuildSetting]) -> ProjectDescription.SettingsDictionary {
        var newDict = self
        buildSettings.forEach { newDict[$0.info.key] = $0.info.value }
        return newDict
    }

    mutating public func extending(with buildSettings: [XcodeBuildSetting]) {
        buildSettings.forEach { self[$0.info.key] = $0.info.value }
    }

}
