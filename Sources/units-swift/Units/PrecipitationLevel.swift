//
//  PrecipitationLevel.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct PrecipitationLevel: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case `in`
        case mm
        case cm

        public var factor: Double {
            switch self {
            case .in: return 0.0393700787
            case .mm: return 1.0
            case .cm: return 0.1
            }
        }

        public static var mappings: [String: Settings] = [
            "in": .in,
            "mm": .mm,
            "cm": .cm
        ]
    }

    public static var code: String {
        return "precipitation_level"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .in: return localizator.in
        case .mm: return localizator.mm
        case .cm: return localizator.cm
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }
}
