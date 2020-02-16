import SwiftUI

public enum BetterPreviewDevice_AppleWatch {
    case Apple_Watch_Series_2_38mm
    case Apple_Watch_Series_2_42mm
    case Apple_Watch_Series_3_38mm
    case Apple_Watch_Series_3_42mm
    case Apple_Watch_Series_4_40mm
    case Apple_Watch_Series_4_44mm
}

extension BetterPreviewDevice_AppleWatch: PreviewableDeviceNL {
    public var displayName: String {
        return deviceName
    }
    
    public var deviceName: String {
        switch self {
        case .Apple_Watch_Series_2_38mm: return "Apple Watch Series 2 - 38mm"
        case .Apple_Watch_Series_2_42mm: return "Apple Watch Series 2 - 42mm"
        case .Apple_Watch_Series_3_38mm: return "Apple Watch Series 3 - 38mm"
        case .Apple_Watch_Series_3_42mm: return "Apple Watch Series 3 - 42mm"
        case .Apple_Watch_Series_4_40mm: return "Apple Watch Series 4 - 40mm"
        case .Apple_Watch_Series_4_44mm: return "Apple Watch Series 4 - 44mm"
        }
    }
}

extension BetterPreviewDevice_AppleWatch: Identifiable  {
    public var id: String {
        return deviceName
    }
}
