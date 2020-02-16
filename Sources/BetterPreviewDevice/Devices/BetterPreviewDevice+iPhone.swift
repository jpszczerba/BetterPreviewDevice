import SwiftUI

public enum BetterPreviewDevice_iPhone {
    case iPhone_6s
    case iPhone_6s_Plus
    case iPhone_SE
    case iPhone_7
    case iPhone_7_Plus
    case iPhone_8
    case iPhone_8_Plus
    case iPhone_X
    case iPhone_Xr
    case iPhone_Xs
    case iPhone_Xs_Max
    case iPhone_11
    case iPhone_11_Pro
    case iPhone_11_Pro_Max
}

extension BetterPreviewDevice_iPhone: PreviewableDevice {
    public var displayName: String {
        return deviceName
    }
    
    public var deviceName: String {
        switch self {
        case .iPhone_6s: return "iPhone 6s"
        case .iPhone_6s_Plus: return "iPhone 6s Plus"
        case .iPhone_SE: return "iPhone SE"
        case .iPhone_7: return "iPhone 7"
        case .iPhone_7_Plus: return "iPhone 7 Plus"
        case .iPhone_8: return "iPhone 8"
        case .iPhone_8_Plus: return "iPhone 8 Plus"
        case .iPhone_X: return "iPhone X"
        case .iPhone_Xr: return "iPhone Xʀ"
        case .iPhone_Xs: return "iPhone Xs"
        case .iPhone_Xs_Max: return "iPhone Xs Max"
        case .iPhone_11: return "iPhone 11"
        case .iPhone_11_Pro: return "iPhone 11 Pro"
        case .iPhone_11_Pro_Max: return "iPhone 11 Pro Max"
        }
    }
    
    public var landscapeScreenSize: CGSize {
        switch self {
        case .iPhone_SE:
            return CGSize.init(width: 568, height: 320)
            
        case .iPhone_6s: fallthrough
        case .iPhone_7: fallthrough
        case .iPhone_8:
            return CGSize.init(width: 667, height: 375)
            
        case .iPhone_6s_Plus: fallthrough
        case .iPhone_7_Plus: fallthrough
        case .iPhone_8_Plus:
            return CGSize.init(width: 736, height: 414)
            
        case .iPhone_X: fallthrough
        case .iPhone_Xs: fallthrough
        case .iPhone_11_Pro:
            return CGSize.init(width: 812, height: 375)
            
        case .iPhone_11: fallthrough
        case .iPhone_Xr: fallthrough
        case .iPhone_Xs_Max: fallthrough
        case .iPhone_11_Pro_Max:
            return CGSize.init(width: 896, height: 414)
        }
    }
}

extension BetterPreviewDevice_iPhone: Identifiable  {
    public var id: String {
        return deviceName
    }
}
