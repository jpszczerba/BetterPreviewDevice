import SwiftUI

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
    func preview(previewable: PreviewableDeviceNL, colorScheme: ColorScheme = .light) -> some View {
        let displayName = self.createDeviceDisplayName(device: previewable, colorScheme: colorScheme)
        
        return previewDevice(PreviewDevice(rawValue: previewable.deviceName))
            .environment(\.colorScheme, colorScheme)
            .previewDisplayName(displayName)
    }
    
    func previewLandscape(previewable: PreviewableDevice, colorScheme: ColorScheme = .light) -> some View {
        let displayName = self.createLandscapeScreenDisplayName(device: previewable, colorScheme: colorScheme)
        let size = previewable.landscapeScreenSize
        
        return previewLayout(.fixed(width: size.width, height: size.height))
            .environment(\.colorScheme, colorScheme)
            .previewDisplayName(displayName)
    }
    
    private func createDeviceDisplayName(device: PreviewableDeviceNL, colorScheme: ColorScheme) -> String {
        device.displayName + " - " + colorScheme.displayName
    }
    
    private func createLandscapeScreenDisplayName(device: PreviewableDevice, colorScheme: ColorScheme) -> String {
        device.displayName + " Screen - Landscape - " + colorScheme.displayName
    }
}
