# Tallest Towers App

- Simple app (created by someone else) that shows a list of tallest towers and their details.
- This forked project originally included both unit and UI tests.
- My goal is simply to practise writing tests, I deleted them so I can write from scratch.
- To run all tests locally, choose "Test" from the "Product" menu or press ⌘U.

![Example project running in the iOS Simulator](Images/TallestTowers.png)

## Environment

- XCode 14.1
- macOS Ventura 13.0.1

## Todo

- [x] Run the app in a simulator, does it work? (Yes, ran in iPhone 14 Pro, iOS 16.1)
- [x] Write down what each unit and UI test does (in plain English)
- [x] Delete the original unit and UI tests (apart from the import statements) - Ouch!
- [ ] Re-implement those tests (without looking)
- [ ] Compare your answers to the original solutions

## The tests

Reimplement these tests:

**Unit Tests**

- [x] Create a test case called 'TowerInstanceTests'
    - [x] Create a a setup function. It should create a test variable to store a dummy tower, use the implicit unwrapped optional. 
    - [x] 'testLocationShouldBeCreatedFromLatitudeAndLongitudeProperties' - check you can access the location's latitude and longitude for a Tower instance. Pay attention to accuracy.
    - [x] 'testCityAndCountryShouldConcatenateCityAndCountry' - self-evident.
    - [x] 'testFormattedHeightIncludesUnits' - self-evident.
- [x] Create a test case called 'TowerStaticTests'
    - [x] 'testTallestTowersShouldNotBeEmpty' - self-evident.
- [x] Run unit tests
    
Mission accomplished, I did it and took away 4-5 learning points from this!

**UI Tests**

- [x] Create a test case called 'TallestTowersUITests'
- [x] Set up the app to launch
- [x] Test 0 - Check that the title on app home screen is 'Tallest Towers'
- [x] Test 1 - Check that 'Burj Khalifa' exists in the list and tap on it
- [x] Test 2 - Check that 'Shanghai Tower' exists in the list and tap on it
- [ ] Test 3 - Tap on a tower entry and check the details match that tower
- [ ] Test 4 (BONUS) - For tests 1 and 2, check the backlink 'Tallest Towers' exists

## What I learned

Learn from mistakes, see closed issues in this repo.

## Reference links

- https://semaphoreci.com/blog/xcode-unit-testing-tutorial
- https://semaphoreci.com/blog/ui-testing-swift
- https://google.github.io/swift/
- https://developer.apple.com/documentation/xctest/xcuielementtypequeryprovider
- https://www.hackingwithswift.com/articles/148/xcode-ui-testing-cheat-sheet
