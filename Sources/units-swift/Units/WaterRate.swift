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
        case fluidOuncePerAcre
        case americanPintPerAcre
        case americanQuart
        case americanGallonPerAcre

        public var factor: Double {
            switch self {
            case .literPerHa: return 1.0
            case .fluidOuncePerAcre: return 13.684049
            case .americanPintPerAcre: return 0.855253093
            case .americanQuart: return 0.427626547
            case .americanGallonPerAcre: return 0.106906637
            }
        }

        public static var mappings: [String: Settings] = [
            "liter_per_ha": .literPerHa,
            "fluid_ounce_per_acre": .fluidOuncePerAcre,
            "american_pint_per_acre": .americanPintPerAcre,
            "american_quart": .americanQuart,
            "american_gallon_per_acre": .americanGallonPerAcre
        ]
    }

    public static var code: String {
        return "water_rate"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .literPerHa: return localizator.literPerHa
        case .fluidOuncePerAcre: return localizator.fluidOuncePerAcre
        case .americanPintPerAcre: return localizator.americanPintPerAcre
        case .americanQuart: return localizator.americanQuart
        case .americanGallonPerAcre: return localizator.americanGallonPerAcre
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }
}
