import XCTest
@testable import KeyCodes

final class KeyCodesTests: XCTestCase {
    func testKeysFromCharacters() throws {
        XCTAssertEqual(Key("a"), Key(keyCode: .keyboardA, characters: "a"))
        XCTAssertEqual(Key("A"), Key(keyCode: .keyboardA, characters: "A", modifierFlags: [.shift]))
    }
}
