//
//  Speed.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct Speed: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case mPerSec
        case milePerHour
        case kmPerHour

        public var factor: Double {
            switch self {
            case .mPerSec: return 1.0
            case .milePerHour: return 2.2369362920544
            case .kmPerHour: return 3.6
            }
        }

        public static var mappings: [String: Settings] = [
            "m_per_sec": .mPerSec,
            "mile_per_hour": .milePerHour,
            "km_per_hour": .kmPerHour
        ]
    }

    public static var code: String {
        return "speed"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .mPerSec: return localizator.mPerSec
        case .milePerHour: return localizator.milePerHour
        case .kmPerHour: return localizator.kmPerHour
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }
}
