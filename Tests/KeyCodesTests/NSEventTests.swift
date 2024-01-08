import XCTest
import KeyCodes
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
}
