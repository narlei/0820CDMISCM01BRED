//
//  _1_23_TestesUITests.swift
//  11_23_TestesUITests
//
//  Created by Narlei A Moreira on 23/11/20.
//

import XCTest

class _1_23_TestesUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test01SegmetedControll() {
        let secondButton = app.buttons["Second"]
        secondButton.tap()

        let button = app.buttons["4"]
        button.tap()
        app.buttons["asdd"].tap()
        
        sleep(3)
        
        app.buttons["Firstt"].tap()
        secondButton.tap()
        button.tap()

        print("a")
    }

    func test02Button() {
  
        app.buttons["button_x"].tap()
        XCTAssertTrue(app.staticTexts["Funcionou galera!"].exists)
        

        print("a")
    }
}
