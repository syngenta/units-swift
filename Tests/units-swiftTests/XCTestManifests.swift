import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(UnitsTests.allTests),
        testCase(LocalizatorTests.allTests),
        testCase(UnitTypeTests.allTests)
    ]
}
#endif
