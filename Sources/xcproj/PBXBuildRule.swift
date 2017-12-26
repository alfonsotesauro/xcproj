import Foundation

/// This is the element for the custom build rule
final public class PBXBuildRule: PBXObject, Hashable {
    
    public enum FileType: String, Codable{
        case metalAir = "compiled.air"
        case machO = "compiled.mach-o"
        case machOObject = "compiled.mach-o.objfile"
        case coreMLModel = "file.mlmodel"
        case storyboard = "file.storyboard"
        case xib = "file.xib"
        case assembly = "sourcecode.asm"
        case assemblyASM = "sourcecode.asm.asm"
        case llvm = "sourcecode.asm.llvm"
        case c = "sourcecode.c"
        case clips = "sourcecode.clips"
        case cpp = "sourcecode.cpp"
        case dTrace = "sourcecode.dtrace"
        case dylan = "sourcecode.dylan"
        case fortran = "sourcecode.fortran"
        case glsl = "sourcecode.glsl"
        case java = "sourcecode.java"
        case lex = "sourcecode.lex"
        case metal = "sourcecode.metal"
        case mig = "sourcecode.mig"
        case nasm = "sourcecode.nasm"
        case opencl = "sourcecode.opencl"
        case pascal = "sourcecode.pascal"
        case rez = "sourcecode.rez"
        case swift = "sourcecode.swift"
        case yacc = "sourcecode.yacc"
        case localizationStrings = "text.plist.strings"
        case localizationStringsDictionary = "text.plist.stringsdict"
        case xcodeSpecPlist = "text.plist.xcspec"
        case dae = "text.xml.dae"
        case nib = "wrapper.nib"
        case storyboardPackage = "wrapper.storyboardc"
        case classModel = "wrapper.xcclassmodel"
        case dataModel = "wrapper.xcdatamodel"
        case dataModelVersion = "wrapper.xcdatamodeld"
        case mappingModel = "wrapper.xcmappingmodel"

        case custom = "pattern.proxy"
    }
    
    public enum Compiler: String, Codable {
        case llvm9 = "com.apple.compilers.llvm.clang.1_0"
        case assetCatalog = "com.apple.compilers.assetcatalog"
        case codeSign = "com.apple.build-tools.codesign"
        case compressPng = "com.apple.build-tasks.copy-png-file"
        case copyPlist = "com.apple.build-tasks.copy-plist-file"
        case copySceneKitAssets = "com.apple.build-tasks.copy-scenekit-assets"
        case copyStrings = "com.apple.build-tasks.copy-strings-file"
        case copyTiff = "com.apple.build-tasks.copy-tiff-file"
        case mapc = "com.apple.compilers.model.coredatamapping"
        case coreML = "com.apple.compilers.coreml"
        case momc = "com.apple.compilers.model.coredata"
        case `default` = "com.apple.compilers.gcc"
        case dTrace = "com.apple.compilers.dtrace"
        case generateSpriteKitTexture = "com.apple.build-tasks.generate-texture-atlas.xcplugin"
        case iconUtil = "com.apple.compilers.iconutil"
        case nibPostprocessor = "com.apple.xcode.tools.ibtool.postprocessor"
        case storyboardCompiler = "com.apple.xcode.tools.ibtool.storyboard.compiler"
        case storyboardLinker = "com.apple.xcode.tools.ibtool.storyboard.linker"
        case storyboardPostprocessor = "com.apple.xcode.tools.ibtool.storyboard.postprocessor"
        case xibCompiler = "com.apple.xcode.tools.ibtool.compiler"
        case lex = "com.apple.compilers.lex"
        case lsRegisterUrl = "com.apple.build-tasks.ls-register-url"
        case metal = "com.apple.compilers.metal"
        case metalLinker = "com.apple.compilers.metal-linker"
        case mig = "com.apple.compilers.mig"
        case nasm = "com.apple.compilers.nasm"
        case nmedit = "com.apple.build-tools.nmedit"
        case openCL = "com.apple.compilers.opencl"
        case osaCompile = "com.apple.compilers.osacompile"
        case pbxcp = "com.apple.compilers.pbxcp"
        case processSceneKit = "com.apple.compilers.scntool"
        case rez = "com.apple.compilers.rez"
        case stripSymbol = "com.apple.build-tools.strip"
        case swift = "com.apple.xcode.tools.swift.compiler"
        case textApiTool = "com.apple.build-tools.tapi.stubify"
        case unifdef = "public.build-task.unifdef"
        case yacc = "com.apple.compilers.yacc"
        
        case customScript = "com.apple.compilers.proxy.script"
    }
    
    // MARK: - Attributes
    
    /// Element file pattern
    public var filePatterns: String?
    
    /// Element output files
    public var outputFiles: [String]
    
    /// Element compiler
    public var compiler: Compiler
    
    /// Element file type of a build rule
    public var fileType: FileType
    
    /// Element script to evaluate
    public var script:String
    
    // MARK: - Init
    
    /// Initiazlies the build rule with its attributes.
    ///
    /// - Parameters:
    ///   - reference: element reference.
    ///   - filePatterns: build rule file pattern.
    ///   - fileType: build rule type.
    ///   - outputFiles: build rule outputFiles.
    ///   - compiler: build rule compiler.
    ///   - script: build rule script.
    public init(reference:String,
                filePatterns: String? = nil,
                fileType:FileType,
                outputFiles:[String],
                compiler:Compiler,
                script: String) {
        self.filePatterns = filePatterns
        self.fileType = fileType
        self.outputFiles = outputFiles
        self.compiler = compiler
        self.script = script
        super.init(reference: reference)
    }
    
    // MARK: - Decodable
    
    enum CodingKeys: String, CodingKey {
        case reference
        case filePatterns
        case outputFiles
        case compiler = "compilerSpec"
        case fileType
        case script
    }
    
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.filePatterns = try? container.decode(.filePatterns)
        self.outputFiles = try container.decode(.outputFiles)
        self.compiler = try container.decode(.compiler)
        self.fileType = try container.decode(.fileType)
        self.script = try container.decode(.script)
        try super.init(from: decoder)
    }
    
    // MARK: - Hashable
    
    public static func == (lhs: PBXBuildRule,
                           rhs: PBXBuildRule) -> Bool {
        return lhs.reference == rhs.reference &&
            lhs.filePatterns == rhs.filePatterns &&
            lhs.fileType == rhs.fileType &&
            lhs.outputFiles == rhs.outputFiles &&
            lhs.compiler == rhs.compiler &&
            lhs.script == rhs.script
    }
}

// MARK: - PBXBuildRule Extension (PlistSerializable)

extension PBXBuildRule: PlistSerializable {
    
    func plistKeyAndValue(proj: PBXProj) -> (key: CommentedString, value: PlistValue) {
        var dictionary: [CommentedString: PlistValue] = [:]
        dictionary["isa"] = .string(CommentedString(PBXBuildRule.isa))
        if let filePatterns = filePatterns{
            dictionary["filePatterns"] = .string(CommentedString(filePatterns))
        }
        dictionary["fileType"] = .string(CommentedString(fileType.rawValue))
        dictionary["isEditable"] = .string(CommentedString("1"))
        dictionary["outputFiles"] = .array(outputFiles.map({.string(CommentedString($0))}))
        dictionary["compilerSpec"] = .string(CommentedString(compiler.rawValue))
        dictionary["script"] = .string(CommentedString(script))
        return (key: CommentedString(reference, comment: "PBXBuildRule"), value: .dictionary(dictionary))
    }
    
}


