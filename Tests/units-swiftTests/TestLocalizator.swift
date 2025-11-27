//
//  TestLocalizator.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/8/19.
//

import Foundation
@testable import units_swift

struct TestLocalizator: Localizator {

    // MARK: Area
    var ha: Localization { return .init(short: "", full: "") }
    var acre: Localization { return .init(short: "", full: "") }
    var decare: Localization { return .init(short: "", full: "") }
    var feddan: Localization { return .init(short: "", full: "") }

    // MARK: Length
    var `in`: Localization { return .init(short: "", full: "") }
    var ft: Localization { return .init(short: "", full: "") }
    var mile: Localization { return .init(short: "", full: "") }
    var mm: Localization { return .init(short: "", full: "") }
    var cm: Localization { return .init(short: "", full: "") }
    var m: Localization { return .init(short: "", full: "") }
    var km: Localization { return .init(short: "", full: "") }

    // MARK: Weight
    var pound: Localization { return .init(short: "", full: "") }
    var kg: Localization { return .init(short: "", full: "") }
    var centner: Localization { return .init(short: "", full: "") }
    var ton: Localization { return .init(short: "", full: "") }

    // MARK: Liquids
    var pint: Localization { return .init(short: "", full: "") }
    var liter: Localization { return .init(short: "", full: "") }
    var bushel: Localization { return .init(short: "", full: "") }
    var quart: Localization { return .init(short: "", full: "") }
    var americanGallon: Localization { return .init(short: "", full: "") }
    var britishGallon: Localization { return .init(short: "", full: "") }

    // MARK: Temperature
    var celsius: Localization { return .init(short: "", full: "") }
    var fahrenheit: Localization { return .init(short: "", full: "") }

    // MARK: Productivity
    var bushelPerAcre: Localization { return .init(short: "", full: "") }
    var usTonPerAcre: Localization { return .init(short: "", full: "") }
    var tonPerHa: Localization { return .init(short: "", full: "") }
    var centnerPerHa: Localization { return .init(short: "", full: "") }
    var kgPerDecare: Localization { return .init(short: "", full: "") }

    // MARK: Speed
    var mPerSec: Localization { return .init(short: "", full: "") }
    var milePerHour: Localization { return .init(short: "", full: "") }
    var kmPerHour: Localization { return .init(short: "", full: "") }

    // MARK: FuelConsumption
    var americanPintPerAcre: Localization { return .init(short: "", full: "") }
    var americanQuart: Localization { return .init(short: "", full: "") }
    var literPerHa: Localization { return .init(short: "", full: "") }
    var americanGallonPerAcre: Localization { .init(short: "", full: "") }

    var milePerUsGallon: Localization { return .init(short: "", full: "") }
    var kmPerLiter: Localization { return .init(short: "", full: "") }
    var literPer100km: Localization { return .init(short: "", full: "") }
    var milePerUkGallon: Localization { return .init(short: "", full: "") }
}
