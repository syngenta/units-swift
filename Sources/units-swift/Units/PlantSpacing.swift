//
//  PlantSpacing.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct PlantSpacing: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case ft
        case m
        case cm
        case `in`

        public var factor: Double {
            switch self {
            case .ft: return 3.2808399
            case .m: return 1.0
            case .cm: return 100.0
            case .in: return 39.3700787
            }
        }

        public static var mappings: [String: Settings] = [
            "ft": .ft,
            "m": .m,
            "cm": .cm,
            "in": .in
        ]
    }

    public static var code: String {
        return "plant_spacing"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .ft: return localizator.ft
        case .m: return localizator.m
        case .cm: return localizator.cm
        case .in: return localizator.in
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }
}
