//
//  QuickTest.swift
//  blogEntry01
//
//  Created by Sebastian on 05/10/16.
//  Copyright © 2016 org. All rights reserved.
//

import Foundation

import Quick
import Nimble
@testable import blogEntry01

class ToDoStructTest: QuickSpec {
    override func spec() {
        describe("A ToDo") {
            
            it("must have an empty initializer"){
                let todo = ToDo()
                expect(todo).toNot(beNil())
                expect(todo.Name).to(beNil())
                expect(todo.Description).to(beNil())
            }
            
            it("must have an initializer with parameter name"){
                let todo = ToDo(todoName: "testName")
                expect(todo).toNot(beNil())
                expect(todo.Name).to(equal("testName"))
                expect(todo.Description).to(beNil())
            }
            
            it("must have an initializer with parameter description"){
                let todo = ToDo(todoDescription: "testDescription")
                expect(todo).toNot(beNil())
                expect(todo.Name).to(beNil())
                expect(todo.Description).to(equal("testDescription"))
            }
            
            it("must have an initializer with parameter name and description"){
                let todo = ToDo(todoName: "testName", todoDescription: "testDescription")
                expect(todo).toNot(beNil())
                expect(todo.Name).to(equal("testName"))
                expect(todo.Description).to(equal("testDescription"))
            }
        }
    }
}
