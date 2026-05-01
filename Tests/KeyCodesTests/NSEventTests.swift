import Testing
import XCTest
import KeyCodes

#if os(macOS)
import Carbon.HIToolbox

final class NSEventTests: XCTestCase {
	func testDeviceIndependentOnly() throws {
		let eventRef = try XCTUnwrap(CGEvent(keyboardEventSource: nil, virtualKey: CGKeyCode(kVK_ANSI_0), keyDown: true))
		eventRef.flags = [.maskCommand, .maskNumericPad]

		let event = try XCTUnwrap(NSEvent(cgEvent: eventRef))

		XCTAssertEqual(event.modifierFlags, [.command, .numericPad])
		XCTAssertEqual(event.modifierFlags.deviceIndependentOnly, [.command, .numericPad])

		XCTAssertEqual(event.keyModifierFlags, [.command, .numericPad])
	}

	func testDeviceIndependentOnlyFromMouseDown() throws {
		let eventRef = try XCTUnwrap(CGEvent(mouseEventSource: nil, mouseType: .leftMouseDown, mouseCursorPosition: CGPoint(), mouseButton: .left))
		eventRef.flags = [.maskCommand]

		let event = try XCTUnwrap(NSEvent(cgEvent: eventRef))

		XCTAssertEqual(event.modifierFlags, [.command])
		XCTAssertEqual(event.modifierFlags.deviceIndependentOnly, [.command])

		XCTAssertEqual(event.keyModifierFlags, [.command])
	}
}

extension NSEvent {
	static func keyEvent(withUTF6CodePointKeyCode: Int) -> NSEvent? {
		let char = UInt16(withUTF6CodePointKeyCode)
		guard let string = String(utf16CodePoint: char) else {
			return nil
		}

		return NSEvent.keyEvent(
			with: .keyDown,
			location: .zero,
			modifierFlags: [],
			timestamp: 0,
			windowNumber: 0,
			context: nil,
			characters: string,
			charactersIgnoringModifiers: string,
			isARepeat: false,
			keyCode: char
		)
	}
}

struct TestingNSEventTests {
	@Test func functionKeyMapping() throws {
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSUpArrowFunctionKey)?.keyboardHIDUsage == .keyboardUpArrow)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSDownArrowFunctionKey)?.keyboardHIDUsage == .keyboardDownArrow)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSLeftArrowFunctionKey)?.keyboardHIDUsage == .keyboardLeftArrow)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSRightArrowFunctionKey)?.keyboardHIDUsage == .keyboardRightArrow)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSHomeFunctionKey)?.keyboardHIDUsage == .keyboardHome)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSDeleteFunctionKey)?.keyboardHIDUsage == .keyboardDeleteOrBackspace)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSPageUpFunctionKey)?.keyboardHIDUsage == .keyboardPageUp)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSPageDownFunctionKey)?.keyboardHIDUsage == .keyboardPageDown)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSPrintScreenFunctionKey)?.keyboardHIDUsage == .keyboardPrintScreen)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSUndoFunctionKey)?.keyboardHIDUsage == .keyboardUndo)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSHelpFunctionKey)?.keyboardHIDUsage == .keyboardHelp)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSFindFunctionKey)?.keyboardHIDUsage == .keyboardFind)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSSelectFunctionKey)?.keyboardHIDUsage == .keyboardSelect)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSMenuFunctionKey)?.keyboardHIDUsage == .keyboardMenu)

		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF1FunctionKey)?.keyboardHIDUsage == .keyboardF1)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF2FunctionKey)?.keyboardHIDUsage == .keyboardF2)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF3FunctionKey)?.keyboardHIDUsage == .keyboardF3)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF4FunctionKey)?.keyboardHIDUsage == .keyboardF4)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF5FunctionKey)?.keyboardHIDUsage == .keyboardF5)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF6FunctionKey)?.keyboardHIDUsage == .keyboardF6)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF7FunctionKey)?.keyboardHIDUsage == .keyboardF7)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF8FunctionKey)?.keyboardHIDUsage == .keyboardF8)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF9FunctionKey)?.keyboardHIDUsage == .keyboardF9)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF10FunctionKey)?.keyboardHIDUsage == .keyboardF10)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF11FunctionKey)?.keyboardHIDUsage == .keyboardF11)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF12FunctionKey)?.keyboardHIDUsage == .keyboardF12)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF13FunctionKey)?.keyboardHIDUsage == .keyboardF13)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF14FunctionKey)?.keyboardHIDUsage == .keyboardF14)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF15FunctionKey)?.keyboardHIDUsage == .keyboardF15)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF16FunctionKey)?.keyboardHIDUsage == .keyboardF16)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF17FunctionKey)?.keyboardHIDUsage == .keyboardF17)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF18FunctionKey)?.keyboardHIDUsage == .keyboardF18)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF19FunctionKey)?.keyboardHIDUsage == .keyboardF19)
		#expect(NSEvent.keyEvent(withUTF6CodePointKeyCode: NSF20FunctionKey)?.keyboardHIDUsage == .keyboardF20)
	}
}

#endif
