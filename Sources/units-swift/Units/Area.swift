//
//  Area.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct Area: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case ha
        case acre

        public var factor: Double {
            switch self {
            case .ha: return 1.0
            case .acre: return 2.47
            }
        }

        public static var mappings: [String: Settings] = [
            "ha": .ha,
            "acre": .acre
        ]
    }

    public static var code: String {
        return "area"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .ha: return localizator.ha
        case .acre: return localizator.acre
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }
}
