//
//  ToDoStructXCTest.swift
//  blogEntry01
//
//  Created by Sebastian on 05/10/16.
//  Copyright © 2016 org. All rights reserved.
//

import XCTest
@testable import blogEntry01

class ToDoStructXCTest: XCTestCase {
    
    func testExample() {
        let todo = ToDo()
        XCTAssertNotNil(todo)
        XCTAssertNil(todo.Name)
        XCTAssertNil(todo.Description)
    }
    
}
