# Tallest Towers App

- Simple app (created by someone else) that shows a list of tallest towers and their details.
- This forked project originally included both unit and UI tests.
- My goal is simply to practise writing tests, I deleted them so I can write from scratch.
- To run all tests locally, choose "Test" from the "Product" menu or press ⌘U.

![Example project running in the iOS Simulator](Images/TallestTowers.png)

## Todo

- [x] Run the app in a simulator, does it work? (Yes, ran in iPhone 14 Pro, iOS 16.1, XCode 14.1)
- [x] Write down what each unit and UI test does (in plain English)
- [x] Delete the original unit and UI tests (apart from the import statements) - Ouch!
- [ ] Re-implement those tests (without looking)
- [ ] Compare your answers to the original solutions

## The tests

Reimplement these tests:

**Unit Tests**

- [x] Create a test case called 'TowerInstanceTests'
    - [ ] Create a a setup function. It should create a test variable to store a dummy tower, use the implicit unwrapped optional. 
    - [ ] 'testLocationShouldBeCreatedFromLatitudeAndLongitudeProperties' - check you can access the location's latitude and longitude for a Tower instance. Pay attention to accuracy.
    - [ ] 'testCityAndCountryShouldConcatenateCityAndCountry' - self-evident.
    - [ ] 'testFormattedHeightIncludesUnits' - self-evident.
- [x] Create a test case called 'TowerStaticTests'
    - [ ] 'testTallestTowersShouldNotBeEmpty' - self-evident.

**UI Tests**

- [ ] Create a test case called 'TallestTowersUITests'
- [ ] Set up the app to launch
- [ ] Check that 'Burj Khalifa' exists in the list and tap on it 
- [ ] Check that 'Shanghai Tower' exists in the list and tap on it 
- [ ] Tap on a tower entry and check the details match that tower

## Reference links
https://semaphoreci.com/blog/xcode-unit-testing-tutorial
https://semaphoreci.com/blog/ui-testing-swift
