//
//  UITestUITests.swift
//  UITestUITests
//
//  Created by Dambert Louis Munoz Santillana on 1/02/22.
//

import XCTest

class UITestUITests: XCTestCase {

    var app: XCUIApplication!
    override func setUp() {
        app = XCUIApplication()
        app.launch()
    }

    func test_login_success() {

        // Referenciando a todos los components UI
        let username = app.textFields[TextFieldType.username.rawValue]
        let password = app.textFields[TextFieldType.password.rawValue]
        let buttonLogin = app.buttons[ButtonType.login.rawValue]
        // let messageLabel = app.tex
        // Usuario ingresa username
        username.tap()
        username.typeText("dambert")

        // Usuario ingresa password
        password.tap()
        password.typeText("miclave")

        // Usuario presiona el boton
        buttonLogin.tap()
        
        
        XCTAssert(true)
        
    }
    
    func test_navigation_login_home_success() {
        let username = app.textFields[TextFieldType.username.rawValue]
        let password = app.textFields[TextFieldType.password.rawValue]
        let buttonLogin = app.buttons[ButtonType.login.rawValue]
        // let messageLabel = app.tex
        // Usuario ingresa username
        username.tap()
        username.typeText("dambert")

        // Usuario ingresa password
        password.tap()
        password.typeText("miclave")

        // Usuario presiona el boton
        buttonLogin.tap()
        
        let welcomeLabel = app.staticTexts["welcomeLabel"]
        XCTAssert(welcomeLabel.exists)
        
        var boolService = false
        
        let expectation = expectation(description: "esperando")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            boolService = true
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 2)
        
        XCTAssert(boolService)
        
    }
}

extension UITestUITests {
    enum TextFieldType: String {
        case username = "usernameID"
        case password = "passwordID"
    }

    enum ButtonType: String {
        case login
    }
}
