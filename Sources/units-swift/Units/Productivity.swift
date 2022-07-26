//
//  Productivity.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct Productivity: UnitType {

    public enum Settings: UnitTypeSettings {
        case centnerPerHa
        case tonnPerHa
        case usTonnPerAcre
        case bushelPerAcre

        public var factor: Double {
            switch self {
            case .centnerPerHa: return 1.0
            case .tonnPerHa: return 0.1
            case .usTonnPerAcre: return 0.224
            case .bushelPerAcre: return 0.0
            }
        }

        public static var mappings: [String: Settings] = [
            "centner_per_ha": .centnerPerHa,
            "tonn_per_ha": .tonnPerHa,
            "us_tonn_per_acre": .usTonnPerAcre,
            "bushel_per_acre": .bushelPerAcre
        ]
    }

    public static var code: String {
        return "productivity"
    }

    public static func localization(settings: Settings, localizator: Localizator) -> Localization {
        switch settings {
        case .centnerPerHa: return localizator.centnerPerHa
        case .tonnPerHa: return localizator.tonPerHa
        case .usTonnPerAcre: return localizator.usTonPerAcre
        case .bushelPerAcre: return localizator.bushelPerAcre
        }
    }

    public private(set) var settings: Settings
    public private(set) var localization: Localization

    public init(settings: Settings, localization: Localization) {
        self.settings = settings
        self.localization = localization
    }

    public func from(_ value: Double?, crop: String) -> Double? {
        value.map { self.from($0, crop: crop) }
    }

    public func from(_ value: Double, crop: String) -> Double {
        switch self.settings {
        case .bushelPerAcre:
            return self.from(value: value, crop: crop)
        default:
            return value * self.settings.factor
        }
    }

    public func to(_ value: Double?, crop: String) -> Double? {
        value.map { self.to($0, crop: crop) }
    }

    public func to(_ value: Double, crop: String) -> Double {
        switch self.settings {
        case .bushelPerAcre:
            return self.to(value: value, crop: crop)
        default:
            return value / self.settings.factor
        }
    }

    private let factors = [
        "wheat_spring": 3.6744,
        "wheat_winter": 3.6744,
        "pea": 3.6744,
        "potatoes": 3.6744,
        "soya": 3.6744,

        "rye_winter": 3.9368,
        "rye_spring": 3.9368,
        "maize": 3.9368,
        "linum": 3.9368,
        "millet": 3.9368,

        "barley_spring": 4.593,
        "barley_winter": 4.593,
        "buckwheat": 4.593,

        "avena_spring": 6.4842,
        "avena_winter": 6.4842,

        "rice": 2.204624,

        "oil_seed_raps_spring": 4.4092,
        "oil_seed_raps_winter": 4.4092,

        "sunflower": 7.3487,

        "triticale_spring": 4.23960,
        "triticale_winter": 4.23960
    ]

    private func from(value: Double, crop: String) -> Double {
        guard let factor = self.factors[crop] else {
            return value * 1.487611336
        }
        return value * (factor / 2.47)
    }

    private func to(value: Double, crop: String) -> Double {
        guard let factor = self.factors[crop] else {
            return value / 1.487611336
        }
        return value / (factor / 2.47)
    }
}
