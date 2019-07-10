//
//  WaterRate.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct WaterRate: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case literPerHa
        case americanPintPerAcre
        case americanQuart

        public var factor: Double {
            switch self {
            case .literPerHa: return 1.0
            case .americanPintPerAcre: return 0.855253093
            case .americanQuart: return 0.427626547
            }
        }

        public static var mappings: [String: Settings] = [
            "liter_per_ha": .literPerHa,
            "american_pint_per_acre": .americanPintPerAcre,
            "american_quart": .americanQuart
        ]
    }

    public static var code: String {
        return "water_rate"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .literPerHa: return localizator.literPerHa
        case .americanPintPerAcre: return localizator.americanPintPerAcre
        case .americanQuart: return localizator.americanQuart
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }
}
