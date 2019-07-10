//
//  ShortLength.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct ShortLength: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case m
        case ft

        public var factor: Double {
            switch self {
            case .m: return 1.0
            case .ft: return 3.2808399
            }
        }

        public static var mappings: [String: Settings] = [
            "m": .m,
            "ft": .ft
        ]
    }

    public static var code: String {
        return "short_length"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .m: return localizator.m
        case .ft: return localizator.ft
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }
}
