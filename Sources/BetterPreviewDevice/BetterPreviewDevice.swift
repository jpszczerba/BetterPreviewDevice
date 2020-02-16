import SwiftUI

// MARK: - Preview Device
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
    /// Overrides the device for a preview using enumed BetterDevicePreviewNL.
    ///
    /// - parameters:
    ///     - device: Device used to preview a view
    ///     - colorScheme: Color scheme used to preview a view
    ///
    public func preview(device: BetterPreviewDevice_iPhone, colorScheme: ColorScheme = .light) -> some View {
        return preview(previewable: device, colorScheme: colorScheme)
    }
    
    public func preview(device: BetterPreviewDevice_iPad, colorScheme: ColorScheme = .light) -> some View {
        return preview(previewable: device, colorScheme: colorScheme)
    }
    
    public func preview(device: BetterPreviewDevice_AppleWatch, colorScheme: ColorScheme = .light) -> some View {
        return preview(previewable: device, colorScheme: colorScheme)
    }
    
    public func preview(device: BetterPreviewDevice_AppleTV, colorScheme: ColorScheme = .light) -> some View {
        return preview(previewable: device, colorScheme: colorScheme)
    }
    
    public func preview(device: BetterPreviewDevice_Mac, colorScheme: ColorScheme = .light) -> some View {
        return preview(previewable: device, colorScheme: colorScheme)
    }
}
    
// MARK: - Preview Landscape
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
    /// Overrides the size of the container for the preview using actual device's landscape screen size.
    /// NOTE: Landscape preview is not officially supported. The displayed container does not respect Safe Area or render split views correctly.
    ///
    /// - parameters:
    ///     - device: Device used to preview a view
    ///     - colorScheme: Color scheme used to preview a view
    public func previewLandscape(device: BetterPreviewDevice_iPhone, colorScheme: ColorScheme = .light) -> some View {
        return previewLandscape(previewable: device, colorScheme: colorScheme)
    }
    
    public func previewLandscape(device: BetterPreviewDevice_iPad, colorScheme: ColorScheme = .light) -> some View {
        return previewLandscape(previewable: device, colorScheme: colorScheme)
    }
}

extension ColorScheme: PreviewDisplayNamable {
    public var displayName: String {
        switch self {
        case .light:
            return "Light Scheme"
        case .dark:
            return "Dark Scheme"
            
        @unknown default:
            return "Unknown Scheme"
        }
    }
}
