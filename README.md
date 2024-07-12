<div align="center">

[![Build Status][build status badge]][build status]
[![Platforms][platforms badge]][platforms]
[![Matrix][matrix badge]][matrix]

</div>

# KeyCodes

Versions of `UIKey`, `UIKeyboardHIDUsage`, and `UIKeyModifierFlags` that work with AppKit's `NSEvent`. No need for Carbon.HIToolbox. Aside from being a nicer API to work with, these versions should make it possible to more easily write source-compatible AppKit/UIKit keyboard handling code. Yes, this is basically a gigantic switch statement.

These structures are particularly helpful for writing tests. Constructing `NSEvent` instances by hand is a pain.

## Usage

```swift
import Carbon.HIToolbox

func withoutKeyCodes(_ event: NSEvent) {
    let code = Int(event.keyCode)
    
    if code == kVK_Return {
        doThing()
    }
}

import KeyCodes

func withKeyCodes(_ event: NSEvent) {
    if event.keyboardHIDUsage == .keyboardReturn {
        doThing()
    }
}
```

## Integration

```swift
dependencies: [
    .package(url: "https://github.com/ChimeHQ/KeyCodes", from: "0.1.1")
]
```

## Contributing and Collaboration

I would love to hear from you! Issues or pull requests work great. A [Matrix space][matrix] is also available for live help, but I have a strong bias towards answering in the form of documenation.

I prefer collaboration, and would love to find ways to work together if you have a similar project.

I prefer indentation with tabs for improved accessibility. But, I'd rather you use the system you want and make a PR than hesitate because of whitespace.

By participating in this project you agree to abide by the [Contributor Code of Conduct](CODE_OF_CONDUCT.md).

[build status]: https://github.com/ChimeHQ/KeyCodes/actions
[build status badge]: https://github.com/ChimeHQ/KeyCodes/workflows/CI/badge.svg
[platforms]: https://swiftpackageindex.com/ChimeHQ/KeyCodes
[platforms badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FChimeHQ%2FKeyCodes%2Fbadge%3Ftype%3Dplatforms
[matrix]: https://matrix.to/#/%23chimehq%3Amatrix.org
[matrix badge]: https://img.shields.io/matrix/chimehq%3Amatrix.org?label=Matrix
