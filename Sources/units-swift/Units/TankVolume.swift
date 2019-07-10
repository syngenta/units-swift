//
//  TankVolume.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct TankVolume: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case liter
        case americanGallon
        case britishGallon

        public var factor: Double {
            switch self {
            case .liter: return 1.0
            case .americanGallon: return 0.26
            case .britishGallon: return 0.22
            }
        }

        public static var mappings: [String: Settings] = [
            "liter": .liter,
            "american_gallon": .americanGallon,
            "british_gallon": .britishGallon
        ]
    }

    public static var code: String {
        return "tank_volume"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .liter: return localizator.liter
        case .americanGallon: return localizator.americanGallon
        case .britishGallon: return localizator.britishGallon
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }
}
