import XCTest
@testable import xcproj

class PBXBuildRuleSpec: XCTestCase {
    var rule: PBXBuildRule!
    
    override func setUp() {
        super.setUp()
        rule = PBXBuildRule(reference: "ref",
                               filePatterns: "*.jpg",
                               fileType: .swift,
                               outputFiles: ["output"],
                               compiler: .customScript,
                               script:"")
    }
    
    func test_init_initializesTheBuildRuleWithTheRightAttributes() {
        XCTAssertEqual(rule.reference, "ref")
        XCTAssertEqual(rule.filePatterns, "*.jpg")
        XCTAssertEqual(rule.fileType, .swift)
        XCTAssertEqual(rule.outputFiles, ["output"])
        XCTAssertEqual(rule.compiler, .customScript)
    }
    
    func test_isa_returnsTheCorrectValue() {
        XCTAssertEqual(PBXBuildRule.isa, "PBXBuildRule")
    }
    
    func test_hashValue_returnsTheReferenceHashValue() {
        XCTAssertEqual(rule.hashValue, rule.reference.hashValue)
    }
    
    func test_init_succeedsForAllFields() {
        let data = try! JSONSerialization.data(withJSONObject: testDictionary(), options: [])
        let decoder = JSONDecoder()

        XCTAssertNoThrow(try decoder.decode(PBXBuildRule.self, from: data))
    }
    
    func test_init_succeedsWhenFilePAtternsIsMissing() {
        var dictionary = testDictionary()
        dictionary.removeValue(forKey: "filePatterns")
        let data = try! JSONSerialization.data(withJSONObject: dictionary, options: [])
        let decoder = JSONDecoder()
        
        XCTAssertNoThrow(try decoder.decode(PBXBuildRule.self, from: data))
    }
    
    func test_init_failsWhenCompilerIsMissing() {
        var dictionary = testDictionary()
        dictionary.removeValue(forKey: "compilerSpec")
        let data = try! JSONSerialization.data(withJSONObject: dictionary, options: [])
        let decoder = JSONDecoder()
        
        XCTAssertThrowsError(try decoder.decode(PBXBuildRule.self, from: data))
    }
    
    func test_init_failsWhenFileTypeIsMissing() {
        var dictionary = testDictionary()
        dictionary.removeValue(forKey: "fileType")
        let data = try! JSONSerialization.data(withJSONObject: dictionary, options: [])
        let decoder = JSONDecoder()
        
        XCTAssertThrowsError(try decoder.decode(PBXBuildRule.self, from: data))
    }
    
    func test_init_failsWhenOutputFilesIsMissing() {
        var dictionary = testDictionary()
        dictionary.removeValue(forKey: "outputFiles")
        let data = try! JSONSerialization.data(withJSONObject: dictionary, options: [])
        let decoder = JSONDecoder()
        
        XCTAssertThrowsError(try decoder.decode(PBXBuildRule.self, from: data))
    }
    
    func test_init_failsWhenCompilerIsInvalid() {
        var dictionary = testDictionary()
        dictionary["compilerSpec"] = "invalid"
        let data = try! JSONSerialization.data(withJSONObject: dictionary, options: [])
        let decoder = JSONDecoder()
        
        XCTAssertThrowsError(try decoder.decode(PBXBuildRule.self, from: data))
    }
    
    
    func test_init_failsWhenFileTypeIsInvalid() {
        var dictionary = testDictionary()
        dictionary["fileType"] = "invalid"
        let data = try! JSONSerialization.data(withJSONObject: dictionary, options: [])
        let decoder = JSONDecoder()
        
        XCTAssertThrowsError(try decoder.decode(PBXBuildRule.self, from: data))
    }

    
    func test_equal_shouldReturnTheCorrectValue() {
        let another = PBXBuildRule(reference: "ref",
                                             filePatterns: "*.jpg",
                                             fileType: .swift,
                                             outputFiles: ["output"],
                                             compiler: .customScript,
                                             script: "")
        XCTAssertEqual(rule, another)
    }
    
    private func testDictionary() -> [String: Any] {
        return [
            "filePatterns": "*.jpg",
            "outputFiles": [],
            "compilerSpec": "com.apple.compilers.llvm.clang.1_0",
            "fileType": "pattern.proxy",
            "script": "",
            "reference": "reference"
        ]
    }

}
