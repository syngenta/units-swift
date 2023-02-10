//
//  Units.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct Units {

    public let localizator: Localizator
    public let area: Area
    public let depth: Depth
    public let fuelConsumption: FuelConsumption
    public let length: Length
    public let machineryWeight: MachineryWeight
    public let plantSpacing: PlantSpacing
    public let precipitationLevel: PrecipitationLevel
    public let productivity: Productivity
    public let rowSpacing: RowSpacing
    public let shortLength: ShortLength
    public let speed: Speed
    public let tankVolume: TankVolume
    public let temperature: Temperature
    public let volume: Volume
    public let waterRate: WaterRate
    public let weight: Weight
    public let yieldWeight: YieldWeight

    /**
     Initialization of Units struct

     - Parameters:
        - units: If nil — Units will be created with default units
        - language: Supported languages — "de", "en", "uk", "es", "et", "hu", "pl", "ru", "pt"

     - Throws:
        - `UnitsError.notFound` — if `units` not contains needed types
        - `UnitsError.unsupported` — if `units` conteins unsapported unit type
        - `UnitsError.localization` — if `language` not one of this "de", "en", "uk", "es", "et", "hu", "pl", "ru", "pt"
     */
    public init(units: [String: String]?, language: String) throws {
        do {
            let localizator = try UnitsLocalizator(language: language)
            try self.init(units: units, localizator: localizator)
        } catch let error as UnitsLocalizator.E {
            throw UnitsError.localization(error: error)
        } catch let error {
            throw error
        }
    }

    private init(units: [String: String]? = nil, localizator: Localizator) throws {
        self.localizator = localizator

        if let units = units {
            self.area = try .from(units: units, localizator: localizator)
            self.depth = try .from(units: units, localizator: localizator)
            self.fuelConsumption = try .from(units: units, localizator: localizator)
            self.length = try .from(units: units, localizator: localizator)
            self.machineryWeight = try .from(units: units, localizator: localizator)
            self.plantSpacing = try .from(units: units, localizator: localizator)
            self.precipitationLevel = try .from(units: units, localizator: localizator)
            self.productivity = try .from(units: units, localizator: localizator)
            self.rowSpacing = try .from(units: units, localizator: localizator)
            self.shortLength = try .from(units: units, localizator: localizator)
            self.speed = try .from(units: units, localizator: localizator)
            self.tankVolume = try .from(units: units, localizator: localizator)
            self.temperature = try .from(units: units, localizator: localizator)
            self.volume = try .from(units: units, localizator: localizator)
            self.waterRate = try .from(units: units, localizator: localizator)
            self.weight = try .from(units: units, localizator: localizator)
            self.yieldWeight = try .from(units: units, localizator: localizator)
        } else {
            self.area = .from(.ha, localizator: localizator)
            self.depth = .from(.cm, localizator: localizator)
            self.fuelConsumption = .from(.literPer100km, localizator: localizator)
            self.length = .from(.km, localizator: localizator)
            self.machineryWeight = .from(.kg, localizator: localizator)
            self.plantSpacing = .from(.m, localizator: localizator)
            self.precipitationLevel = .from(.mm, localizator: localizator)
            self.productivity = .from(.centnerPerHa, localizator: localizator)
            self.rowSpacing = .from(.m, localizator: localizator)
            self.shortLength = .from(.m, localizator: localizator)
            self.speed = .from(.mPerSec, localizator: localizator)
            self.tankVolume = .from(.liter, localizator: localizator)
            self.temperature = .from(.celsius, localizator: localizator)
            self.volume = .from(.liter, localizator: localizator)
            self.waterRate = .from(.literPerHa, localizator: localizator)
            self.weight = .from(.centner, localizator: localizator)
            self.yieldWeight = .from(.centner, localizator: localizator)
        }
    }

    /**
     Default units

     - Parameters:
        - language: Supported languages — "de", "en", "uk", "es", "et", "hu", "pl", "ru", "pt"

     - Throws:
        - `UnitsError.localization` — if `language` not one of this "de", "en", "uk", "es", "et", "hu", "pl", "ru", "pt"
     */
    public static func `default`(language: String) throws -> Units {
        do {
            let localizator = try UnitsLocalizator(language: language)
            return try Units(localizator: localizator)
        } catch let error {
            throw UnitsError.localization(error: error)
        }
    }

    /**
     Give abbility to update current units without updating language

     - Parameters:
        - units: Units table from cropio api

     - Throws:
        - `UnitsError.notFound` — if `units` not contains needed types
        - `UnitsError.unsupported` — if `units` conteins unsapported unit type
     */
    public mutating func update(units: [String: String]) throws {
        let localizator = self.localizator
        self = try Units(units: units, localizator: localizator)
    }

    /**
     Give abbility to update current units and language

     - Parameters:
        - units: Units table from cropio api
        - language: Supported languages — "de", "en", "uk", "es", "et", "hu", "pl", "ru", "pt"

     - Throws:
        - `UnitsError.notFound` — if `units` not contains needed types
        - `UnitsError.unsupported` — if `units` conteins unsapported unit type
        - `UnitsError.localization` — if `language` not one of this "de", "en", "uk", "es", "et", "hu", "pl", "ru", "pt"
     */
    public mutating func update(units: [String: String], language: String) throws {
        self = try Units(units: units, language: language)
    }
}
