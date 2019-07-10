//
//  LocalizatorTests.swift
//  units-swiftTests
//
//  Created by Evegeny Kalashnikov on 7/8/19.
//

import XCTest
@testable import units_swift

class LocalizatorTests: XCTestCase {

    func testLocalizatorDE() {
        do {
            let localizator = try UnitsLocalizator(language: "de")
            XCTAssertEqual(localizator.ha.short, "Hektar")
            XCTAssertEqual(localizator.ha.full, "Hektar")
            XCTAssertEqual(localizator.acre.short, "Acre")
            XCTAssertEqual(localizator.acre.full, "Acre")

            XCTAssertEqual(localizator.in.short, "in")
            XCTAssertEqual(localizator.in.full, "Daumen")
            XCTAssertEqual(localizator.ft.short, "ft")
            XCTAssertEqual(localizator.ft.full, "Fuß")
            XCTAssertEqual(localizator.mile.short, "Meilen")
            XCTAssertEqual(localizator.mile.full, "Meile")
            XCTAssertEqual(localizator.mm.short, "Millimeter")
            XCTAssertEqual(localizator.mm.full, "Millimeter")
            XCTAssertEqual(localizator.cm.short, "Zentimeter")
            XCTAssertEqual(localizator.cm.full, "Zentimeter")
            XCTAssertEqual(localizator.m.short, "m")
            XCTAssertEqual(localizator.m.full, "Meter")
            XCTAssertEqual(localizator.km.short, "km")
            XCTAssertEqual(localizator.km.full, "Kilometer")

            XCTAssertEqual(localizator.pound.short, "Pfunde")
            XCTAssertEqual(localizator.pound.full, "Pfund")
            XCTAssertEqual(localizator.kg.short, "kg")
            XCTAssertEqual(localizator.kg.full, "Kilogramm")
            XCTAssertEqual(localizator.centner.short, "Zentner")
            XCTAssertEqual(localizator.centner.full, "Zentner")
            XCTAssertEqual(localizator.ton.short, "t")
            XCTAssertEqual(localizator.ton.full, "Tonne")

            XCTAssertEqual(localizator.pint.short, "pints")
            XCTAssertEqual(localizator.pint.full, "Pint")
            XCTAssertEqual(localizator.liter.short, "l")
            XCTAssertEqual(localizator.liter.full, "Liter")
            XCTAssertEqual(localizator.bushel.short, "bu")
            XCTAssertEqual(localizator.bushel.full, "Buschel")
            XCTAssertEqual(localizator.quart.short, "quart")
            XCTAssertEqual(localizator.quart.full, "Quart")
            XCTAssertEqual(localizator.americanGallon.short, "gal")
            XCTAssertEqual(localizator.americanGallon.full, "US gallon")
            XCTAssertEqual(localizator.britishGallon.short, "gal")
            XCTAssertEqual(localizator.britishGallon.full, "Britische Gallone")

            XCTAssertEqual(localizator.celsius.short, "°C")
            XCTAssertEqual(localizator.celsius.full, "Grad Celsius")
            XCTAssertEqual(localizator.fahrenheit.short, "°F")
            XCTAssertEqual(localizator.fahrenheit.full, "Grad Fahrenheit")

            XCTAssertEqual(localizator.bushelPerAcre.short, "bu/acre")
            XCTAssertEqual(localizator.bushelPerAcre.full, "Buschel pro Acre")
            XCTAssertEqual(localizator.usTonPerAcre.short, "t/acre")
            XCTAssertEqual(localizator.usTonPerAcre.full, "Amerikanische Tonne pro Acre")
            XCTAssertEqual(localizator.tonPerHa.short, "t/ha")
            XCTAssertEqual(localizator.tonPerHa.full, "Tonne pro Hektar")
            XCTAssertEqual(localizator.centnerPerHa.short, "c/ha")
            XCTAssertEqual(localizator.centnerPerHa.full, "Zentner pro Hektar")

            XCTAssertEqual(localizator.mPerSec.short, "m/s")
            XCTAssertEqual(localizator.mPerSec.full, "Meter pro Sekunde")
            XCTAssertEqual(localizator.milePerHour.short, "Meilen/Stunde")
            XCTAssertEqual(localizator.milePerHour.full, "Meilen pro Stunde")
            XCTAssertEqual(localizator.kmPerHour.short, "Stundenkilometer")
            XCTAssertEqual(localizator.kmPerHour.full, "Kilometer je Stunde")

            XCTAssertEqual(localizator.americanPintPerAcre.short, "pints/acre")
            XCTAssertEqual(localizator.americanPintPerAcre.full, "US Pint pro Acre")
            XCTAssertEqual(localizator.americanQuart.short, "quarts/acre")
            XCTAssertEqual(localizator.americanQuart.full, "US Quart pro Acre")
            XCTAssertEqual(localizator.literPerHa.short, "l/ha")
            XCTAssertEqual(localizator.literPerHa.full, "Liter pro Hektar")

            XCTAssertEqual(localizator.milePerUsGallon.short, "mpg")
            XCTAssertEqual(localizator.milePerUsGallon.full, "Meile pro US-Gallone")
            XCTAssertEqual(localizator.kmPerLiter.short, "km/l")
            XCTAssertEqual(localizator.kmPerLiter.full, "Kilometer pro Liter")
            XCTAssertEqual(localizator.literPer100km.short, "l/100km")
            XCTAssertEqual(localizator.literPer100km.full, "Liter pro 100 km")
            XCTAssertEqual(localizator.milePerUkGallon.short, "mpg")
            XCTAssertEqual(localizator.milePerUkGallon.full, "Meile pro britische Gallone")

        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    func testLocalizatorEN() {
        do {
            let localizator = try UnitsLocalizator(language: "en")

            XCTAssertEqual(localizator.in.short, "in")
            XCTAssertEqual(localizator.in.full, "Inch")
            XCTAssertEqual(localizator.ft.short, "ft")
            XCTAssertEqual(localizator.ft.full, "Foot")
            XCTAssertEqual(localizator.mile.short, "mi")
            XCTAssertEqual(localizator.mile.full, "Mile")
            XCTAssertEqual(localizator.mm.short, "mm")
            XCTAssertEqual(localizator.mm.full, "Millimeter")
            XCTAssertEqual(localizator.cm.short, "cm")
            XCTAssertEqual(localizator.cm.full, "Centimeter")
            XCTAssertEqual(localizator.m.short, "m")
            XCTAssertEqual(localizator.m.full, "Meter")
            XCTAssertEqual(localizator.km.short, "km")
            XCTAssertEqual(localizator.km.full, "Kilometer")

        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    func testLocalizatorES() {
        do {
            let localizator = try UnitsLocalizator(language: "es")

            XCTAssertEqual(localizator.in.short, "en")
            XCTAssertEqual(localizator.in.full, "Pulgada")
            XCTAssertEqual(localizator.ft.short, "pie")
            XCTAssertEqual(localizator.ft.full, "Foot")
            XCTAssertEqual(localizator.mile.short, "mi")
            XCTAssertEqual(localizator.mile.full, "Mile")
            XCTAssertEqual(localizator.mm.short, "mm")
            XCTAssertEqual(localizator.mm.full, "Milimetro")
            XCTAssertEqual(localizator.cm.short, "cm")
            XCTAssertEqual(localizator.cm.full, "Centímetro")
            XCTAssertEqual(localizator.m.short, "m")
            XCTAssertEqual(localizator.m.full, "Metro")
            XCTAssertEqual(localizator.km.short, "km")
            XCTAssertEqual(localizator.km.full, "Kilometer")

        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    func testLocalizatorHU() {
        do {
            let localizator = try UnitsLocalizator(language: "hu")

            XCTAssertEqual(localizator.in.short, "in")
            XCTAssertEqual(localizator.in.full, "Inch")
            XCTAssertEqual(localizator.ft.short, "ft")
            XCTAssertEqual(localizator.ft.full, "láb")
            XCTAssertEqual(localizator.mile.short, "mi")
            XCTAssertEqual(localizator.mile.full, "Mérföld")
            XCTAssertEqual(localizator.mm.short, "mm")
            XCTAssertEqual(localizator.mm.full, "Milliméter")
            XCTAssertEqual(localizator.cm.short, "cm")
            XCTAssertEqual(localizator.cm.full, "Centiméter")
            XCTAssertEqual(localizator.m.short, "m")
            XCTAssertEqual(localizator.m.full, "Méter")
            XCTAssertEqual(localizator.km.short, "km")
            XCTAssertEqual(localizator.km.full, "Kilométer")

        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    func testLocalizatorPT() {
        do {
            let localizator = try UnitsLocalizator(language: "pt")

            XCTAssertEqual(localizator.in.short, "polegadas")
            XCTAssertEqual(localizator.in.full, "Polegada")
            XCTAssertEqual(localizator.ft.short, "pés")
            XCTAssertEqual(localizator.ft.full, "Pés")
            XCTAssertEqual(localizator.mile.short, "milhas")
            XCTAssertEqual(localizator.mile.full, "Milha")
            XCTAssertEqual(localizator.mm.short, "mm")
            XCTAssertEqual(localizator.mm.full, "Milímetro")
            XCTAssertEqual(localizator.cm.short, "cm")
            XCTAssertEqual(localizator.cm.full, "Centímetro")
            XCTAssertEqual(localizator.m.short, "m")
            XCTAssertEqual(localizator.m.full, "Metro")
            XCTAssertEqual(localizator.km.short, "km")
            XCTAssertEqual(localizator.km.full, "Quilômetro")

        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    func testLocalizatorRU() {
        do {
            let localizator = try UnitsLocalizator(language: "ru")

            XCTAssertEqual(localizator.in.short, "in")
            XCTAssertEqual(localizator.in.full, "Дюйм")
            XCTAssertEqual(localizator.ft.short, "ft")
            XCTAssertEqual(localizator.ft.full, "Фут")
            XCTAssertEqual(localizator.mile.short, "миль")
            XCTAssertEqual(localizator.mile.full, "Миля")
            XCTAssertEqual(localizator.mm.short, "мм")
            XCTAssertEqual(localizator.mm.full, "Миллиметр")
            XCTAssertEqual(localizator.cm.short, "см")
            XCTAssertEqual(localizator.cm.full, "Сантиметр")
            XCTAssertEqual(localizator.m.short, "м")
            XCTAssertEqual(localizator.m.full, "Метр")
            XCTAssertEqual(localizator.km.short, "км")
            XCTAssertEqual(localizator.km.full, "Километр")

        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    func testLocalizatorUK() {
        do {
            let localizator = try UnitsLocalizator(language: "uk")

            XCTAssertEqual(localizator.in.short, "in")
            XCTAssertEqual(localizator.in.full, "Дюйм")
            XCTAssertEqual(localizator.ft.short, "ft")
            XCTAssertEqual(localizator.ft.full, "Фут")
            XCTAssertEqual(localizator.mile.short, "миль")
            XCTAssertEqual(localizator.mile.full, "Миля")
            XCTAssertEqual(localizator.mm.short, "мм")
            XCTAssertEqual(localizator.mm.full, "Міліметр")
            XCTAssertEqual(localizator.cm.short, "см")
            XCTAssertEqual(localizator.cm.full, "Сантиметр")
            XCTAssertEqual(localizator.m.short, "м")
            XCTAssertEqual(localizator.m.full, "Метр")
            XCTAssertEqual(localizator.km.short, "км")
            XCTAssertEqual(localizator.km.full, "Кілометр")

        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    static var allTests = [
        ("testLocalizatorDE", testLocalizatorDE),
        ("testLocalizatorEN", testLocalizatorEN),
        ("testLocalizatorES", testLocalizatorES),
        ("testLocalizatorHU", testLocalizatorHU),
        ("testLocalizatorPT", testLocalizatorPT),
        ("testLocalizatorRU", testLocalizatorRU),
        ("testLocalizatorUK", testLocalizatorUK)
    ]
}
