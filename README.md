# BetterPreviewDevice

A better way to enable preview of SwiftUI views using enums and predefined groups instead of manually providing string raw values.

## Why?

Let's assume you want to preview your fancy newly developed SwiftUI view on iPhone 11 Pro Max with Dark Mode enabled.
Usually do this like this:
```swift
ExampleView()
    .previewDevice("iPhone 11 Pro Max")
```
If you want to change it to an iPad, you need to find a proper raw String representing chosen device, copy it and replace previously selected device.
With BetterPreviewDevice you can use predefined enums instead of Strings. Just like that:
```swift
ExampleView()
    .preview(device: .iPhone_11_Pro_Max)
```

Moreover, what if you want to display a group of devices, e.g. on all iPhones displays sizes? Usually you do this like that:
```swift
static var previews: some View {
    let devices = ["iPhone_SE", "iPhone_8", "iPhone_11_Pro", "iPhone_11", "iPhone_11_Pro_Max"]
    return ForEach(devices, id: \.self) { device in
        ExampleView()
            .previewDevice(PreviewDevice(rawValue: device))
    }
}
```

With BetterPreviewGroup it is as simple as:
```swift
static var previews: some View {
    BetterPreviewGroup(devicesGroup: .iPhones) {
        ExampleView()
    }
}
```

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
    (...)  // Here comes the BetterPreviewDevice
    }
}
```


### Preview on Device

```swift
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExampleView()
                .preview(device: .iPhone_11)
            
            ExampleView()
                .preview(device: .iPad_Pro_9_7_inch)
        }
    }
}
```


### Preview Landscape

There is not an official support for landscape mode in SwiftUI previews. It can be only simulated using devices' screen resolutions. 
Only iPhones and iPads can be previewed in landscape mode.

**NOTE:** The displayed fixed-size container does not respect Safe Area or render split views correctly.

```swift
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExampleView()
                .previewLandscape(device: .iPhone_11)
            
            ExampleView()
                .previewLandscape(device: .iPad_Pro_9_7_inch)
        }
    }
}
```


### Preview Group

In order to make previewing on multiple devices easier, `BetterPreviewGroup` can be used. It displays a selected group type. 

Available groups:
- iPhones
- iPads
- AppleWatches
- AppleTVs
- Macs

```swift
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        BetterPreviewGroup(devicesGroup: .iPhones) {
            ExampleView()
        }
    }
}
```

```swift
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        BetterLandscapePreviewGroup(devicesGroup: .iPads) {
            ExampleView()
        }
    }
}
```


### Color Scheme

```swift
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExampleView()
                .preview(device: .iPhone_11, colorScheme: .light)
            
            ExampleView()
                .previewLandscape(device: .iPad_Pro_9_7_inch, colorScheme: .dark)
        }
    }
}
```

## Available devices

#### iPhones
- iPhone 6s
- iPhone 6s Plus
- iPhone SE
- iPhone 7
- iPhone 7 Plus
- iPhone 8
- iPhone 8 Plus
- iPhone X
- iPhone Xʀ
- iPhone Xs
- iPhone Xs Max
- iPhone 11
- iPhone 11 Pro
- iPhone 11 Pro Max

#### iPads
- iPad mini 4
- iPad Air 2
- iPad Pro (9.7-inch)
- iPad Pro (12.9-inch)
- iPad (5th generation)
- iPad Pro (12.9-inch) (2nd generation)
- iPad Pro (10.5-inch)
- iPad (6th generation)
- iPad Pro (11-inch)
- iPad Pro (12.9-inch) (3rd generation)
- iPad mini (5th generation)
- iPad Air (3rd generation)

#### Apple Watches
- Apple Watch Series 2 - 38mm
- Apple Watch Series 2 - 42mm
- Apple Watch Series 3 - 38mm
- Apple Watch Series 3 - 42mm
- Apple Watch Series 4 - 40mm
- Apple Watch Series 4 - 44mm

#### Apple TVs
- Apple TV
- Apple TV 4K
- Apple TV 4K (at 1080p)

#### Macs
- Mac


## TODO
- testing on all platforms
- size classes
- localizations
- (more to come)
