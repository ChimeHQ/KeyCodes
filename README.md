[![Github CI](https://github.com/ChimeHQ/KeyCodes/workflows/CI/badge.svg)](https://github.com/ChimeHQ/KeyCodes/actions)


# KeyCodes

Versions of `UIKey`, `UIKeyboardHIDUsage`, and `UIKeyModifierFlags` that work with AppKit's `NSEvent`. No need for Carbon.HIToolbox. Aside from being a nicer API to work with, these versions should make it possible to more easily write source-compatible AppKit/UIKit keyboard handling code. Yes, this is basically a gigantic switch statement.

⚠️ Not all keycodes are mapped yet. There are a lot.

## Integration

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/ChimeHQ/KeyCodes")
]
```

## Suggestions or Feedback

We'd love to hear from you! Get in touch via [twitter](https://twitter.com/chimehq), an issue, or a pull request.

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.
