//
//  ToDoManagerTest.swift
//  blogEntry01
//
//  Created by Sebastian on 06/10/16.
//  Copyright © 2016 org. All rights reserved.
//

import Foundation

import Quick
import Nimble
@testable import blogEntry01

class ToDoManagerTest: QuickSpec{
    override func spec(){
    
        describe("The ToDoManager"){
            
            var sut: ToDoManager!
            
            beforeEach {
                sut = ToDoManager()
            }
        
            it("must have three initial ToDos"){
                expect(sut.toDos.count).to(equal(3))
            }
            
            it("must be ble to return a ToDo by index"){
                let expectedToDo = ToDo(todoName: "Finish presentation", todoDescription: "Finish presentation with lase sales numbers")
                let actualToDo = sut.returnToDoAtIndex(index: 1)
                
                expect(expectedToDo).to(equal(actualToDo))
            }
            
        }
        
    }
}
