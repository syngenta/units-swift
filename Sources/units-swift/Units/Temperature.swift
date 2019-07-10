//
//  Temperature.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct Temperature: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case celsius
        case fahrenheit

        public var factor: Double {
            return 0 // not used for this type
        }

        public static var mappings: [String: Settings] = [
            "celsius": .celsius,
            "fahrenheit": .fahrenheit
        ]
    }

    public static var code: String {
        return "temperature"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .celsius: return localizator.celsius
        case .fahrenheit: return localizator.fahrenheit
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }

    public func from(_ base: Double?) -> Double? {
        return base.map { value -> Double in
            if self.settings == .fahrenheit {
                return value * (9.0 / 5.0) + 32.0
            }
            return value
        }
    }

    public func to(_ value: Double?) -> Double? {
        return value.map { value -> Double in
            if self.settings == .fahrenheit {
                return (value - 32.0) / 1.8
            }
            return value
        }
    }
}
