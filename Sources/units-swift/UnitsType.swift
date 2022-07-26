//
//  UnitsType.swift
//  units-swift
//
//  Created by Evegeny Kalashnikov on 7/5/19.
//

import Foundation

public protocol UnitTypeSettings {
    var factor: Double { get }
    static var mappings: [String: Self] { get }
}

public protocol UnitType {
    associatedtype Settings: UnitTypeSettings
    static var code: String { get }
    static func localization(settings: Settings, localizator: Localizator) -> Localization

    var settings: Settings { get }
    var localization: Localization { get }
    init(settings: Settings, localization: Localization)
}

public protocol TransformableUnitType: UnitType {
    func from(_ value: Double) -> Double
    func to(_ value: Double) -> Double
}

extension UnitType {

    static func from(_ settings: Settings, localizator: Localizator) -> Self {
        let localization = self.localization(settings: settings, localizator: localizator)

        return Self(settings: settings, localization: localization)
    }

    static func from(_ unit: String, localizator: Localizator) throws -> Self {
        guard let settings = self.Settings.mappings[unit] else {
            throw UnitsError.unsupported(unit: unit, type: self.code)
        }
        return self.from(settings, localizator: localizator)
    }

    static func from(units: [String: String], localizator: Localizator) throws -> Self {
        guard let unit = units[self.code] else {
            throw UnitsError.notFound(type: self.code, inTable: units)
        }
        return try self.from(unit, localizator: localizator)
    }
}

// Default converter. (Temperature, FuelConsumption, Productivity use custom)
public extension TransformableUnitType {

    func from(_ value: Double) -> Double {
        value * self.settings.factor
    }

    func to(_ value: Double) -> Double {
        value / self.settings.factor
    }
}

// Extension for optional values
public extension TransformableUnitType {

    func from(_ value: Double?) -> Double? {
        value.map { self.from($0) }
    }

    func to(_ value: Double?) -> Double? {
        value.map { self.to($0) }
    }
}
