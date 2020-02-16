import SwiftUI

public enum BetterPreviewDevice_Mac {
    case Mac
}

extension BetterPreviewDevice_Mac: PreviewableDeviceNL {
    public var displayName: String {
        return deviceName
    }
    
    public var deviceName: String {
        switch self {
        case .Mac: return "Mac"
        }
    }
}

extension BetterPreviewDevice_Mac: Identifiable  {
    public var id: String {
        return deviceName
    }
}
