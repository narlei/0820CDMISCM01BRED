//
//  CartTests.swift
//  11_23_TestesTests
//
//  Created by Narlei A Moreira on 23/11/20.
//

@testable import _1_23_Testes
import XCTest

class CartTests: XCTestCase {
    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func test01ApplyDiscount() {
        let cart = Cart(value: 100)
        cart.applyDiscount(money: 99)
        XCTAssertEqual(cart.value, 1)
    }
    
    func test02ApplyDiscount() {
        let cart = Cart(value: 100)
        cart.applyDiscount(money: 0)
        XCTAssertEqual(cart.value, 100)
    }
    
    func test03ApplyDiscount() {
        let cart = Cart(value: 100)
        cart.applyDiscount(money: 200)
        XCTAssertEqual(cart.value, 0)
    }
}
