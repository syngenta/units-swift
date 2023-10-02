//
//  WindSpeed.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 02.10.2023.
//

import Foundation

public struct WindSpeed: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case mPerSec
        case kmPerHour
        case milePerHour

        public var factor: Double {
            switch self {
            case .mPerSec: return 1.0
            case .kmPerHour: return 3.6
            case .milePerHour: return 2.2369362920544
            }
        }

        public static var mappings: [String: Settings] = [
            "m_per_sec": .mPerSec,
            "km_per_hour": .kmPerHour,
            "mile_per_hour": .milePerHour
        ]
    }

    public static var code: String {
        "wind_speed"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .mPerSec: return localizator.mPerSec
        case .kmPerHour: return localizator.kmPerHour
        case .milePerHour: return localizator.milePerHour
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }
}
