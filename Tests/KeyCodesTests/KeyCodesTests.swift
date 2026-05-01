import Testing

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

struct TestingKeyCodesTests {
	@Test(arguments: [
		(NSUpArrowFunctionKey, KeyboardHIDUsage.keyboardUpArrow),
		(NSDownArrowFunctionKey, KeyboardHIDUsage.keyboardDownArrow),
		(NSLeftArrowFunctionKey, KeyboardHIDUsage.keyboardLeftArrow),
		(NSRightArrowFunctionKey, KeyboardHIDUsage.keyboardRightArrow),
		(NSHomeFunctionKey, KeyboardHIDUsage.keyboardHome),
		(NSDeleteFunctionKey, KeyboardHIDUsage.keyboardDeleteOrBackspace),
		(NSPageUpFunctionKey, KeyboardHIDUsage.keyboardPageUp),
		(NSPageDownFunctionKey, KeyboardHIDUsage.keyboardPageDown),
		(NSPrintScreenFunctionKey, KeyboardHIDUsage.keyboardPrintScreen),
		(NSUndoFunctionKey, KeyboardHIDUsage.keyboardUndo),
		(NSHelpFunctionKey, KeyboardHIDUsage.keyboardHelp),
		(NSFindFunctionKey, KeyboardHIDUsage.keyboardFind),
		(NSSelectFunctionKey, KeyboardHIDUsage.keyboardSelect),
		(NSMenuFunctionKey, KeyboardHIDUsage.keyboardMenu),
		(NSF1FunctionKey, KeyboardHIDUsage.keyboardF1),
		(NSF2FunctionKey, KeyboardHIDUsage.keyboardF2),
		(NSF3FunctionKey, KeyboardHIDUsage.keyboardF3),
		(NSF4FunctionKey, KeyboardHIDUsage.keyboardF4),
		(NSF5FunctionKey, KeyboardHIDUsage.keyboardF5),
		(NSF6FunctionKey, KeyboardHIDUsage.keyboardF6),
		(NSF7FunctionKey, KeyboardHIDUsage.keyboardF7),
		(NSF8FunctionKey, KeyboardHIDUsage.keyboardF8),
		(NSF9FunctionKey, KeyboardHIDUsage.keyboardF9),
		(NSF10FunctionKey, KeyboardHIDUsage.keyboardF10),
		(NSF11FunctionKey, KeyboardHIDUsage.keyboardF11),
		(NSF12FunctionKey, KeyboardHIDUsage.keyboardF12),
		(NSF13FunctionKey, KeyboardHIDUsage.keyboardF13),
		(NSF14FunctionKey, KeyboardHIDUsage.keyboardF14),
		(NSF15FunctionKey, KeyboardHIDUsage.keyboardF15),
		(NSF16FunctionKey, KeyboardHIDUsage.keyboardF16),
		(NSF17FunctionKey, KeyboardHIDUsage.keyboardF17),
		(NSF18FunctionKey, KeyboardHIDUsage.keyboardF18),
		(NSF19FunctionKey, KeyboardHIDUsage.keyboardF19),
		(NSF20FunctionKey, KeyboardHIDUsage.keyboardF20),
	])
	func functionKeys(input: (Int, KeyboardHIDUsage)) throws {
		let char = UInt16(input.0)
		let string = try #require(String(utf16CodePoint: char))

		#expect(Key(utf16CodePoint: char) == Key(keyCode: input.1, characters: string))
	}
}
