//
//  UnitTypeTests.swift
//  units-swiftTests
//
//  Created by Evegeny Kalashnikov on 7/9/19.
//

import XCTest
@testable import units_swift

class UnitTypeTests: XCTestCase {

    func testFromError() {
        let localizator = TestLocalizator()
        do {
            let area = try Area.from("mm", localizator: localizator)
            XCTFail("area - \(area)")
        } catch let error {
            XCTAssertEqual("\(error)", "unsupported(unit: \"mm\", type: \"area\")")
        }

        do {
            let area = try Area.from(units: ["are" : "cm"], localizator: localizator)
            XCTFail("area - \(area)")
        } catch let error {
            XCTAssertEqual("\(error)", "notFound(type: \"area\", inTable: [\"are\": \"cm\"])")
        }
    }

    func testUnits() {
        let table = [
            "length": "mile",
            "area": "acre",
            "weight": "tonn",
            "machinery_weight": "pound",
            "volume": "pint",
            "tank_volume": "american_gallon",
            "productivity": "tonn_per_ha",
            "speed": "mile_per_hour",
            "temperature": "fahrenheit",
            "precipitation_level": "in",
            "water_rate": "american_quart",
            "fuel_consumption": "mile_per_uk_gallon",
            "short_length": "ft",
            "depth": "in",
            "row_spacing": "cm",
            "plant_spacing": "m"
        ]

        do {
            let units = try Units(units: table, language: "es")

            XCTAssertEqual(units.area.from(242), 597.74)
            XCTAssertEqual(units.area.to(597.74), 241.99999999999997)
            XCTAssertEqual(units.area.localization.short, "acre")

            XCTAssertEqual(units.depth.from(5129), 2019.291336523)
            XCTAssertEqual(units.depth.to(2019.291336523), 5129)
            XCTAssertEqual(units.depth.localization.short, "en")

            XCTAssertEqual(units.fuelConsumption.from(972), 0.29061824691358024)
            XCTAssertEqual(units.fuelConsumption.to(0.29061824691358024), 972)
            XCTAssertEqual(units.fuelConsumption.localization.short, "mpg")

            XCTAssertEqual(units.length.from(671), 416.940069832)
            XCTAssertEqual(units.length.to(416.940069832), 671)
            XCTAssertEqual(units.length.localization.short, "mi")

            XCTAssertEqual(units.machineryWeight.from(9075), 20006.9502765)
            XCTAssertEqual(units.machineryWeight.to(20006.9502765), 9075)
            XCTAssertEqual(units.machineryWeight.localization.short, "pound")

            XCTAssertEqual(units.plantSpacing.from(27), 27.0)
            XCTAssertEqual(units.plantSpacing.to(27), 27)
            XCTAssertEqual(units.plantSpacing.localization.short, "m")

            XCTAssertEqual(units.precipitationLevel.from(897152), 35320.944845862396)
            XCTAssertEqual(units.precipitationLevel.to(35320.944845862396), 897151.9999999999)
            XCTAssertEqual(units.precipitationLevel.localization.short, "en")

            XCTAssertEqual(units.productivity.from(6189, crop: ""), 618.9000000000001)
            XCTAssertEqual(units.productivity.to(618.9000000000001, crop: ""), 6189.000000000001)
            XCTAssertEqual(units.productivity.localization.short, "t/ha")

            XCTAssertEqual(units.rowSpacing.from(082), 8200.0)
            XCTAssertEqual(units.rowSpacing.to(8200.0), 082)
            XCTAssertEqual(units.rowSpacing.localization.short, "cm")

            XCTAssertEqual(units.shortLength.from(65442), 214704.7247358)
            XCTAssertEqual(units.shortLength.to(214704.7247358), 65442)
            XCTAssertEqual(units.shortLength.localization.short, "pie")

            XCTAssertEqual(units.speed.from(978), 2187.723693629203)
            XCTAssertEqual(units.speed.to(2187.723693629203), 978)
            XCTAssertEqual(units.speed.localization.short, "mph")

            XCTAssertEqual(units.tankVolume.from(762), 198.12)
            XCTAssertEqual(units.tankVolume.to(198.12), 762)
            XCTAssertEqual(units.tankVolume.localization.short, "gal")

            XCTAssertEqual(units.temperature.from(2143), 3889.4)
            XCTAssertEqual(units.temperature.to(3889.4), 2143)
            XCTAssertEqual(units.temperature.localization.short, "°F")

            XCTAssertEqual(units.volume.from(542), 1145.45001964)
            XCTAssertEqual(units.volume.to(1145.45001964), 542)
            XCTAssertEqual(units.volume.localization.short, "Pinta")

            XCTAssertEqual(units.waterRate.from(865), 369.89696315500004)
            XCTAssertEqual(units.waterRate.to(369.89696315500004), 865)
            XCTAssertEqual(units.waterRate.localization.short, "Cuarto/acre")

            XCTAssertEqual(units.weight.from(8712), 8712.0)
            XCTAssertEqual(units.weight.to(871.2), 871.2)
            XCTAssertEqual(units.weight.localization.short, "t")

            XCTAssertEqual(units.yieldWeight.from(8712), 871.2)
            XCTAssertEqual(units.yieldWeight.to(871.2), 8712)
            XCTAssertEqual(units.yieldWeight.localization.short, "t")

        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    func testDefaultUnits() {
        do {
            let units = try Units.default(language: "ru")

            XCTAssertEqual(units.area.from(242), 242)
            XCTAssertEqual(units.area.to(597.74), 597.74)
            XCTAssertEqual(units.area.localization.short, "га")

            XCTAssertEqual(units.depth.from(5129), 5129)
            XCTAssertEqual(units.depth.to(2019.291336523), 2019.291336523)
            XCTAssertEqual(units.depth.localization.short, "см")

            XCTAssertEqual(units.fuelConsumption.from(972), 972)
            XCTAssertEqual(units.fuelConsumption.to(0.29061824691358024), 0.29061824691358024)
            XCTAssertEqual(units.fuelConsumption.localization.short, "л/100км")

            XCTAssertEqual(units.length.from(671), 671)
            XCTAssertEqual(units.length.to(416.940069832), 416.940069832)
            XCTAssertEqual(units.length.localization.short, "км")

            XCTAssertEqual(units.machineryWeight.from(9075), 9075)
            XCTAssertEqual(units.machineryWeight.to(20006.9502765), 20006.9502765)
            XCTAssertEqual(units.machineryWeight.localization.short, "кг")

            XCTAssertEqual(units.plantSpacing.from(27), 27)
            XCTAssertEqual(units.plantSpacing.to(27), 27)
            XCTAssertEqual(units.plantSpacing.localization.short, "м")

            XCTAssertEqual(units.precipitationLevel.from(897152), 897152)
            XCTAssertEqual(units.precipitationLevel.to(35320.944845862396), 35320.944845862396)
            XCTAssertEqual(units.precipitationLevel.localization.short, "мм")

            XCTAssertEqual(units.productivity.from(6189, crop: ""), 6189)
            XCTAssertEqual(units.productivity.to(618.9, crop: ""), 618.9)
            XCTAssertEqual(units.productivity.localization.short, "ц/га")

            XCTAssertEqual(units.rowSpacing.from(082), 082)
            XCTAssertEqual(units.rowSpacing.to(8200.0), 8200.0)
            XCTAssertEqual(units.rowSpacing.localization.short, "м")

            XCTAssertEqual(units.shortLength.from(65442), 65442)
            XCTAssertEqual(units.shortLength.to(214704.7247358), 214704.7247358)
            XCTAssertEqual(units.shortLength.localization.short, "м")

            XCTAssertEqual(units.speed.from(978), 978)
            XCTAssertEqual(units.speed.to(2187.723693629203), 2187.723693629203)
            XCTAssertEqual(units.speed.localization.short, "м/с")

            XCTAssertEqual(units.tankVolume.from(762), 762)
            XCTAssertEqual(units.tankVolume.to(198.12), 198.12)
            XCTAssertEqual(units.tankVolume.localization.short, "л")

            XCTAssertEqual(units.temperature.from(2143), 2143)
            XCTAssertEqual(units.temperature.to(3889.4), 3889.4)
            XCTAssertEqual(units.temperature.localization.short, "°C")

            XCTAssertEqual(units.volume.from(542), 542)
            XCTAssertEqual(units.volume.to(1145.45001964), 1145.45001964)
            XCTAssertEqual(units.volume.localization.short, "л")

            XCTAssertEqual(units.waterRate.from(865), 865)
            XCTAssertEqual(units.waterRate.to(369.89696315500004), 369.89696315500004)
            XCTAssertEqual(units.waterRate.localization.short, "л/га")

            XCTAssertEqual(units.weight.from(8712), 87120.0)
            XCTAssertEqual(units.weight.to(871.2), 87.12)
            XCTAssertEqual(units.weight.localization.short, "ц")

            XCTAssertEqual(units.yieldWeight.from(8712), 8712)
            XCTAssertEqual(units.yieldWeight.to(871.2), 871.2)
            XCTAssertEqual(units.yieldWeight.localization.short, "ц")

        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    func testDefaultUnitsError() {
        do {
            let units = try Units.default(language: "ro")
            XCTFail("units - \(units)")
        } catch let error {
            XCTAssertEqual("\(error)", "localization(error: units_swift.UnitsLocalizator.E.unsupportedLanguage(language: \"ro\", supported: Optional([\"de\", \"en\", \"uk\", \"es\", \"et\", \"hu\", \"pl\", \"ru\", \"pt\"])))")
        }
    }

    func testUnitsError() {
        do {
            let units = try Units(units: [:], language: "ru")
            XCTFail("units - \(units)")
        } catch let error {
            XCTAssertEqual("\(error)", "notFound(type: \"area\", inTable: [:])")
        }

        do {
            let units = try Units(units: [:], language: "ro")
            XCTFail("units - \(units)")
        } catch let error {
            XCTAssertEqual("\(error)", "localization(error: units_swift.UnitsLocalizator.E.unsupportedLanguage(language: \"ro\", supported: Optional([\"de\", \"en\", \"uk\", \"es\", \"et\", \"hu\", \"pl\", \"ru\", \"pt\"])))")
        }
    }

    func testUpdateUnits() {
        do {
            var units = try Units.default(language: "ru")

            XCTAssertEqual(units.area.from(242), 242)
            XCTAssertEqual(units.area.to(597.74), 597.74)
            XCTAssertEqual(units.area.localization.short, "га")

            let table = [
                "length": "mile",
                "area": "acre",
                "weight": "tonn",
                "machinery_weight": "pound",
                "volume": "pint",
                "tank_volume": "american_gallon",
                "productivity": "tonn_per_ha",
                "speed": "mile_per_hour",
                "temperature": "fahrenheit",
                "precipitation_level": "in",
                "water_rate": "american_quart",
                "fuel_consumption": "mile_per_uk_gallon",
                "short_length": "ft",
                "depth": "in",
                "row_spacing": "cm",
                "plant_spacing": "m"
            ]
            try units.update(units: table)

            XCTAssertEqual(units.area.from(242), 597.74)
            XCTAssertEqual(units.area.to(597.74), 241.99999999999997)
            XCTAssertEqual(units.area.localization.short, "акр")

            try units.update(units: table, language: "en")

            XCTAssertEqual(units.area.from(242), 597.74)
            XCTAssertEqual(units.area.to(597.74), 241.99999999999997)
            XCTAssertEqual(units.area.localization.short, "acre")
        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    func testOptionalExtension() {
        do {
            let units = try Units.default(language: "uk")

            let value: Double? = 10
            XCTAssertEqual(units.area.from(value), 10)
            XCTAssertEqual(units.area.to(value), 10)

            XCTAssertEqual(units.productivity.from(value, crop: ""), 10)
            XCTAssertEqual(units.productivity.to(value, crop: ""), 10)
        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    func testDekareUnits() {
        do {
            var units = try Units.default(language: "uk")
            XCTAssertEqual(units.area.localization.full, "Гектар")

            let table = [
                "length": "mile",
                "area": "decare", // <<<
                "weight": "tonn",
                "machinery_weight": "pound",
                "volume": "pint",
                "tank_volume": "american_gallon",
                "productivity": "kg_per_decare", // <<<
                "speed": "mile_per_hour",
                "temperature": "fahrenheit",
                "precipitation_level": "in",
                "water_rate": "american_quart",
                "fuel_consumption": "mile_per_uk_gallon",
                "short_length": "ft",
                "depth": "in",
                "row_spacing": "cm",
                "plant_spacing": "m"
            ]
            try units.update(units: table)

            XCTAssertEqual(units.area.localization.full, "Декар")
            XCTAssertEqual(units.productivity.localization.full, "Кілограм на декар")
        } catch {
            XCTFail("error - \(error)")
        }
    }

    static var allTests = [
        ("testFromError", testFromError),
        ("testUnits", testUnits),
        ("testDefaultUnits", testDefaultUnits),
        ("testDefaultUnitsError", testDefaultUnitsError),
        ("testUnitsError", testUnitsError),
        ("testOptionalExtension", testOptionalExtension)
    ]
}
