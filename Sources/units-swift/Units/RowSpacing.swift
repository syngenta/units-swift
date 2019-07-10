//
//  RowSpacing.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct RowSpacing: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case `in`
        case ft
        case m
        case cm

        public var factor: Double {
            switch self {
            case .in: return 39.3700787
            case .ft: return 3.2808399
            case .m: return 1.0
            case .cm: return 100.0
            }
        }

        public static var mappings: [String: Settings] = [
            "in": .in,
            "ft": .ft,
            "m": .m,
            "cm": .cm
        ]
    }

    public static var code: String {
        return "row_spacing"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .in: return localizator.in
        case .ft: return localizator.ft
        case .m: return localizator.m
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
