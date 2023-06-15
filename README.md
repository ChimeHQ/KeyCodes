[![Build Status][build status badge]][build status]
[![License][license badge]][license]
[![Platforms][platforms badge]][platforms]

# KeyCodes

Versions of `UIKey`, `UIKeyboardHIDUsage`, and `UIKeyModifierFlags` that work with AppKit's `NSEvent`. No need for Carbon.HIToolbox. Aside from being a nicer API to work with, these versions should make it possible to more easily write source-compatible AppKit/UIKit keyboard handling code. Yes, this is basically a gigantic switch statement.

These structures are particularly helpful for writing tests. Constructing `NSEvent` instances by hand is a pain.

## Integration

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/ChimeHQ/KeyCodes")
]
```

## Suggestions or Feedback

We'd love to hear from you! Get in touch via an issue or pull request.

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

[build status]: https://github.com/ChimeHQ/KeyCodes/actions
[build status badge]: https://github.com/ChimeHQ/KeyCodes/workflows/CI/badge.svg
[license]: https://opensource.org/licenses/BSD-3-Clause
[license badge]: https://img.shields.io/github/license/ChimeHQ/KeyCodes
[platforms]: https://swiftpackageindex.com/ChimeHQ/KeyCodes
[platforms badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FChimeHQ%2FKeyCodes%2Fbadge%3Ftype%3Dplatforms
