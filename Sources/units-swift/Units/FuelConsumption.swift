//
//  FuelConsumption.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct FuelConsumption: TransformableUnitType {

    public enum Settings: UnitTypeSettings {
        case milePerUsGallon
        case milePerUkGallon
        case kmPerLiter
        case literPer100km

        public var factor: Double {
            return 0 // not used for this type
        }

        public static var mappings: [String: Settings] = [
            "mile_per_us_gallon": .milePerUsGallon,
            "mile_per_uk_gallon": .milePerUkGallon,
            "km_per_liter": .kmPerLiter,
            "liter_per_100km": .literPer100km
        ]
    }

    public static var code: String {
        return "fuel_consumption"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .milePerUsGallon: return localizator.milePerUsGallon
        case .milePerUkGallon: return localizator.milePerUkGallon
        case .kmPerLiter: return localizator.kmPerLiter
        case .literPer100km: return localizator.literPer100km
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }

    private func transform(_ value: Double?) -> Double? {
        return value.map { value -> Double in
            switch self.settings {
            case .kmPerLiter:
                return 100 / value
            case .milePerUsGallon:
                return 235.214582 / value
            case .milePerUkGallon:
                return 282.480936 / value
            case .literPer100km:
                return value
            }
        }
    }

    public func from(_ base: Double?) -> Double? {
        return self.transform(base)
    }

    public func to(_ value: Double?) -> Double? {
        return self.transform(value)
    }
}
