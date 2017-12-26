import Foundation
import XCTest
import xcproj

class PBXBuildRuleCompilerSpec: XCTestCase {
    func test_llvm9_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.llvm9.rawValue,"com.apple.compilers.llvm.clang.1_0")
    }
    func test_assetCatalog_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.assetCatalog.rawValue,"com.apple.compilers.assetcatalog")
    }
    func test_codeSign_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.codeSign.rawValue,"com.apple.build-tools.codesign")
    }
    func test_compressPng_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.compressPng.rawValue,"com.apple.build-tasks.copy-png-file")
    }
    func test_copyPlist_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.copyPlist.rawValue,"com.apple.build-tasks.copy-plist-file")
    }
    func test_copySceneKitAssets_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.copySceneKitAssets.rawValue,"com.apple.build-tasks.copy-scenekit-assets")
    }
    func test_copyStrings_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.copyStrings.rawValue,"com.apple.build-tasks.copy-strings-file")
    }
    func test_copyTiff_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.copyTiff.rawValue,"com.apple.build-tasks.copy-tiff-file")
    }
    func test_mapc_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.mapc.rawValue,"com.apple.compilers.model.coredatamapping")
    }
    func test_coreML_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.coreML.rawValue,"com.apple.compilers.coreml")
    }
    func test_momc_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.momc.rawValue,"com.apple.compilers.model.coredata")
    }
    func test_default_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.default.rawValue,"com.apple.compilers.gcc")
    }
    func test_dTrace_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.dTrace.rawValue,"com.apple.compilers.dtrace")
    }
    func test_generateSpriteKitTexture_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.generateSpriteKitTexture.rawValue,"com.apple.build-tasks.generate-texture-atlas.xcplugin")
    }
    func test_iconUtil_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.iconUtil.rawValue,"com.apple.compilers.iconutil")
    }
    func test_nibPostprocessor_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.nibPostprocessor.rawValue,"com.apple.xcode.tools.ibtool.postprocessor")
    }
    func test_storyboardCompiler_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.storyboardCompiler.rawValue,"com.apple.xcode.tools.ibtool.storyboard.compiler")
    }
    func test_storyboardLinker_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.storyboardLinker.rawValue,"com.apple.xcode.tools.ibtool.storyboard.linker")
    }
    func test_storyboardPostprocessor_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.storyboardPostprocessor.rawValue,"com.apple.xcode.tools.ibtool.storyboard.postprocessor")
    }
    func test_xibCompiler_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.xibCompiler.rawValue,"com.apple.xcode.tools.ibtool.compiler")
    }
    func test_lex_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.lex.rawValue,"com.apple.compilers.lex")
    }
    func test_lsRegisterUrl_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.lsRegisterUrl.rawValue,"com.apple.build-tasks.ls-register-url")
    }
    func test_metal_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.metal.rawValue,"com.apple.compilers.metal")
    }
    func test_metalLinker_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.metalLinker.rawValue,"com.apple.compilers.metal-linker")
    }
    func test_mig_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.mig.rawValue,"com.apple.compilers.mig")
    }
    func test_nasm_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.nasm.rawValue,"com.apple.compilers.nasm")
    }
    func test_nmedit_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.nmedit.rawValue,"com.apple.build-tools.nmedit")
    }
    func test_openCL_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.openCL.rawValue,"com.apple.compilers.opencl")
    }
    func test_osaCompile_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.osaCompile.rawValue,"com.apple.compilers.osacompile")
    }
    func test_pbxcp_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.pbxcp.rawValue,"com.apple.compilers.pbxcp")
    }
    func test_processSceneKit_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.processSceneKit.rawValue,"com.apple.compilers.scntool")
    }
    func test_rez_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.rez.rawValue,"com.apple.compilers.rez")
    }
    func test_stripSymbol_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.stripSymbol.rawValue,"com.apple.build-tools.strip")
    }
    func test_swift_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.swift.rawValue,"com.apple.xcode.tools.swift.compiler")
    }
    func test_textApiTool_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.textApiTool.rawValue,"com.apple.build-tools.tapi.stubify")
    }
    func test_unifdef_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.unifdef.rawValue,"public.build-task.unifdef")
    }
    func test_yacc_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.yacc.rawValue,"com.apple.compilers.yacc")
    }
    
    func test_customScript_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.Compiler.customScript.rawValue,"com.apple.compilers.proxy.script")
    }
}
