import XCTest
@testable import TallestTowers

class TowerInstanceTests: XCTestCase {
  var subject: Tower!

  override func setUp() {
    subject = Tower(name: "Empire State Building", city: "New York City", country: "USA", height: 381, yearBuilt: 1931, latitude: 40.748457, longitude: -73.985525)
  }

  func testLocationShouldBeCreatedFromLatitudeAndLongitudeProperties() {
    XCTAssertEqual(subject.location.latitude, 40.748457, accuracy: 0.00001)
    XCTAssertEqual(subject.location.longitude, -73.985525, accuracy: 0.00001)
  }
  
  func testCityAndCountryShouldConcatenateCityAndCountry() {
    XCTAssertEqual(subject.cityAndCountry, "New York City, USA")
  }
  
  func testFormattedHeightIncludesUnits() {
    XCTAssertEqual(subject.formattedHeight, "381m")
  }
}

class TowerStaticTests: XCTestCase {
  func testTallestTowersShouldNotBeEmpty() {
    XCTAssert(Tower.tallestTowers.count > 0)
  }
}
