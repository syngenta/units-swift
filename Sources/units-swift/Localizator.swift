//
//  Localizator.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/8/19.
//

import Foundation

public protocol Localizator {
    // MARK: Area
    var ha: Localization { get }
    var acre: Localization { get }
    var decare: Localization { get }
    var feddan: Localization { get }

    // MARK: Length
    var `in`: Localization { get }
    var ft: Localization { get }
    var mile: Localization { get }
    var mm: Localization { get }
    var cm: Localization { get }
    var m: Localization { get }
    var km: Localization { get }

    // MARK: Weight
    var pound: Localization { get }
    var kg: Localization { get }
    var centner: Localization { get }
    var ton: Localization { get }

    // MARK: Liquids
    var pint: Localization { get }
    var liter: Localization { get }
    var bushel: Localization { get }
    var quart: Localization { get }
    var americanGallon: Localization { get }
    var britishGallon: Localization { get }

    // MARK: Temperature
    var celsius: Localization { get }
    var fahrenheit: Localization { get }

    // MARK: Productivity
    var bushelPerAcre: Localization { get }
    var usTonPerAcre: Localization { get }
    var tonPerHa: Localization { get }
    var centnerPerHa: Localization { get }
    var kgPerDecare: Localization { get }

    // MARK: Speed
    var mPerSec: Localization { get }
    var milePerHour: Localization { get }
    var kmPerHour: Localization { get }

    // MARK: FuelConsumption
    var americanPintPerAcre: Localization { get }
    var americanQuart: Localization { get }
    var literPerHa: Localization { get }
    var fluidOuncePerAcre: Localization { get }

    var milePerUsGallon: Localization { get }
    var kmPerLiter: Localization { get }
    var literPer100km: Localization { get }
    var milePerUkGallon: Localization { get }
    var americanGallonPerAcre: Localization { get }
}
