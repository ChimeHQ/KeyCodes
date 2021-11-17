#if os(macOS)
import Carbon.HIToolbox
import AppKit

extension NSEvent {
    var keyModifierFlags: KeyModifierFlags? {
        guard type == .keyDown || type == .keyUp else {
            return nil
        }

        var flags = KeyModifierFlags(rawValue: 0)

        let deviceIndependentFlags = modifierFlags.intersection([.deviceIndependentFlagsMask])

        if deviceIndependentFlags.contains(.control) {
            flags.insert(.control)
        }

        if deviceIndependentFlags.contains(.shift) {
            flags.insert(.shift)
        }

        if deviceIndependentFlags.contains(.command) {
            flags.insert(.command)
        }

        if deviceIndependentFlags.contains(.option) {
            flags.insert(.alternate)
        }

        if deviceIndependentFlags.contains(.capsLock) {
            flags.insert(.alphaShift)
        }

        return flags
    }

    var keyboardHIDUsage: KeyboardHIDUsage? {
        guard type == .keyDown || type == .keyUp else {
            return nil
        }

        switch Int(keyCode) {
        case kVK_ANSI_A:
            return .keyboardA
        case kVK_ANSI_B:
            return .keyboardB
        case kVK_ANSI_C:
            return .keyboardC
        case kVK_ANSI_D:
            return .keyboardD
        case kVK_ANSI_E:
            return .keyboardE
        case kVK_ANSI_F:
            return .keyboardF
        case kVK_ANSI_G:
            return .keyboardG
        case kVK_ANSI_H:
            return .keyboardH
        case kVK_ANSI_I:
            return .keyboardI
        case kVK_ANSI_J:
            return .keyboardJ
        case kVK_ANSI_K:
            return .keyboardK
        case kVK_ANSI_L:
            return .keyboardL
        case kVK_ANSI_M:
            return .keyboardM
        case kVK_ANSI_N:
            return .keyboardN
        case kVK_ANSI_O:
            return .keyboardO
        case kVK_ANSI_P:
            return .keyboardP
        case kVK_ANSI_Q:
            return .keyboardQ
        case kVK_ANSI_R:
            return .keyboardR
        case kVK_ANSI_S:
            return .keyboardS
        case kVK_ANSI_T:
            return .keyboardT
        case kVK_ANSI_U:
            return .keyboardU
        case kVK_ANSI_V:
            return .keyboardV
        case kVK_ANSI_W:
            return .keyboardW
        case kVK_ANSI_X:
            return .keyboardX
        case kVK_ANSI_Y:
            return .keyboardY
        case kVK_ANSI_Z:
            return .keyboardZ

        case kVK_ANSI_0:
            return .keyboard0
        case kVK_ANSI_1:
            return .keyboard1
        case kVK_ANSI_2:
            return .keyboard2
        case kVK_ANSI_3:
            return .keyboard3
        case kVK_ANSI_4:
            return .keyboard4
        case kVK_ANSI_5:
            return .keyboard5
        case kVK_ANSI_6:
            return .keyboard6
        case kVK_ANSI_7:
            return .keyboard7
        case kVK_ANSI_8:
            return .keyboard8
        case kVK_ANSI_9:
            return .keyboard9

        case kVK_LeftArrow:
            return .keyboardLeftArrow
        case kVK_RightArrow:
            return .keyboardRightArrow
        case kVK_UpArrow:
            return .keyboardUpArrow
        case kVK_DownArrow:
            return .keyboardDownArrow

        case kVK_ANSI_Equal:
            return .keyboardEqualSign
        case kVK_ANSI_Minus:
            return .keypadHyphen
        case kVK_ANSI_RightBracket:
            return .keyboardOpenBracket
        case kVK_ANSI_LeftBracket:
            return .keyboardCloseBracket
        case kVK_ANSI_Quote:
            return .keyboardQuote
        case kVK_ANSI_Semicolon:
            return .keyboardSemicolon
        case kVK_ANSI_Backslash:
            return .keyboardBackslash
        case kVK_ANSI_Comma:
            return .keyboardComma
        case kVK_ANSI_Slash:
            return .keyboardSlash
        case kVK_ANSI_Period:
            return .keyboardPeriod
        case kVK_ANSI_Grave:
            return .keyboardGraveAccentAndTilde

        case kVK_ANSI_KeypadDecimal:
            return .keypadPeriod
        case kVK_ANSI_KeypadPlus:
            return .keypadPlus
        case kVK_ANSI_KeypadMinus:
            return .keypadHyphen
        case kVK_ANSI_KeypadDivide:
            return .keypadSlash
        case kVK_ANSI_KeypadMultiply:
            return .keypadAsterisk
        case kVK_ANSI_Keypad0:
            return .keypad0
        case kVK_ANSI_Keypad1:
            return .keypad1
        case kVK_ANSI_Keypad2:
            return .keypad2
        case kVK_ANSI_Keypad3:
            return .keypad3
        case kVK_ANSI_Keypad4:
            return .keypad4
        case kVK_ANSI_Keypad5:
            return .keypad5
        case kVK_ANSI_Keypad6:
            return .keypad6
        case kVK_ANSI_Keypad7:
            return .keypad7
        case kVK_ANSI_Keypad8:
            return .keypad8
        case kVK_ANSI_Keypad9:
            return .keypad9

        case kVK_F1:
            return .keyboardF1
        case kVK_F2:
            return .keyboardF2
        case kVK_F3:
            return .keyboardF3
        case kVK_F4:
            return .keyboardF4
        case kVK_F5:
            return .keyboardF5
        case kVK_F6:
            return .keyboardF6
        case kVK_F7:
            return .keyboardF7
        case kVK_F8:
            return .keyboardF8
        case kVK_F9:
            return .keyboardF9
        case kVK_F10:
            return .keyboardF10
        case kVK_F11:
            return .keyboardF11
        case kVK_F12:
            return .keyboardF12
        case kVK_F13:
            return .keyboardF13
        case kVK_F14:
            return .keyboardF14
        case kVK_F15:
            return .keyboardF15
        case kVK_F16:
            return .keyboardF16
        case kVK_F17:
            return .keyboardF17
        case kVK_F18:
            return .keyboardF18
        case kVK_F19:
            return .keyboardF19
        case kVK_F20:
            return .keyboardF20

        case kVK_PageUp:
            return .keyboardPageUp
        case kVK_PageDown:
            return .keyboardPageDown
        case kVK_Home:
            return .keyboardHome
        case kVK_Help:
            return .keyboardHelp
        case kVK_Return:
            return .keyboardReturn
        case kVK_Tab:
            return .keyboardTab
        case kVK_Space:
            return .keyboardSpacebar
        case kVK_Delete:
            return .keyboardDeleteOrBackspace
        case kVK_Escape:
            return .keyboardEscape
        case kVK_VolumeUp:
            return .keyboardVolumeUp
        case kVK_VolumeDown:
            return .keyboardVolumeDown

        default:
            return nil
        }
    }

    public var key: Key? {
        let chars = characters ?? ""
        let charsIgnoringModifiers = charactersIgnoringModifiers ?? ""

        switch (keyboardHIDUsage, keyModifierFlags) {
        case (let key?, let mods?):
            return Key(keyCode: key,
                       characters: chars,
                       charactersIgnoringModifiers: charsIgnoringModifiers,
                       modifierFlags: mods)
        default:
            return nil
        }
    }
}
#endif

