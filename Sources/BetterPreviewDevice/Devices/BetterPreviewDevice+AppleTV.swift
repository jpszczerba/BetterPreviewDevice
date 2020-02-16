import SwiftUI

public enum BetterPreviewDevice_AppleTV {
    case Apple_TV
    case Apple_TV_4K
    case Apple_TV_4K_at_1080p
}

extension BetterPreviewDevice_AppleTV: PreviewableDeviceNL {
    public var displayName: String {
        return deviceName
    }
    
    public var deviceName: String {
        switch self {
        case .Apple_TV: return "Apple TV"
        case .Apple_TV_4K: return "Apple TV 4K"
        case .Apple_TV_4K_at_1080p: return "Apple TV 4K (at 1080p)"
        }
    }
}

extension BetterPreviewDevice_AppleTV: Identifiable  {
    public var id: String {
        return deviceName
    }
}
