//
//  Volume.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct Volume: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case pint
        case quart
        case liter
        case britishGallon
        case bushel
        case americanGallon

        public var factor: Double {
            switch self {
            case .pint: return 2.11337642
            case .quart: return 1.05668821
            case .liter: return 1.0
            case .britishGallon: return 0.22
            case .bushel: return 0.0283775918
            case .americanGallon: return 0.26
            }
        }

        public static var mappings: [String: Settings] = [
            "pint": .pint,
            "quart": .quart,
            "liter": .liter,
            "british_gallon": .britishGallon,
            "bushel": .bushel,
            "american_gallon": .americanGallon
        ]
    }

    public static var code: String {
        return "volume"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .pint: return localizator.pint
        case .quart: return localizator.quart
        case .liter: return localizator.liter
        case .britishGallon: return localizator.britishGallon
        case .bushel: return localizator.bushel
        case .americanGallon: return localizator.americanGallon
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }
}
