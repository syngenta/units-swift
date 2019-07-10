//
//  Units.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public struct Units {

    private var localizator: Localizator
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

    public init(units: [String: String], language: String) throws {
        do {
            let localizator = try UnitsLocalizator(language: language)
            try self.init(units: units, localizator: localizator)
        } catch let error as UnitsLocalizator.E {
            throw UnitsError.localization(error: error)
        } catch let error {
            throw error
        }
    }

    private init(units: [String: String], localizator: Localizator) throws {
        self.localizator = localizator
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
    }

    private init(language: String) throws {
        do {
            let localizator = try UnitsLocalizator(language: language)

            self.localizator = localizator
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

        } catch let error {
            throw UnitsError.localization(error: error)
        }
    }

    public static func `default`(language: String) throws -> Units {
        return try Units(language: language)
    }

    mutating func update(units: [String: String]) throws {
        let localizator = self.localizator
        self = try Units(units: units, localizator: localizator)
    }

    mutating func update(units: [String: String], language: String) throws {
        self = try Units(units: units, language: language)
    }
}
