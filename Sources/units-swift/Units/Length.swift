//
//  Length.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct Length: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case km
        case mile

        public var factor: Double {
            switch self {
            case .km: return 1.0
            case .mile: return 0.621371192
            }
        }

        public static var mappings: [String: Settings] = [
            "km": .km,
            "mile": .mile
        ]
    }

    public static var code: String {
        return "length"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .km: return localizator.km
        case .mile: return localizator.mile
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }
}
