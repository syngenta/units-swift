//
//  UnitsLocalizator.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

class UnitsLocalizator: Localizator {
    // MARK: Area
    var ha: Localization {
        return .init(
            short: self.localized("ha"),
            full: self.localized("ha_full")
        )
    }
    var acre: Localization {
        return .init(
            short: self.localized("acre"),
            full: self.localized("acre_full")
        )
    }

    // MARK: Length
    var `in`: Localization {
        return .init(
            short: self.localized("in"),
            full: self.localized("in_full")
        )
    }
    var ft: Localization {
        return .init(
            short: self.localized("ft"),
            full: self.localized("ft_full")
        )
    }
    var mile: Localization {
        return .init(
            short: self.localized("mile"),
            full: self.localized("mile_full")
        )
    }
    var mm: Localization {
        return .init(
            short: self.localized("mm"),
            full: self.localized("mm_full")
        )
    }
    var cm: Localization {
        return .init(
            short: self.localized("cm"),
            full: self.localized("cm_full")
        )
    }
    var m: Localization {
        return .init(
            short: self.localized("m"),
            full: self.localized("m_full")
        )
    }
    var km: Localization {
        return .init(
            short: self.localized("km"),
            full: self.localized("km_full")
        )
    }

    // MARK: Weight
    var pound: Localization {
        return .init(
            short: self.localized("pound"),
            full: self.localized("pound_full")
        )
    }
    var kg: Localization {
        return .init(
            short: self.localized("kg"),
            full: self.localized("kg_full")
        )
    }
    var centner: Localization {
        return .init(
            short: self.localized("centner"),
            full: self.localized("centner_full")
        )
    }
    var ton: Localization {
        return .init(
            short: self.localized("ton"),
            full: self.localized("ton_full")
        )
    }

    // MARK: Liquids
    var pint: Localization {
        return .init(
            short: self.localized("pint"),
            full: self.localized("pint_full")
        )
    }
    var liter: Localization {
        return .init(
            short: self.localized("liter"),
            full: self.localized("liter_full")
        )
    }
    var bushel: Localization {
        return .init(
            short: self.localized("bushel"),
            full: self.localized("bushel_full")
        )
    }
    var quart: Localization {
        return .init(
            short: self.localized("quart"),
            full: self.localized("quart_full")
        )
    }
    var americanGallon: Localization {
        return .init(
            short: self.localized("american_gallon"),
            full: self.localized("american_gallon_full")
        )
    }
    var britishGallon: Localization {
        return .init(
            short: self.localized("british_gallon"),
            full: self.localized("british_gallon_full")
        )
    }

    // MARK: Temperature
    var celsius: Localization {
        return .init(
            short: self.localized("celsius"),
            full: self.localized("celsius_full")
        )
    }
    var fahrenheit: Localization {
        return .init(
            short: self.localized("fahrenheit"),
            full: self.localized("fahrenheit_full")
        )
    }

    // MARK: Productivity
    var bushelPerAcre: Localization {
        return .init(
            short: self.localized("bushel_per_acre"),
            full: self.localized("bushel_per_acre_full")
        )
    }
    var usTonPerAcre: Localization {
        return .init(
            short: self.localized("us_ton_per_acre"),
            full: self.localized("us_ton_per_acre_full")
        )
    }
    var tonPerHa: Localization {
        return .init(
            short: self.localized("ton_per_ha"),
            full: self.localized("ton_per_ha_full")
        )
    }
    var centnerPerHa: Localization {
        return .init(
            short: self.localized("centner_per_ha"),
            full: self.localized("centner_per_ha_full")
        )
    }

    // MARK: Speed
    var mPerSec: Localization {
        return .init(
            short: self.localized("m_per_sec"),
            full: self.localized("m_per_sec_full")
        )
    }
    var milePerHour: Localization {
        return .init(
            short: self.localized("mile_per_hour"),
            full: self.localized("mile_per_hour_full")
        )
    }
    var kmPerHour: Localization {
        return .init(
            short: self.localized("km_per_hour"),
            full: self.localized("km_per_hour_full")
        )
    }

    // MARK: FuelConsumption
    var americanPintPerAcre: Localization {
        return .init(
            short: self.localized("american_pint_per_acre"),
            full: self.localized("american_pint_per_acre_full")
        )
    }
    var americanQuart: Localization {
        return .init(
            short: self.localized("american_quart"),
            full: self.localized("american_quart_full")
        )
    }
    var literPerHa: Localization {
        return .init(
            short: self.localized("liter_per_ha"),
            full: self.localized("liter_per_ha_full")
        )
    }

    var milePerUsGallon: Localization {
        return .init(
            short: self.localized("mile_per_us_gallon"),
            full: self.localized("mile_per_us_gallon_full")
        )
    }
    var kmPerLiter: Localization {
        return .init(
            short: self.localized("km_per_liter"),
            full: self.localized("km_per_liter_full")
        )
    }
    var literPer100km: Localization {
        return .init(
            short: self.localized("liter_per_100km"),
            full: self.localized("liter_per_100km_full")
        )
    }
    var milePerUkGallon: Localization {
        return .init(
            short: self.localized("mile_per_uk_gallon"),
            full: self.localized("mile_per_uk_gallon_full")
        )
    }

    enum E: Error {
        case unsupportedLanguage(language: String, supported: [String]?)
    }

    private let bundle: Bundle

    init(language: String) throws {
        let main = Bundle(for: UnitsLocalizator.self)

        let localizable = main.path(forResource: "Localizable", ofType: "bundle")
        .flatMap { Bundle(path: $0) }

        let bundle = localizable?.path(forResource: language, ofType: "lproj")
        .flatMap { Bundle(path: $0) }

        guard let _bundle = bundle else {
            throw E.unsupportedLanguage(language: language, supported: localizable?.localizations)
        }

        self.bundle = _bundle
    }

    private func localized(_ key: String) -> String {
        return self.bundle.localizedString(forKey: key, value: nil, table: nil)
    }
}
