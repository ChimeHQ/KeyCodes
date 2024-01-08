import XCTest
@testable import KeyCodes

final class KeyCodesTests: XCTestCase {
    func testKeysFromCharacters() throws {
        XCTAssertEqual(Key("a"), Key(keyCode: .keyboardA, characters: "a"))
        XCTAssertEqual(Key("A"), Key(keyCode: .keyboardA, characters: "A", modifierFlags: [.shift]))
        XCTAssertEqual(Key("b"), Key(keyCode: .keyboardB, characters: "b"))
        XCTAssertEqual(Key("B"), Key(keyCode: .keyboardB, characters: "B", modifierFlags: [.shift]))
        XCTAssertEqual(Key("c"), Key(keyCode: .keyboardC, characters: "c"))
        XCTAssertEqual(Key("C"), Key(keyCode: .keyboardC, characters: "C", modifierFlags: [.shift]))
        XCTAssertEqual(Key("d"), Key(keyCode: .keyboardD, characters: "d"))
        XCTAssertEqual(Key("D"), Key(keyCode: .keyboardD, characters: "D", modifierFlags: [.shift]))
    }

    func testNumericKeysFromCharacters() throws {
        XCTAssertEqual(Key("1"), Key(keyCode: .keyboard1, characters: "1"))
        XCTAssertEqual(Key("!"), Key(keyCode: .keyboard1, characters: "!", modifierFlags: [.shift]))
        XCTAssertEqual(Key("2"), Key(keyCode: .keyboard2, characters: "2"))
        XCTAssertEqual(Key("@"), Key(keyCode: .keyboard2, characters: "@", modifierFlags: [.shift]))
        XCTAssertEqual(Key("3"), Key(keyCode: .keyboard3, characters: "3"))
        XCTAssertEqual(Key("#"), Key(keyCode: .keyboard3, characters: "#", modifierFlags: [.shift]))
        XCTAssertEqual(Key("4"), Key(keyCode: .keyboard4, characters: "4"))
        XCTAssertEqual(Key("$"), Key(keyCode: .keyboard4, characters: "$", modifierFlags: [.shift]))
        XCTAssertEqual(Key("5"), Key(keyCode: .keyboard5, characters: "5"))
        XCTAssertEqual(Key("%"), Key(keyCode: .keyboard5, characters: "%", modifierFlags: [.shift]))
        XCTAssertEqual(Key("6"), Key(keyCode: .keyboard6, characters: "6"))
        XCTAssertEqual(Key("^"), Key(keyCode: .keyboard6, characters: "^", modifierFlags: [.shift]))
        XCTAssertEqual(Key("7"), Key(keyCode: .keyboard7, characters: "7"))
        XCTAssertEqual(Key("&"), Key(keyCode: .keyboard7, characters: "&", modifierFlags: [.shift]))
        XCTAssertEqual(Key("8"), Key(keyCode: .keyboard8, characters: "8"))
        XCTAssertEqual(Key("*"), Key(keyCode: .keyboard8, characters: "*", modifierFlags: [.shift]))
        XCTAssertEqual(Key("9"), Key(keyCode: .keyboard9, characters: "9"))
        XCTAssertEqual(Key("("), Key(keyCode: .keyboard9, characters: "(", modifierFlags: [.shift]))
        XCTAssertEqual(Key("0"), Key(keyCode: .keyboard0, characters: "0"))
        XCTAssertEqual(Key(")"), Key(keyCode: .keyboard0, characters: ")", modifierFlags: [.shift]))
    }

    func testSymbolKeysFromCharacters() throws {
        XCTAssertEqual(Key("`"), Key(keyCode: .keyboardGraveAccentAndTilde, characters: "`"))
        XCTAssertEqual(Key("~"), Key(keyCode: .keyboardGraveAccentAndTilde, characters: "~", modifierFlags: [.shift]))
        XCTAssertEqual(Key("-"), Key(keyCode: .keyboardHyphen, characters: "-"))
        XCTAssertEqual(Key("_"), Key(keyCode: .keyboardHyphen, characters: "_", modifierFlags: [.shift]))
        XCTAssertEqual(Key("="), Key(keyCode: .keyboardEqualSign, characters: "="))
        XCTAssertEqual(Key("+"), Key(keyCode: .keyboardEqualSign, characters: "+", modifierFlags: [.shift]))
        XCTAssertEqual(Key("["), Key(keyCode: .keyboardOpenBracket, characters: "["))
        XCTAssertEqual(Key("{"), Key(keyCode: .keyboardOpenBracket, characters: "{", modifierFlags: [.shift]))
        XCTAssertEqual(Key("]"), Key(keyCode: .keyboardCloseBracket, characters: "]"))
        XCTAssertEqual(Key("}"), Key(keyCode: .keyboardCloseBracket, characters: "}", modifierFlags: [.shift]))
        XCTAssertEqual(Key("\\"), Key(keyCode: .keyboardBackslash, characters: "\\"))
        XCTAssertEqual(Key("|"), Key(keyCode: .keyboardBackslash, characters: "|", modifierFlags: [.shift]))
        XCTAssertEqual(Key(";"), Key(keyCode: .keyboardSemicolon, characters: ";"))
        XCTAssertEqual(Key(":"), Key(keyCode: .keyboardSemicolon, characters: ":", modifierFlags: [.shift]))
        XCTAssertEqual(Key("'"), Key(keyCode: .keyboardQuote, characters: "'"))
        XCTAssertEqual(Key("\""), Key(keyCode: .keyboardQuote, characters: "\"", modifierFlags: [.shift]))
        XCTAssertEqual(Key(","), Key(keyCode: .keyboardComma, characters: ","))
        XCTAssertEqual(Key("<"), Key(keyCode: .keyboardComma, characters: "<", modifierFlags: [.shift]))
        XCTAssertEqual(Key("."), Key(keyCode: .keyboardPeriod, characters: "."))
        XCTAssertEqual(Key(">"), Key(keyCode: .keyboardPeriod, characters: ">", modifierFlags: [.shift]))
        XCTAssertEqual(Key("/"), Key(keyCode: .keyboardSlash, characters: "/"))
        XCTAssertEqual(Key("?"), Key(keyCode: .keyboardSlash, characters: "?", modifierFlags: [.shift]))
    }
}
