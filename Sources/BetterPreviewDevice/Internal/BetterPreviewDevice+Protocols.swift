import SwiftUI

protocol PreviewDisplayIdentifiable {
    var id: String { get }
}

protocol PreviewDisplayNamable {
    var displayName: String { get }
}

protocol PreviewDeviceNamable {
    var deviceName: String { get }
}

protocol Landscapable {
    var landscapeScreenSize: CGSize { get }
}

protocol PreviewableDeviceNL: PreviewDisplayNamable, PreviewDeviceNamable, PreviewDisplayIdentifiable {}
protocol PreviewableDevice: PreviewableDeviceNL, Landscapable {}
