import SwiftUI

public enum BetterPreviewDevice_iPad {
    case iPad_mini_4
    case iPad_Air_2
    case iPad_Pro_9_7_inch
    case iPad_Pro_12_9_inch
    case iPad_5th_generation
    case iPad_Pro_12_9_inch_2nd_generation
    case iPad_Pro_10_5_inch
    case iPad_6th_generation
    case iPad_Pro_11_inch
    case iPad_Pro_12_9_inch_3rd_generation
    case iPad_mini_5th_generation
    case iPad_Air_3rd_generation
}

extension BetterPreviewDevice_iPad: PreviewableDevice {
    public var displayName: String {
        return deviceName
    }
    
    public var deviceName: String {
        switch self {
        case .iPad_mini_4: return "iPad mini 4"
        case .iPad_Air_2: return "iPad Air 2"
        case .iPad_Pro_9_7_inch: return "iPad Pro (9.7-inch)"
        case .iPad_Pro_12_9_inch: return "iPad Pro (12.9-inch)"
        case .iPad_5th_generation: return "iPad (5th generation)"
        case .iPad_Pro_12_9_inch_2nd_generation: return "iPad Pro (12.9-inch) (2nd generation)"
        case .iPad_Pro_10_5_inch: return "iPad Pro (10.5-inch)"
        case .iPad_6th_generation: return "iPad (6th generation)"
        case .iPad_Pro_11_inch: return "iPad Pro (11-inch)"
        case .iPad_Pro_12_9_inch_3rd_generation: return "iPad Pro (12.9-inch) (3rd generation)"
        case .iPad_mini_5th_generation: return "iPad mini (5th generation)"
        case .iPad_Air_3rd_generation: return "iPad Air (3rd generation)"
        }
    }
    
    public var landscapeScreenSize: CGSize {
        switch self {
        case .iPad_mini_4: fallthrough
        case .iPad_mini_5th_generation: fallthrough
        case .iPad_Air_2: fallthrough
        case .iPad_Pro_9_7_inch: fallthrough
        case .iPad_5th_generation:
            return CGSize.init(width: 1024, height: 768)
            
        case .iPad_6th_generation:
            return CGSize.init(width: 1080, height: 810)
            
        case .iPad_Air_3rd_generation: fallthrough
        case .iPad_Pro_10_5_inch:
            return CGSize.init(width: 1112, height: 834)
            
        case .iPad_Pro_11_inch:
            return CGSize.init(width: 1194, height: 834)
            
        case .iPad_Pro_12_9_inch: fallthrough
        case .iPad_Pro_12_9_inch_2nd_generation: fallthrough
        case .iPad_Pro_12_9_inch_3rd_generation:
            return CGSize.init(width: 1366, height: 1024)
        }
    }
}

extension BetterPreviewDevice_iPad: Identifiable  {
    public var id: String {
        return deviceName
    }
}
