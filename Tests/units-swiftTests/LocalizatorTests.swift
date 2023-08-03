//
//  LocalizatorTests.swift
//  units-swiftTests
//
//  Created by Evegeny Kalashnikov on 7/8/19.
//

import XCTest
@testable import units_swift

class LocalizatorTests: XCTestCase {

    // If failed — no key in Localizable.strings. Skip some keys because key equal to come value
    func checkAllLocalizations(language: String) throws {
        let localizator = try UnitsLocalizator(language: language)
        XCTAssertNotEqual(localizator.ha.full, "ha_full")
        XCTAssertNotEqual(localizator.acre.full, "acre_full")
        XCTAssertNotEqual(localizator.decare.short, "decare")
        XCTAssertNotEqual(localizator.decare.full, "decare_full")

        XCTAssertNotEqual(localizator.in.full, "in_full")
        XCTAssertNotEqual(localizator.ft.full, "ft_full")
        XCTAssertNotEqual(localizator.mile.full, "mile_full")
        XCTAssertNotEqual(localizator.mm.full, "mm_full")
        XCTAssertNotEqual(localizator.cm.full, "cm_full")
        XCTAssertNotEqual(localizator.m.full, "m_full")
        XCTAssertNotEqual(localizator.km.full, "km_full")

        XCTAssertNotEqual(localizator.kg.full, "kg_full")
        XCTAssertNotEqual(localizator.pound.full, "pound_full")
        XCTAssertNotEqual(localizator.centner.full, "centner_full")
        XCTAssertNotEqual(localizator.ton.short, "ton")
        XCTAssertNotEqual(localizator.ton.full, "ton_full")

        XCTAssertNotEqual(localizator.pint.full, "pint_full")
        XCTAssertNotEqual(localizator.quart.full, "quart_full")
        XCTAssertNotEqual(localizator.liter.short, "liter")
        XCTAssertNotEqual(localizator.liter.full, "liter_full")
        XCTAssertNotEqual(localizator.britishGallon.short, "british_gallon")
        XCTAssertNotEqual(localizator.britishGallon.full, "british_gallon_full")
        XCTAssertNotEqual(localizator.americanGallon.short, "american_gallon")
        XCTAssertNotEqual(localizator.americanGallon.full, "american_gallon_full")
        XCTAssertNotEqual(localizator.bushel.short, "bushel")
        XCTAssertNotEqual(localizator.bushel.full, "bushel_full")

        XCTAssertNotEqual(localizator.celsius.short, "celsius")
        XCTAssertNotEqual(localizator.celsius.full, "celsius_full")
        XCTAssertNotEqual(localizator.fahrenheit.short, "fahrenheit")
        XCTAssertNotEqual(localizator.fahrenheit.full, "fahrenheit_full")

        XCTAssertNotEqual(localizator.bushelPerAcre.short, "bushel_per_acre")
        XCTAssertNotEqual(localizator.bushelPerAcre.full, "bushel_per_acre_full")
        XCTAssertNotEqual(localizator.tonPerHa.short, "ton_per_ha")
        XCTAssertNotEqual(localizator.tonPerHa.full, "ton_per_ha_full")
        XCTAssertNotEqual(localizator.centnerPerHa.short, "centner_per_ha")
        XCTAssertNotEqual(localizator.centnerPerHa.full, "centner_per_ha_full")
        XCTAssertNotEqual(localizator.usTonPerAcre.short, "us_ton_per_acre")
        XCTAssertNotEqual(localizator.usTonPerAcre.full, "us_ton_per_acre_full")
        XCTAssertNotEqual(localizator.kgPerDecare.short, "kg_per_decare")
        XCTAssertNotEqual(localizator.kgPerDecare.full, "kg_per_decare_full")

        XCTAssertNotEqual(localizator.mPerSec.short, "m_per_sec")
        XCTAssertNotEqual(localizator.mPerSec.full, "m_per_sec_full")
        XCTAssertNotEqual(localizator.milePerHour.short, "mile_per_hour")
        XCTAssertNotEqual(localizator.milePerHour.full, "mile_per_hour_full")
        XCTAssertNotEqual(localizator.kmPerHour.short, "km_per_hour")
        XCTAssertNotEqual(localizator.kmPerHour.full, "km_per_hour_full")

        XCTAssertNotEqual(localizator.literPerHa.short, "liter_per_ha")
        XCTAssertNotEqual(localizator.literPerHa.full, "liter_per_ha_full")
        XCTAssertNotEqual(localizator.americanPintPerAcre.short, "american_pint_per_acre")
        XCTAssertNotEqual(localizator.americanPintPerAcre.full, "american_pint_per_acre_full")
        XCTAssertNotEqual(localizator.americanQuart.short, "american_quart")
        XCTAssertNotEqual(localizator.americanQuart.full, "american_quart_full")
        XCTAssertNotEqual(localizator.literPer100km.short, "liter_per_100km")
        XCTAssertNotEqual(localizator.literPer100km.full, "liter_per_100km_full")
        XCTAssertNotEqual(localizator.kmPerLiter.short, "km_per_liter")
        XCTAssertNotEqual(localizator.kmPerLiter.full, "km_per_liter_full")
        XCTAssertNotEqual(localizator.milePerUsGallon.short, "mile_per_us_gallon")
        XCTAssertNotEqual(localizator.milePerUsGallon.full, "mile_per_us_gallon_full")
        XCTAssertNotEqual(localizator.milePerUkGallon.short, "mile_per_uk_gallon")
        XCTAssertNotEqual(localizator.milePerUkGallon.full, "mile_per_uk_gallon_full")
    }

    func testLocalizatorDE() {
        do {
            let localizator = try UnitsLocalizator(language: "de")
            try self.checkAllLocalizations(language: "de")

            XCTAssertEqual(localizator.ha.short, "Hektar")
            XCTAssertEqual(localizator.ha.full, "Hektar")
            XCTAssertEqual(localizator.acre.short, "Acre")
            XCTAssertEqual(localizator.acre.full, "Acre")
            XCTAssertEqual(localizator.decare.short, "daa")
            XCTAssertEqual(localizator.decare.full, "Decare")

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
            try self.checkAllLocalizations(language: "en")

            XCTAssertEqual(localizator.kgPerDecare.short, "kg/daa")
            XCTAssertEqual(localizator.kgPerDecare.full, "Kilogram per decare")
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
            try self.checkAllLocalizations(language: "es")

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
            try self.checkAllLocalizations(language: "hu")

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
            try self.checkAllLocalizations(language: "pt")

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
            try self.checkAllLocalizations(language: "ru")

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
            try self.checkAllLocalizations(language: "uk")

            XCTAssertEqual(localizator.decare.short, "декар")
            XCTAssertEqual(localizator.decare.full, "Декар")
            XCTAssertEqual(localizator.kgPerDecare.short, "кг/декар")
            XCTAssertEqual(localizator.kgPerDecare.full, "Кілограм на декар")
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

    func testLocalizatorPL() {
        do {
            let localizator = try UnitsLocalizator(language: "pl")
            try self.checkAllLocalizations(language: "pl")

            XCTAssertEqual(localizator.in.short, "in")
            XCTAssertEqual(localizator.in.full, "Cal")
            XCTAssertEqual(localizator.ft.short, "ft")
            XCTAssertEqual(localizator.ft.full, "Stopa")
            XCTAssertEqual(localizator.mile.short, "mile")
            XCTAssertEqual(localizator.mile.full, "Mila")
            XCTAssertEqual(localizator.mm.short, "mm")
            XCTAssertEqual(localizator.mm.full, "Milimetr")
            XCTAssertEqual(localizator.cm.short, "cm")
            XCTAssertEqual(localizator.cm.full, "Centymetr")
            XCTAssertEqual(localizator.m.short, "m")
            XCTAssertEqual(localizator.m.full, "Metr")
            XCTAssertEqual(localizator.km.short, "km")
            XCTAssertEqual(localizator.km.full, "Kilometr")

        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    func testLocalizatorET() {
        do {
            let localizator = try UnitsLocalizator(language: "et")
            try self.checkAllLocalizations(language: "et")

            XCTAssertEqual(localizator.in.short, "in")
            XCTAssertEqual(localizator.in.full, "Toll")
            XCTAssertEqual(localizator.ft.short, "jalg")
            XCTAssertEqual(localizator.ft.full, "Jalg")
            XCTAssertEqual(localizator.mile.short, "mi")
            XCTAssertEqual(localizator.mile.full, "Miil")
            XCTAssertEqual(localizator.mm.short, "mm")
            XCTAssertEqual(localizator.mm.full, "Millimeeter")
            XCTAssertEqual(localizator.cm.short, "cm")
            XCTAssertEqual(localizator.cm.full, "Sentimeeter")
            XCTAssertEqual(localizator.m.short, "m")
            XCTAssertEqual(localizator.m.full, "Meeter")
            XCTAssertEqual(localizator.km.short, "km")
            XCTAssertEqual(localizator.km.full, "Kilomeeter")

        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    func testLocalizatorBG() {
        do {
            let localizator = try UnitsLocalizator(language: "bg")
            try self.checkAllLocalizations(language: "bg")

            XCTAssertEqual(localizator.in.short, "в")
            XCTAssertEqual(localizator.in.full, "Инч")
            XCTAssertEqual(localizator.ft.short, "ft")
            XCTAssertEqual(localizator.ft.full, "Фут")
            XCTAssertEqual(localizator.mile.short, "ми")
            XCTAssertEqual(localizator.mile.full, "Миля")
            XCTAssertEqual(localizator.mm.short, "мм")
            XCTAssertEqual(localizator.mm.full, "Милиметър")
            XCTAssertEqual(localizator.cm.short, "см")
            XCTAssertEqual(localizator.cm.full, "Сантиметър")
            XCTAssertEqual(localizator.m.short, "м")
            XCTAssertEqual(localizator.m.full, "Метър")
            XCTAssertEqual(localizator.km.short, "км")
            XCTAssertEqual(localizator.km.full, "Километър")

        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    func testLocalizatorCS() {
        do {
            let localizator = try UnitsLocalizator(language: "cs")
            try self.checkAllLocalizations(language: "cs")

            XCTAssertEqual(localizator.in.short, "v")
            XCTAssertEqual(localizator.in.full, "Palec")
            XCTAssertEqual(localizator.ft.short, "ft")
            XCTAssertEqual(localizator.ft.full, "Stopa")
            XCTAssertEqual(localizator.mile.short, "mi")
            XCTAssertEqual(localizator.mile.full, "Míle")
            XCTAssertEqual(localizator.mm.short, "mm")
            XCTAssertEqual(localizator.mm.full, "Milimetr")
            XCTAssertEqual(localizator.cm.short, "cm")
            XCTAssertEqual(localizator.cm.full, "Centimetr")
            XCTAssertEqual(localizator.m.short, "m")
            XCTAssertEqual(localizator.m.full, "Metr")
            XCTAssertEqual(localizator.km.short, "km")
            XCTAssertEqual(localizator.km.full, "Kilometr")

        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    // Is all language tested? Failed if not
    func testCheckTestCount() {
        let main = Bundle(for: UnitsLocalizator.self)
        let localizable = main.path(forResource: "Localizable", ofType: "bundle")
        .flatMap { Bundle(path: $0) }

        let langs = ["de", "en", "uk", "es", "et", "bg", "cs", "hu", "pl", "ru", "pt"]
        XCTAssertEqual(localizable?.localizations, langs)
        XCTAssertEqual(localizable?.localizations.count, LocalizatorTests.allTests.count - 1)
    }

    static var allTests = [
        ("testLocalizatorDE", testLocalizatorDE),
        ("testLocalizatorEN", testLocalizatorEN),
        ("testLocalizatorES", testLocalizatorES),
        ("testLocalizatorHU", testLocalizatorHU),
        ("testLocalizatorPT", testLocalizatorPT),
        ("testLocalizatorRU", testLocalizatorRU),
        ("testLocalizatorUK", testLocalizatorUK),
        ("testLocalizatorPL", testLocalizatorPL),
        ("testLocalizatorET", testLocalizatorET),
        ("testLocalizatorBG", testLocalizatorBG),
        ("testLocalizatorCS", testLocalizatorCS),
        ("testCheckTestCount", testCheckTestCount)
    ]
}
