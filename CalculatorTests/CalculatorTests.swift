//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by student on 03/10/2023.
//

import XCTest
@testable import Calculator

final class CalculatorTests: XCTestCase {
    let calc = Calculations()
    
    func testPositiveScenarioForAddCalculation() {
        let var1 = Double(14)
        let var2 = Double(37)
        let oper = "+"
        
        let result = Double(calc.calculate(var1: var1, var2: var2, operand: oper))
        
        XCTAssertEqual(result, 51.0)
    }
    
    func testNegativeScenarioForAddCalculation() {
        let var1 = Double(2)
        let var2 = Double(2)
        let oper = "+"
        
        let result = Double(calc.calculate(var1: var1, var2: var2, operand: oper))
        
        XCTAssertNotEqual(result, 5.0)
    }
    
    func testPositiveScenarioForSubCalculation() {
        let var1 = Double(14)
        let var2 = Double(37)
        let oper = "-"
        
        let result = Double(calc.calculate(var1: var1, var2: var2, operand: oper))
        
        XCTAssertEqual(result, -23.0)
    }
    
    func testNegativeScenarioForSubCalculation() {
        let var1 = Double(2)
        let var2 = Double(2)
        let oper = "-"
        
        let result = Double(calc.calculate(var1: var1, var2: var2, operand: oper))
        
        XCTAssertNotEqual(result, 1.0)
    }
    
    func testPositiveScenarioForProdCalculation() {
        let var1 = Double(14)
        let var2 = Double(37)
        let oper = "*"
        
        let result = Double(calc.calculate(var1: var1, var2: var2, operand: oper))
        
        XCTAssertEqual(result, 518.0)
    }
    
    func testNegativeScenarioForProdCalculation() {
        let var1 = Double(5)
        let var2 = Double(6)
        let oper = "*"
        
        let result = Double(calc.calculate(var1: var1, var2: var2, operand: oper))
        
        XCTAssertNotEqual(result, 29.0)
    }
    
    func testPositiveScenarioForDivCalculation() {
        let var1 = Double(12)
        let var2 = Double(4)
        let oper = "/"
        
        let result = Double(calc.calculate(var1: var1, var2: var2, operand: oper))
        
        XCTAssertEqual(result, 3.0)
    }
    
    func testZeroScenarioForDivCalculation() {
        let var1 = Double(12)
        let var2 = Double(0)
        let oper = "/"
        
        let result = calc.calculate(var1: var1, var2: var2, operand: oper)
        
        XCTAssertEqual(result, "Próba dzielenia przez 0")
    }
    
    func testPositiveScenarioForSinCalculation() {
        let var1 = Double.pi/6
        let var2 = Double(123)
        let oper = "sin"
        
        let result = Double(calc.calculate(var1: var1, var2: var2, operand: oper))
        
        XCTAssertEqual(result, sin(Double.pi/6))
    }
    

}
