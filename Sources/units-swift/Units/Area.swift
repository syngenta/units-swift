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
        case decare
        case feddan

        public var factor: Double {
            switch self {
            case .ha: 1.0
            case .acre: 2.471053814671653
            case .decare: 10.0
            case .feddan: 2.380952380952381
            }
        }

        public static var mappings: [String: Settings] = [
            "ha": .ha,
            "acre": .acre,
            "decare": .decare,
            "feddan": .feddan
        ]
    }

    public static var code: String { "area" }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .ha: localizator.ha
        case .acre: localizator.acre
        case .decare: localizator.decare
        case .feddan: localizator.feddan
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }
}
