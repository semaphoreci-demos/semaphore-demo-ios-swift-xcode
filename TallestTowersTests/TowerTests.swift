import XCTest
@testable import TallestTowers

class TowerInstanceTests: XCTestCase {
    
    var subject: Tower!
    
    override func setUp() {
        // Taken from Wikipedia
        subject = Tower(
            name: "Tokyo Tower",
            city: "Tokyo",
            country: "Japan",
            height: 333,
            yearBuilt: 1958,
            latitude: 35.6583,
            longitude: 139.773
        )
    }
    
    override func tearDown() {
        subject = nil
    }
    
    func testCityShouldBeAssignedTokyo() {
        XCTAssert(subject.city == "Tokyo")
    }
    
    func testLocationShouldBeCreatedFromLatitudeAndLongitudeProperties() {
        XCTAssertEqual(subject.location.latitude, 35.6583, accuracy: 0.00001)
        XCTAssertEqual(subject.location.longitude, 139.773, accuracy: 0.00001)
    }
    
    func testCityAndCountryShouldConcatenateCityAndCountry() {
        XCTAssertEqual(subject.cityAndCountry, "Tokyo, Japan")
    }
    
    func testFormattedHeightIncludesUnits() {
        XCTAssertEqual(subject.formattedHeight, "333m")
    }
}

class TowerStaticTests: XCTestCase {
    
    func testTallestTowersShouldHaveTenTowers() {
        XCTAssert(Tower.tallestTowers.count == 10)
    }
    
}
