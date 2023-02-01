import XCTest

//- [ ] Test 3 - Tap on a tower entry and check the details match that tower

class TallestTowersUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDownWithError() throws {
        // do nothing
    }
    
    func testTallestTowersTitleIsShown() {
        let title = app.staticTexts["Tallest Towers"]
        XCTAssertTrue(title.exists, "Title should say Tallest Towers.")
    }
    
    func testBurjKhalifaExistsInList() {
        XCTAssert(app.staticTexts["Burj Khalifa"].exists)
    }
    
    func testNavigateToBurjKhalifa() {
        let burjKhalifaPredicate = NSPredicate(format: "label beginswith 'Burj Khalifa'")
        app.buttons.element(matching: burjKhalifaPredicate).tap()
        // app.collectionViews.buttons.element(matching: burjKhalifaPredicate).tap()
    }
    
    func testNavigateToShanghai() {
        let shanghaiPredicate = NSPredicate(format: "label beginswith 'Shanghai Tower'")
        app.buttons.element(matching: shanghaiPredicate).tap()
    }
    
}
