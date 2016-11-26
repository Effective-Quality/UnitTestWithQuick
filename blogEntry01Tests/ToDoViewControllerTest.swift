//
//  ToDoViewController.swift
//  blogEntry01
//
//  Created by Sebastian on 07/10/16.
//  Copyright © 2016 org. All rights reserved.
//
import Foundation

import Quick
import Nimble
@testable import blogEntry01

class ToDoViewControllerTest: QuickSpec {
    override func spec(){
        
        describe("The ToDoViewController"){
            
            var storyboard: UIStoryboard!
            var sut: ToDoViewController!
            
            beforeEach {
                storyboard = UIStoryboard(name: "Main", bundle: nil)
                
                sut = storyboard.instantiateViewController(withIdentifier: "todoController") as! ToDoViewController
                
                _=sut.view
            }
            
            it("should have a tableView"){
                expect(sut.toDoTableView).notTo(beNil())
            }
            
            it("'s toDoTableView should have a delegate"){
                expect(sut.toDoTableView.delegate).notTo(beNil())
                expect(sut.toDoTableView.delegate is toDoDataProvider).to(beTruthy())
            }
            
            it("'s toDoTableView should have a dataSource"){
                expect(sut.toDoTableView.dataSource).notTo(beNil())
                expect(sut.toDoTableView.dataSource is toDoDataProvider).to(beTruthy())
            }
            
            it("must contain dataSource and delegate in the same object"){
                let testDataSource = sut.toDoTableView.dataSource as! toDoDataProvider
                let testDelegate = sut.toDoTableView.dataSource as! toDoDataProvider
                
                expect(testDataSource).to(equal(testDelegate))
            }
        }
    }
}
