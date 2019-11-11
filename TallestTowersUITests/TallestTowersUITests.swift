import XCTest

class TallestTowersUITests: XCTestCase {
  let app = XCUIApplication()

  override func setUp() {
    continueAfterFailure = false
    app.launch()
  }

  func testNavigation() {
    let burjKhalifaPredicate = NSPredicate(format: "label beginswith 'Burj Khalifa'")
    app.tables.buttons.element(matching: burjKhalifaPredicate).tap()
    app.navigationBars.buttons["Tallest Towers"].tap()

    let shanghaiTowerPredicate = NSPredicate(format: "label beginswith 'Shanghai Tower'")
    app.tables.buttons.element(matching: shanghaiTowerPredicate).tap()
    app.navigationBars.buttons["Tallest Towers"].tap()
  }

  func testTowerDetailView() {
    let chinaZunPredicate = NSPredicate(format: "label beginswith 'China Zun'")
    app.tables.buttons.element(matching: chinaZunPredicate).tap()
    
    XCTAssert(app.staticTexts["China Zun"].exists)
    XCTAssert(app.staticTexts["Beijing, China"].exists)
    XCTAssert(app.staticTexts["528m"].exists)
    XCTAssert(app.staticTexts["Constructed in"].exists)
    XCTAssert(app.staticTexts["2018"].exists)
  }
}
