//
//  Weight.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct Weight: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case kg
        case centner
        case pound
        case tonn

        public var factor: Double {
            switch self {
            case .kg: return 100.0
            case .centner: return 1.0
            case .pound: return 220.462
            case .tonn: return 0.1
            }
        }

        public static var mappings: [String: Settings] = [
            "kg": .kg,
            "centner": .centner,
            "pound": .pound,
            "tonn": .tonn
        ]
    }

    public static var code: String {
        return "weight"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .kg: return localizator.kg
        case .centner: return localizator.centner
        case .pound: return localizator.pound
        case .tonn: return localizator.ton
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }
}
