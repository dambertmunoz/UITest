//
//  OperationQuickTests.swift
//  UITestUITests
//
//  Created by Dambert Louis Munoz Santillana on 27/04/22.
//
import Quick
import Nimble
 
@testable import UITest
 
class OperationQuickTests: QuickSpec {
    
    var app: XCUIApplication!
    override func setUp() {
    }
    
    override func spec() {
        
        describe("Navigation Test") {
            
            context("simple navigation go to home") { // 1
                
                beforeEach {
                    self.app = XCUIApplication()
                    self.app.launch()
                }
                it("home") {
                  let username = self.app.textFields[TextFieldType.username.rawValue]
                  let password = self.app.textFields[TextFieldType.password.rawValue]
                  let buttonLogin = self.app.buttons[ButtonType.login.rawValue]
                  // let messageLabel = app.tex
                  // Usuario ingresa username
                  username.tap()
                  username.typeText("dmsantillana2705")

                  // Usuario ingresa password
                  password.tap()
                  password.typeText("miclave")

                  // Usuario presiona el boton
                  buttonLogin.tap()
                  
                  let welcomeLabel = self.app.staticTexts["welcomeLabel"]
                  
                  expect(welcomeLabel.exists).to(equal(true))
              }
            }
        }
    }
}

extension OperationQuickTests {
    enum TextFieldType: String {
        case username = "usernameID"
        case password = "passwordID"
    }

    enum ButtonType: String {
        case login
    }
}
