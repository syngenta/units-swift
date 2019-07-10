//
//  Depth.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct Depth: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case cm
        case `in`

        public var factor: Double {
            switch self {
            case .cm: return 1.0
            case .in: return 0.393700787
            }
        }

        public static var mappings: [String: Settings] = [
            "cm": .cm,
            "in": .in
        ]
    }

    public static var code: String {
        return "depth"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
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
