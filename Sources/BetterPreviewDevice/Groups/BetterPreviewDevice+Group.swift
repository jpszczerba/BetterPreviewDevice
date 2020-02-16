
public struct BetterPreviewDevicesAllSizes {
    public static let iPhones: [BetterPreviewDevice_iPhone] = [
        .iPhone_SE, .iPhone_8, .iPhone_11_Pro, .iPhone_11, .iPhone_11_Pro_Max
    ]

    public static let iPads: [BetterPreviewDevice_iPad] = [
        .iPad_5th_generation, .iPad_6th_generation, .iPad_Pro_10_5_inch, .iPad_Pro_11_inch, .iPad_Pro_12_9_inch_3rd_generation
    ]

    public static let AppleWatches: [BetterPreviewDevice_AppleWatch] = [
        .Apple_Watch_Series_3_38mm, .Apple_Watch_Series_4_40mm, .Apple_Watch_Series_3_42mm, .Apple_Watch_Series_4_44mm
    ]
    
    public static let AppleTVs: [BetterPreviewDevice_AppleTV] = [
        .Apple_TV, .Apple_TV_4K, .Apple_TV_4K_at_1080p
    ]
    
    public static let Macs: [BetterPreviewDevice_Mac] = [
        .Mac
    ]
}

public enum BetterPreviewDevicesGroup {
    case iPhones
    case iPads
    
    var devices: [PreviewableDevice] {
        switch self {
        case .iPhones:
            return BetterPreviewDevicesAllSizes.iPhones
        case .iPads:
            return BetterPreviewDevicesAllSizes.iPads
        }
    }
}

public enum BetterPreviewDevicesNLGroup {
    case iPhones
    case iPads
    case AppleWatches
    case AppleTVs
    case Macs
    
    var devices: [PreviewableDeviceNL] {
        switch self {
        case .iPhones:
            return BetterPreviewDevicesAllSizes.iPhones
        case .iPads:
            return BetterPreviewDevicesAllSizes.iPads
        case .AppleWatches:
            return BetterPreviewDevicesAllSizes.AppleWatches
        case .AppleTVs:
            return BetterPreviewDevicesAllSizes.AppleTVs
        case .Macs:
            return BetterPreviewDevicesAllSizes.Macs
        }
    }
}
