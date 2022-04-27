//
//  OperationTests.swift
//  UITestUITests
//
//  Created by Dambert Louis Munoz Santillana on 22/03/22.
//

import XCTest

class OperationTests: XCTestCase {

    // software under testing
    var sut: Operations!

    // Setup, esto funciona simil a ViewDidload
    override func setUp() {
        sut = Operations()
    }

    // TDD, BDD, UITest
    override func tearDown() {
        // This is the tearDown() class method.
        // XCTest calls it after the last test method completes.
        // Perform any overall cleanup here.
        print("hola")
    }

    // Cobertura: 100% -> La cantidad de pruebas unitarias que tengo cubiertas a nivel codigo
    func test_operacion_sumar_success() {
        let result = sut.calcular(val1: 5, val2: 7, type: .sumar)
        XCTAssert(result == 12)
    }
    func test_operacion_sumar_failed() {
        let result = sut.calcular(val1: 2, val2: 7, type: .sumar)
        var resultAssert: Bool = false
        if result != 8 {
            resultAssert = true
        }
        XCTAssert(resultAssert)
    }
    func test_operacion_restar_success() {
        let result = sut.calcular(val1: 9, val2: 3, type: .restar)
        var resultAssert: Bool = false
        if result == 6 {
            resultAssert = true
        }
        XCTAssert(resultAssert)
    }
    func test_operacion_multiplicar_success() {
        let result = sut.calcular(val1: 4, val2: 7, type: .multiplicar)
        var resultAssert: Bool = false
        if result == 28 {
            resultAssert = true
        }
        XCTAssert(resultAssert)
    }

}
