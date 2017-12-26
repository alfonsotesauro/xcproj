import Foundation
import XCTest
import xcproj

class PBXBuildRuleFileTypeSpec: XCTestCase {
    func test_metalAir_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.metalAir.rawValue,"compiled.air")
    }
    func test_machO_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.machO.rawValue,"compiled.mach-o")
    }
    func test_machOObject_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.machOObject.rawValue,"compiled.mach-o.objfile")
    }
    func test_coreMLModel_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.coreMLModel.rawValue,"file.mlmodel")
    }
    func test_storyboard_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.storyboard.rawValue,"file.storyboard")
    }
    func test_xib_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.xib.rawValue,"file.xib")
    }
    func test_assembly_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.assembly.rawValue,"sourcecode.asm")
    }
    func test_assemblyASM_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.assemblyASM.rawValue,"sourcecode.asm.asm")
    }
    func test_llvm_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.llvm.rawValue,"sourcecode.asm.llvm")
    }
    func test_c_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.c.rawValue,"sourcecode.c")
    }
    func test_clips_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.clips.rawValue,"sourcecode.clips")
    }
    func test_cpp_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.cpp.rawValue,"sourcecode.cpp")
    }
    func test_dTrace_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.dTrace.rawValue,"sourcecode.dtrace")
    }
    func test_dylan_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.dylan.rawValue,"sourcecode.dylan")
    }
    func test_fortran_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.fortran.rawValue,"sourcecode.fortran")
    }
    func test_glsl_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.glsl.rawValue,"sourcecode.glsl")
    }
    func test_java_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.java.rawValue,"sourcecode.java")
    }
    func test_lex_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.lex.rawValue,"sourcecode.lex")
    }
    func test_metal_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.metal.rawValue,"sourcecode.metal")
    }
    func test_mig_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.mig.rawValue,"sourcecode.mig")
    }
    func test_nasm_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.nasm.rawValue,"sourcecode.nasm")
    }
    func test_opencl_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.opencl.rawValue,"sourcecode.opencl")
    }
    func test_pascal_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.pascal.rawValue,"sourcecode.pascal")
    }
    func test_rez_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.rez.rawValue,"sourcecode.rez")
    }
    func test_swift_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.swift.rawValue,"sourcecode.swift")
    }
    func test_yacc_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.yacc.rawValue,"sourcecode.yacc")
    }
    func test_localizationStrings_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.localizationStrings.rawValue,"text.plist.strings")
    }
    func test_localizationStringsDictionary_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.localizationStringsDictionary.rawValue,"text.plist.stringsdict")
    }
    func test_xcodeSpecPlist_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.xcodeSpecPlist.rawValue,"text.plist.xcspec")
    }
    func test_dae_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.dae.rawValue,"text.xml.dae")
    }
    func test_nib_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.nib.rawValue,"wrapper.nib")
    }
    func test_storyboardPackage_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.storyboardPackage.rawValue,"wrapper.storyboardc")
    }
    func test_classModel_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.classModel.rawValue,"wrapper.xcclassmodel")
    }
    func test_dataModel_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.dataModel.rawValue,"wrapper.xcdatamodel")
    }
    func test_dataModelVersion_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.dataModelVersion.rawValue,"wrapper.xcdatamodeld")
    }
    func test_mappingModel_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.mappingModel.rawValue,"wrapper.xcmappingmodel")
    }
    
    func test_custom_hasCorrectRawValue(){
        XCTAssertEqual(PBXBuildRule.FileType.custom.rawValue,"pattern.proxy")
    }
    
    
}
