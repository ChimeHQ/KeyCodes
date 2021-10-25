import Foundation
#if os(macOS)
import Carbon.HIToolbox
import AppKit
#endif

public enum KeyboardHIDUsage {
    case keyboardA
    case keyboardB
    case keyboardC
    case keyboardD
    case keyboardE
    case keyboardF
    case keyboardG
    case keyboardH
    case keyboardI
    case keyboardJ
    case keyboardK
    case keyboardL
    case keyboardM
    case keyboardN
    case keyboardO
    case keyboardP
    case keyboardQ
    case keyboardR
    case keyboardS
    case keyboardT
    case keyboardU
    case keyboardV
    case keyboardW
    case keyboardX
    case keyboardY
    case keyboardZ
    case keyboard0
    case keyboard1
    case keyboard2
    case keyboard3
    case keyboard4
    case keyboard5
    case keyboard6
    case keyboard7
    case keyboard8
    case keyboard9
    case keyboardBackslash
    case keyboardCloseBracket
    case keyboardComma
    case keyboardEqualSign
    case keyboardHyphen
    case keyboardNonUSBackslash
    case keyboardNonUSPound
    case keyboardOpenBracket
    case keyboardPeriod
    case keyboardQuote
    case keyboardSemicolon
    case keyboardSeparator
    case keyboardSlash
    case keyboardSpacebar
    case keyboardCapsLock
    case keyboardLeftAlt
    case keyboardLeftControl
    case keyboardLeftShift
    case keyboardLockingCapsLock
    case keyboardLockingNumLock
    case keyboardLockingScrollLock
    case keyboardRightAlt
    case keyboardRightControl
    case keyboardRightShift
    case keyboardScrollLock
    case keyboardLeftArrow
    case keyboardRightArrow
    case keyboardUpArrow
    case keyboardDownArrow
    case keyboardPageUp
    case keyboardPageDown
    case keyboardHome
    case keyboardEnd
    case keyboardDeleteForward
    case keyboardDeleteOrBackspace
    case keyboardEscape
    case keyboardInsert
    case keyboardReturn
    case keyboardTab
    case keyboardF1
    case keyboardF2
    case keyboardF3
    case keyboardF4
    case keyboardF5
    case keyboardF6
    case keyboardF7
    case keyboardF8
    case keyboardF9
    case keyboardF10
    case keyboardF11
    case keyboardF12
    case keyboardF13
    case keyboardF14
    case keyboardF15
    case keyboardF16
    case keyboardF17
    case keyboardF18
    case keyboardF19
    case keyboardF20
    case keyboardF21
    case keyboardF22
    case keyboardF23
    case keyboardF24
    case keypad0
    case keypad1
    case keypad2
    case keypad3
    case keypad4
    case keypad5
    case keypad6
    case keypad7
    case keypad8
    case keypad9
    case keypadAsterisk
    case keypadComma
    case keypadEnter
    case keypadEqualSign
    case keypadEqualSignAS400
    case keypadHyphen
    case keypadNumLock
    case keypadPeriod
    case keypadPlus
    case keypadSlash
    case keyboardPause
    case keyboardStop
    case keyboardMute
    case keyboardVolumeUp
    case keyboardVolumeDown
    case keyboardLANG1
    case keyboardLANG2
    case keyboardLANG3
    case keyboardLANG4
    case keyboardLANG5
    case keyboardLANG6
    case keyboardLANG7
    case keyboardLANG8
    case keyboardLANG9
    case keyboardInternational1
    case keyboardInternational2
    case keyboardInternational3
    case keyboardInternational4
    case keyboardInternational5
    case keyboardInternational6
    case keyboardInternational7
    case keyboardInternational8
    case keyboardInternational9
    case keyboardErrorRollOver
    case keyboardErrorUndefined
    case keyboardAgain
    case keyboardAlternateErase
    case keyboardApplication
    case keyboardCancel
    case keyboardClear
    case keyboardClearOrAgain
    case keyboardCopy
    case keyboardCrSelOrProps
    case keyboardCut
    case keyboardExSel
    case keyboardExecute
    case keyboardFind
    case keyboardGraveAccentAndTilde
    case keyboardHelp
    case keyboardLeftGUI
    case keyboardMenu
    case keyboardOper
    case keyboardOut
    case keyboardPOSTFail
    case keyboardPaste
    case keyboardPower
    case keyboardPrintScreen
    case keyboardPrior
    case keyboardReturnOrEnter
    case keyboardRightGUI
    case keyboardSelect
    case keyboardSysReqOrAttention
    case keyboardUndo
    case keyboard_Reserved
}

extension KeyboardHIDUsage: Hashable {
}

public struct KeyModifierFlags: OptionSet {
    public var rawValue: UInt

    public init(rawValue: UInt) {
        self.rawValue = rawValue
    }

    static var alphaShift = KeyModifierFlags(rawValue: 1 << 16)
    static var shift = KeyModifierFlags(rawValue: 1 << 17)
    static var control = KeyModifierFlags(rawValue: 1 << 18)
    static var alternate = KeyModifierFlags(rawValue: 1 << 19)
    static var command = KeyModifierFlags(rawValue: 1 << 20)
    static var numericPad = KeyModifierFlags(rawValue: 1 << 21)
}

extension KeyModifierFlags: Hashable {
}

public struct Key {
    public var keyCode: KeyboardHIDUsage
    public var modifierFlags: KeyModifierFlags
    public var characters: String
    public var charactersIgnoringModifiers: String

    public init(keyCode: KeyboardHIDUsage, characters: String, charactersIgnoringModifiers: String, modifierFlags: KeyModifierFlags = []) {
        self.keyCode = keyCode
        self.characters = characters
        self.charactersIgnoringModifiers = charactersIgnoringModifiers
        self.modifierFlags = modifierFlags
    }

    public init(keyCode: KeyboardHIDUsage, characters: String, modifierFlags: KeyModifierFlags = []) {
        self.keyCode = keyCode
        self.characters = characters
        self.charactersIgnoringModifiers = characters
        self.modifierFlags = modifierFlags
    }

    public init?(_ character: Character) {
        self.characters = String(character)
        self.charactersIgnoringModifiers = String(character)
        self.modifierFlags = []

        switch character {
        case "a":
            self.keyCode = .keyboardA
        case "A":
            self.keyCode = .keyboardA
            self.modifierFlags = [.shift]
        case "h":
            self.keyCode = .keyboardH
        case "i":
            self.keyCode = .keyboardI
        case "j":
            self.keyCode = .keyboardJ
        case "k":
            self.keyCode = .keyboardK
        case "l":
            self.keyCode = .keyboardL
        case "0":
            self.keyCode = .keyboard0
        case "$":
            self.keyCode = .keyboard4
            self.modifierFlags = [.shift]
        default:
            return nil
        }
    }
}

extension Key: Hashable {
}
