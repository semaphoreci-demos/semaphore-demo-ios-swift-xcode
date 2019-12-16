import XCTest

class TallestTowersScreenshots: XCTestCase {
  override func setUp() {
  }
  
  override func tearDown() {
  }
  
  func testTakeScreenshots() {
    let app = XCUIApplication()
    setupSnapshot(app)
    app.launch()
    
    snapshot("01-ListOfTowers")

    let burjKhalifaPredicate = NSPredicate(format: "label beginswith 'Burj Khalifa'")
    app.tables.buttons.element(matching: burjKhalifaPredicate).tap()

    snapshot("02-TowerDetail")
  }
}
