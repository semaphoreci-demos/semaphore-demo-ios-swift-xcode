import XCTest

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
        XCTAssert(app.navigationBars.buttons["Tallest Towers"].exists)
    }
    
    func testNavigateToShanghai() {
        let shanghaiPredicate = NSPredicate(format: "label beginswith 'Shanghai Tower'")
        app.buttons.element(matching: shanghaiPredicate).tap()
        XCTAssert(app.navigationBars.buttons["Tallest Towers"].exists)
    }
    
    func testNavigateToBurjKhalifaAndCheckDetails() {
        let burjKhalifaPredicate = NSPredicate(format: "label beginswith 'Burj Khalifa'")
        app.buttons.element(matching: burjKhalifaPredicate).tap()
        
        XCTAssert(app.staticTexts["Burj Khalifa"].exists)
        XCTAssert(app.staticTexts["Dubai, United Arab Emirates"].exists)
        XCTAssert(app.staticTexts["828m"].exists)
        XCTAssert(app.staticTexts["Constructed in"].exists)
        XCTAssert(app.staticTexts["2010"].exists)
    }
    
    func testXCRecordFunction() {
        
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Burj Khalifa, Dubai, United Arab Emirates, 828m"]/*[[".cells.buttons[\"Burj Khalifa, Dubai, United Arab Emirates, 828m\"]",".buttons[\"Burj Khalifa, Dubai, United Arab Emirates, 828m\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let tallestTowersButton = app.navigationBars["_TtGC7SwiftUI19UIHosting"].buttons["Tallest Towers"]
        tallestTowersButton.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Abraj Al-Bait Clock Tower, Mecca, Saudi Arabia, 601m"]/*[[".cells.buttons[\"Abraj Al-Bait Clock Tower, Mecca, Saudi Arabia, 601m\"]",".buttons[\"Abraj Al-Bait Clock Tower, Mecca, Saudi Arabia, 601m\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.staticTexts["601m"].tap()
        tallestTowersButton.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Guangzhou CTF Finance Center, Guangzhou, China, 530m"]/*[[".cells.buttons[\"Guangzhou CTF Finance Center, Guangzhou, China, 530m\"]",".buttons[\"Guangzhou CTF Finance Center, Guangzhou, China, 530m\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tallestTowersButton.tap()
    }
}
