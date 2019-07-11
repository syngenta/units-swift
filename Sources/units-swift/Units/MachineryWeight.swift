//
//  MachineryWeight.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct MachineryWeight: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case kg
        case tonn
        case pound
        case centner

        public var factor: Double {
            switch self {
            case .kg: return 1.0
            case .tonn: return 0.001
            case .pound: return 2.20462262
            case .centner: return 0.01
            }
        }

        public static var mappings: [String: Settings] = [
            "kg": .kg,
            "tonn": .tonn,
            "pound": .pound,
            "centner": .centner
        ]
    }

    public static var code: String {
        return "machinery_weight"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .kg: return localizator.kg
        case .tonn: return localizator.ton
        case .pound: return localizator.pound
        case .centner: return localizator.centner
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }
}
