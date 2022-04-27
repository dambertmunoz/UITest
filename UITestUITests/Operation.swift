//
//  Operation.swift
//  UITestUITests
//
//  Created by Dambert Louis Munoz Santillana on 22/03/22.
//

import Foundation

enum OperationType {
    case sumar
    case restar
    case multiplicar
}

class Operations {

    func calcular(val1: Int, val2: Int, type: OperationType) -> Int {

        switch type {
        case .sumar:
            return val1 + val2
        case .restar:
            return val1 - val2
        case .multiplicar:
            return val1 * val2
        }

    }

}
