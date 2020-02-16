# BetterPreviewDevice

### A better way to enable preview of SwiftUI views using enums and predefined groups instead of manually providing string raw values.


## Requirements

- Xcode 11.0+
- Swift 5.0+  

- iOS 13.0+

Yet to be tested:
- macOS 10.15+
- Mac Catalyst 13.0+
- tvOS 13.0+
- watchOS 6.0+


## Installation

BetterPreviewDevice can be used with Swift Package Manager.

In Xcode 11+, open `File` → `Swift Packages` → `Add Package Dependency` and enter `https://github.com/jpszczerba/BetterPreviewDevice`.


## Examples

```swift
import SwiftUI
import BetterPreviewDevice

struct ExampleView: View {
    var body: some View {
        Text("Example")
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExampleView()
                .preview(device: .iPhone_11)
            
            ExampleView()
                .preview(device: .iPhone_11, colorScheme: .dark)
            
            ExampleView()
                .previewLandscape(device: .iPhone_8)
            
            ExampleView()
                .previewLandscape(device: .iPad_Pro_9_7_inch, colorScheme: .dark)
        }
    }
}
```

```swift
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        BetterPreviewGroup(devicesGroup: .iPhones) {
            ExampleView()
        }
    }
}
```
