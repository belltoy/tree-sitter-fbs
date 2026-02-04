import XCTest
import SwiftTreeSitter
import TreeSitterFbs

final class TreeSitterFbsTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_fbs())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Fbs grammar")
    }
}
