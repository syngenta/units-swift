import XCTest
@testable import units_swift

final class UnitsTests: XCTestCase {

    let localizator = TestLocalizator()

    func testVolume() {
        XCTAssertEqual(Volume.code, "volume")
        do {
            let britishGallon = try Volume.from("british_gallon", localizator: self.localizator)
            XCTAssertEqual(britishGallon.from(3221.524337963906), 708.7353543520593)
            XCTAssertEqual(britishGallon.to(708.7353543520593), 3221.524337963906)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let quart = try Volume.from("quart", localizator: self.localizator)
            XCTAssertEqual(quart.from(835.7814210196013), 883.1603737284588)
            XCTAssertEqual(quart.to(883.1603737284588), 835.7814210196013)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let pint = try Volume.from("pint", localizator: self.localizator)
            XCTAssertEqual(pint.from(2587.9758742171566), 5469.367188099424)
            XCTAssertEqual(pint.to(5469.367188099424), 2587.9758742171566)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let americanGallon = try Volume.from("american_gallon", localizator: self.localizator)
            XCTAssertEqual(americanGallon.from(4069.595412190452), 1058.0948071695175)
            XCTAssertEqual(americanGallon.to(1058.0948071695175), 4069.5954121904515)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let bushel = try Volume.from("bushel", localizator: self.localizator)
            XCTAssertEqual(bushel.from(765.3094518743942), 21.717639225973304)
            XCTAssertEqual(bushel.to(21.717639225973304), 765.3094518743942)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let liter = try Volume.from("liter", localizator: self.localizator)
            XCTAssertEqual(liter.from(1530.826526194674), 1530.826526194674)
            XCTAssertEqual(liter.to(1530.826526194674), 1530.826526194674)
        } catch let error {
            XCTFail("error - \(error)")
        }

    }

    func testSpeed() {
        XCTAssertEqual(Speed.code, "speed")
        do {
            let mPerSec = try Speed.from("m_per_sec", localizator: self.localizator)
            XCTAssertEqual(mPerSec.from(3392.106682491515), 3392.106682491515)
            XCTAssertEqual(mPerSec.to(3392.106682491515), 3392.106682491515)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let kmPerHour = try Speed.from("km_per_hour", localizator: self.localizator)
            XCTAssertEqual(kmPerHour.from(4524.924480372933), 16289.72812934256)
            XCTAssertEqual(kmPerHour.to(16289.72812934256), 4524.924480372933)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let milePerHour = try Speed.from("mile_per_hour", localizator: self.localizator)
            XCTAssertEqual(milePerHour.from(2975.349130874201), 6655.666452385016)
            XCTAssertEqual(milePerHour.to(6655.666452385016), 2975.349130874201)
        } catch let error {
            XCTFail("error - \(error)")
        }

    }

    func testTemperature() {
        XCTAssertEqual(Temperature.code, "temperature")
        XCTAssertEqual(Temperature.Settings.celsius.factor, 0)

        do {
            let celsius = try Temperature.from("celsius", localizator: self.localizator)
            XCTAssertEqual(celsius.from(2485.2344473732924), 2485.2344473732924)
            XCTAssertEqual(celsius.to(2485.2344473732924), 2485.2344473732924)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let fahrenheit = try Temperature.from("fahrenheit", localizator: self.localizator)
            XCTAssertEqual(fahrenheit.from(34.081677943206266), 93.34702029777128)
            XCTAssertEqual(fahrenheit.to(93.34702029777128), 34.081677943206266)
        } catch let error {
            XCTFail("error - \(error)")
        }

    }

    func testPrecipitationLevel() {
        XCTAssertEqual(PrecipitationLevel.code, "precipitation_level")
        do {
            let cm = try PrecipitationLevel.from("cm", localizator: self.localizator)
            XCTAssertEqual(cm.from(1434.9562938498373), 143.49562938498374)
            XCTAssertEqual(cm.to(143.49562938498374), 1434.9562938498373)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let mm = try PrecipitationLevel.from("mm", localizator: self.localizator)
            XCTAssertEqual(mm.from(295.9594188200226), 295.9594188200226)
            XCTAssertEqual(mm.to(295.9594188200226), 295.9594188200226)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let _in = try PrecipitationLevel.from("in", localizator: self.localizator)
            XCTAssertEqual(_in.from(2085.893133132772), 82.12177681122681)
            XCTAssertEqual(_in.to(82.12177681122681), 2085.893133132772)
        } catch let error {
            XCTFail("error - \(error)")
        }

    }

    func testFuelConsumption() {
        XCTAssertEqual(FuelConsumption.code, "fuel_consumption")
        XCTAssertEqual(FuelConsumption.Settings.literPer100km.factor, 0)

        do {
            let milePerUkGallon = try FuelConsumption.from("mile_per_uk_gallon", localizator: self.localizator)
            XCTAssertEqual(milePerUkGallon.from(4809.268468357579), 0.05873677833927839)
            XCTAssertEqual(milePerUkGallon.to(0.05873677833927839), 4809.268468357579)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let milePerUsGallon = try FuelConsumption.from("mile_per_us_gallon", localizator: self.localizator)
            XCTAssertEqual(milePerUsGallon.from(344.50710903851154), 0.6827568309300287)
            XCTAssertEqual(milePerUsGallon.to(0.6827568309300287), 344.50710903851154)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let kmPerLiter = try FuelConsumption.from("km_per_liter", localizator: self.localizator)
            XCTAssertEqual(kmPerLiter.from(4611.053789612382), 0.02168701658290702)
            XCTAssertEqual(kmPerLiter.to(0.02168701658290702), 4611.053789612382)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let literPer100km = try FuelConsumption.from("liter_per_100km", localizator: self.localizator)
            XCTAssertEqual(literPer100km.from(3624.1318548466074), 3624.1318548466074)
            XCTAssertEqual(literPer100km.to(3624.1318548466074), 3624.1318548466074)
        } catch let error {
            XCTFail("error - \(error)")
        }

    }

    func testTankVolume() {
        XCTAssertEqual(TankVolume.code, "tank_volume")
        do {
            let britishGallon = try TankVolume.from("british_gallon", localizator: self.localizator)
            XCTAssertEqual(britishGallon.from(1741.3851577666783), 383.10473470866924)
            XCTAssertEqual(britishGallon.to(383.10473470866924), 1741.3851577666783)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let liter = try TankVolume.from("liter", localizator: self.localizator)
            XCTAssertEqual(liter.from(2769.001934033082), 2769.001934033082)
            XCTAssertEqual(liter.to(2769.001934033082), 2769.001934033082)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let americanGallon = try TankVolume.from("american_gallon", localizator: self.localizator)
            XCTAssertEqual(americanGallon.from(4508.803914057956), 1172.2890176550686)
            XCTAssertEqual(americanGallon.to(1172.2890176550686), 4508.803914057956)
        } catch let error {
            XCTFail("error - \(error)")
        }
    }

    func testPlantSpacing() {
        XCTAssertEqual(PlantSpacing.code, "plant_spacing")
        do {
            let ft = try PlantSpacing.from("ft", localizator: self.localizator)
            XCTAssertEqual(ft.from(42.705447198395085), 140.10973511583782)
            XCTAssertEqual(ft.to(140.10973511583782), 42.705447198395085)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let cm = try PlantSpacing.from("cm", localizator: self.localizator)
            XCTAssertEqual(cm.from(3598.3079908403065), 359830.7990840307)
            XCTAssertEqual(cm.to(359830.7990840307), 3598.307990840307)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let _in = try PlantSpacing.from("in", localizator: self.localizator)
            XCTAssertEqual(_in.from(3992.8177990008717), 157197.5509814251)
            XCTAssertEqual(_in.to(157197.5509814251), 3992.8177990008717)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let m = try PlantSpacing.from("m", localizator: self.localizator)
            XCTAssertEqual(m.from(1856.9369912023326), 1856.9369912023326)
            XCTAssertEqual(m.to(1856.9369912023326), 1856.9369912023326)
        } catch let error {
            XCTFail("error - \(error)")
        }

    }

    func testMachineryWeight() {
        XCTAssertEqual(MachineryWeight.code, "machinery_weight")
        do {
            let pound = try MachineryWeight.from("pound", localizator: self.localizator)
            XCTAssertEqual(pound.from(1606.3751459269), 3541.4509829162444)
            XCTAssertEqual(pound.to(3541.4509829162444), 1606.3751459269)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let centner = try MachineryWeight.from("centner", localizator: self.localizator)
            XCTAssertEqual(centner.from(3624.6858317173137), 36.246858317173135)
            XCTAssertEqual(centner.to(36.246858317173135), 3624.6858317173132)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let kg = try MachineryWeight.from("kg", localizator: self.localizator)
            XCTAssertEqual(kg.from(4668.402449959089), 4668.402449959089)
            XCTAssertEqual(kg.to(4668.402449959089), 4668.402449959089)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let tonn = try MachineryWeight.from("tonn", localizator: self.localizator)
            XCTAssertEqual(tonn.from(658.5568960254056), 0.6585568960254057)
            XCTAssertEqual(tonn.to(0.6585568960254057), 658.5568960254056)
        } catch let error {
            XCTFail("error - \(error)")
        }

    }

    func testWeight() {
        XCTAssertEqual(Weight.code, "weight")
        do {
            let tonn = try Weight.from("tonn", localizator: self.localizator)
            XCTAssertEqual(tonn.from(2548.0763233671714), 254.80763233671715)
            XCTAssertEqual(tonn.to(254.80763233671715), 2548.0763233671714)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let pound = try Weight.from("pound", localizator: self.localizator)
            XCTAssertEqual(pound.from(3346.9854337306824), 737883.1026911336)
            XCTAssertEqual(pound.to(737883.1026911336), 3346.9854337306824)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let centner = try Weight.from("centner", localizator: self.localizator)
            XCTAssertEqual(centner.from(53.75046269789519), 53.75046269789519)
            XCTAssertEqual(centner.to(53.75046269789519), 53.75046269789519)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let kg = try Weight.from("kg", localizator: self.localizator)
            XCTAssertEqual(kg.from(2253.213100029519), 225321.31000295188)
            XCTAssertEqual(kg.to(225321.31000295188), 2253.213100029519)
        } catch let error {
            XCTFail("error - \(error)")
        }

    }

    func testArea() {
        XCTAssertEqual(Area.code, "area")
        do {
            let acre = try Area.from("acre", localizator: self.localizator)
            XCTAssertEqual(acre.from(3773.3900288276077), 9320.273371204192)
            XCTAssertEqual(acre.to(9320.273371204192), 3773.3900288276077)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let ha = try Area.from("ha", localizator: self.localizator)
            XCTAssertEqual(ha.from(3921.8913961567305), 3921.8913961567305)
            XCTAssertEqual(ha.to(3921.8913961567305), 3921.8913961567305)
        } catch let error {
            XCTFail("error - \(error)")
        }

    }

    func testLength() {
        XCTAssertEqual(Length.code, "length")
        do {
            let mile = try Length.from("mile", localizator: self.localizator)
            XCTAssertEqual(mile.from(4611.772713282087), 2865.622708085165)
            XCTAssertEqual(mile.to(2865.622708085165), 4611.772713282087)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let km = try Length.from("km", localizator: self.localizator)
            XCTAssertEqual(km.from(3079.624417509084), 3079.624417509084)
            XCTAssertEqual(km.to(3079.624417509084), 3079.624417509084)
        } catch let error {
            XCTFail("error - \(error)")
        }

    }

    func testRowSpacing() {
        XCTAssertEqual(RowSpacing.code, "row_spacing")
        do {
            let cm = try RowSpacing.from("cm", localizator: self.localizator)
            XCTAssertEqual(cm.from(81.01742424796443), 8101.742424796443)
            XCTAssertEqual(cm.to(8101.742424796443), 81.01742424796443)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let m = try RowSpacing.from("m", localizator: self.localizator)
            XCTAssertEqual(m.from(3278.2393487087024), 3278.2393487087024)
            XCTAssertEqual(m.to(3278.2393487087024), 3278.2393487087024)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let ft = try RowSpacing.from("ft", localizator: self.localizator)
            XCTAssertEqual(ft.from(3076.7215791022563), 10094.230917909688)
            XCTAssertEqual(ft.to(10094.230917909688), 3076.721579102256)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let _in = try RowSpacing.from("in", localizator: self.localizator)
            XCTAssertEqual(_in.from(4764.980910017259), 187597.6734313771)
            XCTAssertEqual(_in.to(187597.6734313771), 4764.980910017259)
        } catch let error {
            XCTFail("error - \(error)")
        }

    }

    func testWaterRate() {
        XCTAssertEqual(WaterRate.code, "water_rate")
        do {
            let americanPintPerAcre = try WaterRate.from("american_pint_per_acre", localizator: self.localizator)
            XCTAssertEqual(americanPintPerAcre.from(1325.6119433022322), 1133.7337146269747)
            XCTAssertEqual(americanPintPerAcre.to(1133.7337146269747), 1325.6119433022322)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let literPerHa = try WaterRate.from("liter_per_ha", localizator: self.localizator)
            XCTAssertEqual(literPerHa.from(3211.882622155216), 3211.882622155216)
            XCTAssertEqual(literPerHa.to(3211.882622155216), 3211.882622155216)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let americanQuart = try WaterRate.from("american_quart", localizator: self.localizator)
            XCTAssertEqual(americanQuart.from(2982.7156091137), 1275.4883766082933)
            XCTAssertEqual(americanQuart.to(1275.4883766082933), 2982.7156091137)
        } catch let error {
            XCTFail("error - \(error)")
        }

    }

    func testShortLength() {
        XCTAssertEqual(ShortLength.code, "short_length")
        do {
            let ft = try ShortLength.from("ft", localizator: self.localizator)
            XCTAssertEqual(ft.from(2564.4289147135933), 8413.480704106054)
            XCTAssertEqual(ft.to(8413.480704106054), 2564.4289147135933)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let m = try ShortLength.from("m", localizator: self.localizator)
            XCTAssertEqual(m.from(1182.3644163706003), 1182.3644163706003)
            XCTAssertEqual(m.to(1182.3644163706003), 1182.3644163706003)
        } catch let error {
            XCTFail("error - \(error)")
        }

    }

    func testProductivity() {
        XCTAssertEqual(Productivity.code, "productivity")
        do {
            let usTonnPerAcre = try Productivity.from("us_tonn_per_acre", localizator: self.localizator)
            XCTAssertEqual(usTonnPerAcre.from(3426.5048025955375, crop: ""), 767.5370757814004)
            XCTAssertEqual(usTonnPerAcre.to(767.5370757814004, crop: ""), 3426.5048025955375)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let centnerPerHa = try Productivity.from("centner_per_ha", localizator: self.localizator)
            XCTAssertEqual(centnerPerHa.from(218.4134222133116, crop: ""), 218.4134222133116)
            XCTAssertEqual(centnerPerHa.to(218.4134222133116, crop: ""), 218.4134222133116)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let tonnPerHa = try Productivity.from("tonn_per_ha", localizator: self.localizator)
            XCTAssertEqual(tonnPerHa.from(2149.258498897983, crop: ""), 214.92584988979831)
            XCTAssertEqual(tonnPerHa.to(214.92584988979831, crop: ""), 2149.258498897983)
        } catch let error {
            XCTFail("error - \(error)")
        }

        func bpa(crop: String) -> Double {
            do {
                let bushelPerAcre = try Productivity.from("bushel_per_acre", localizator: self.localizator)
                return bushelPerAcre.from(3932.9598552241814, crop: crop)
            } catch let error {
                XCTFail("error - \(error)")
            }
            return 0
        }

        func bpaTo(crop: String, _ value: Double) -> Double {
            do {
                let bushelPerAcre = try Productivity.from("bushel_per_acre", localizator: self.localizator)
                return bushelPerAcre.to(value, crop: crop)
            } catch let error {
                XCTFail("error - \(error)")
            }
            return 0
        }

        XCTAssertEqual(bpa(crop: ""), 5850.715664664412)
        XCTAssertEqual(bpa(crop: "wheat_spring"), 5850.715664791795)
        XCTAssertEqual(bpa(crop: "wheat_winter"), 5850.715664791795)
        XCTAssertEqual(bpa(crop: "pea"), 5850.715664791795)
        XCTAssertEqual(bpa(crop: "potatoes"), 5850.715664791795)
        XCTAssertEqual(bpa(crop: "soya"), 5850.715664791795)
        XCTAssertEqual(bpa(crop: "rye_winter"), 6268.532938480387)
        XCTAssertEqual(bpa(crop: "rye_spring"), 6268.532938480387)
        XCTAssertEqual(bpa(crop: "maize"), 6268.532938480387)
        XCTAssertEqual(bpa(crop: "linum"), 6268.532938480387)
        XCTAssertEqual(bpa(crop: "millet"), 6268.532938480387)
        XCTAssertEqual(bpa(crop: "barley_spring"), 7313.394580989742)
        XCTAssertEqual(bpa(crop: "barley_winter"), 7313.394580989742)
        XCTAssertEqual(bpa(crop: "buckwheat"), 7313.394580989742)
        XCTAssertEqual(bpa(crop: "avena_spring"), 10324.73615111119)
        XCTAssertEqual(bpa(crop: "avena_winter"), 10324.73615111119)
        XCTAssertEqual(bpa(crop: "rice"), 3510.4039222120464)
        XCTAssertEqual(bpa(crop: "oil_seed_raps_spring"), 7020.731414435004)
        XCTAssertEqual(bpa(crop: "oil_seed_raps_winter"), 7020.731414435004)
        XCTAssertEqual(bpa(crop: "sunflower"), 11701.272100439652)
        XCTAssertEqual(bpa(crop: "triticale_spring"), 6750.678786319206)
        XCTAssertEqual(bpa(crop: "triticale_winter"), 6750.678786319206)

        XCTAssertEqual(bpaTo(crop: "", 5850.715664664412), 3932.9598552241814)
        XCTAssertEqual(bpaTo(crop: "wheat_spring", 5850.715664791795), 3932.959855224182)
        XCTAssertEqual(bpaTo(crop: "wheat_winter", 5850.715664791795), 3932.959855224182)
        XCTAssertEqual(bpaTo(crop: "pea", 5850.715664791795), 3932.959855224182)
        XCTAssertEqual(bpaTo(crop: "potatoes", 5850.715664791795), 3932.959855224182)
        XCTAssertEqual(bpaTo(crop: "soya", 5850.715664791795), 3932.959855224182)
        XCTAssertEqual(bpaTo(crop: "rye_winter", 6268.532938480387), 3932.9598552241814)
        XCTAssertEqual(bpaTo(crop: "rye_spring", 6268.532938480387), 3932.9598552241814)
        XCTAssertEqual(bpaTo(crop: "maize", 6268.532938480387), 3932.9598552241814)
        XCTAssertEqual(bpaTo(crop: "linum", 6268.532938480387), 3932.9598552241814)
        XCTAssertEqual(bpaTo(crop: "millet", 6268.532938480387), 3932.9598552241814)
        XCTAssertEqual(bpaTo(crop: "barley_spring", 7313.394580989742), 3932.9598552241814)
        XCTAssertEqual(bpaTo(crop: "barley_winter", 7313.394580989742), 3932.9598552241814)
        XCTAssertEqual(bpaTo(crop: "buckwheat", 7313.394580989742), 3932.9598552241814)
        XCTAssertEqual(bpaTo(crop: "avena_spring", 10324.73615111119), 3932.959855224182)
        XCTAssertEqual(bpaTo(crop: "avena_winter", 10324.73615111119), 3932.959855224182)
        XCTAssertEqual(bpaTo(crop: "rice", 3510.4039222120464), 3932.9598552241814)
        XCTAssertEqual(bpaTo(crop: "oil_seed_raps_spring", 7020.731414435004), 3932.959855224181)
        XCTAssertEqual(bpaTo(crop: "oil_seed_raps_winter", 7020.731414435004), 3932.959855224181)
        XCTAssertEqual(bpaTo(crop: "sunflower", 11701.272100439652), 3932.9598552241814)
        XCTAssertEqual(bpaTo(crop: "triticale_spring", 6750.678786319206), 3932.9598552241814)
        XCTAssertEqual(bpaTo(crop: "triticale_winter", 6750.678786319206), 3932.9598552241814)
    }

    func testDepth() {
        XCTAssertEqual(Depth.code, "depth")
        do {
            let cm = try Depth.from("cm", localizator: self.localizator)
            XCTAssertEqual(cm.from(4939.641885796515), 4939.641885796515)
            XCTAssertEqual(cm.to(4939.641885796515), 4939.641885796515)
        } catch let error {
            XCTFail("error - \(error)")
        }

        do {
            let _in = try Depth.from("in", localizator: self.localizator)
            XCTAssertEqual(_in.from(364.79509561173296), 143.62011623607953)
            XCTAssertEqual(_in.to(143.62011623607953), 364.795095611733)
        } catch let error {
            XCTFail("error - \(error)")
        }

    }

    static var allTests = [
        ("testVolume", testVolume),
        ("testSpeed", testSpeed),
        ("testTemperature", testTemperature),
        ("testPrecipitationLevel", testPrecipitationLevel),
        ("testFuelConsumption", testFuelConsumption),
        ("testTankVolume", testTankVolume),
        ("testPlantSpacing", testPlantSpacing),
        ("testMachineryWeight", testMachineryWeight),
        ("testWeight", testWeight),
        ("testArea", testArea),
        ("testLength", testLength),
        ("testRowSpacing", testRowSpacing),
        ("testWaterRate", testWaterRate),
        ("testShortLength", testShortLength),
        ("testProductivity", testProductivity),
        ("testDepth", testDepth)
    ]
}
