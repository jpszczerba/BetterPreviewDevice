import SwiftUI

public struct BetterLandscapePreviewGroup<Content>: View where Content: View {
    private let devicesGroup: BetterPreviewDevicesGroup
    private let colorScheme: ColorScheme
    private let content: () -> Content

    public init(devicesGroup: BetterPreviewDevicesGroup, colorScheme: ColorScheme = .light, @ViewBuilder content: @escaping () -> Content) {
        self.devicesGroup = devicesGroup
        self.colorScheme = colorScheme
        self.content = content
    }

    public var body : some View {
        Group {
            ForEach(devicesGroup.devices, id: \.id) { device in
                self.content()
                    .previewLandscape(previewable: device, colorScheme: self.colorScheme)
            }
        }
    }
}

public struct BetterPreviewGroup<Content>: View where Content: View {
    private let devicesGroup: BetterPreviewDevicesNLGroup
    private let colorScheme: ColorScheme
    private let content: () -> Content

    public init(devicesGroup: BetterPreviewDevicesNLGroup, colorScheme: ColorScheme = .light, @ViewBuilder content: @escaping () -> Content) {
        self.devicesGroup = devicesGroup
        self.colorScheme = colorScheme
        self.content = content
    }

    public var body : some View {
        Group {
            ForEach(devicesGroup.devices, id: \.id) { device in
                self.content()
                    .preview(previewable: device, colorScheme: self.colorScheme)
            }
        }
    }
}
