//
//  ToDoDataProviderTest.swift
//  blogEntry01
//
//  Created by Sebastian on 12/10/16.
//  Copyright © 2016 org. All rights reserved.
//

import Foundation

import Quick
import Nimble
@testable import blogEntry01

class ToDoDataProviderTest: QuickSpec {
    override func spec(){
    
        describe("The ToDoDataProvider"){
        
            var sut: toDoDataProvider!
            var tableView: UITableView!
            var controller: ToDoViewController!
            
            beforeSuite {
                sut = toDoDataProvider()
                sut.toDoManager = ToDoManager()
                
                controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "todoController") as! ToDoViewController
                
                _=controller.view
                
                tableView = controller.toDoTableView
                tableView.dataSource = sut
            }
            
            it("must return number of rows that equals the amount of todos"){
                
                expect(tableView.numberOfRows(inSection: 0)).to(equal(3))
                
            }
            
            it("must return a toDoCell"){
                
                let cell2BeTested = tableView.cellForRow(at: IndexPath(row: 0, section: 0))
                
                expect(cell2BeTested is ToDoCell).to(beTruthy())
            }
            
            it("must dequeue cell") {
                
                let mockTableView = MockTableView()
                mockTableView.dataSource = sut
                mockTableView.register(FakeToDoCell.self, forCellReuseIdentifier: "toDoCell")
                
                mockTableView.reloadData()
                
                _=mockTableView.cellForRow(at: IndexPath(row: 0, section: 0))
                
                expect(mockTableView.cellGotDequeued).to(beTruthy())
            }
            
            it("must call configCell") {
                
                let mockTableView = MockTableView()
                mockTableView.dataSource = sut
                mockTableView.register(MockToDoCell.self, forCellReuseIdentifier:"toDoCell")
                
                mockTableView.reloadData()
                
                let cell = mockTableView.cellForRow(at: IndexPath(row: 0, section: 0)) as! MockToDoCell
                
                let expectedToDo: ToDo = sut.toDoManager.toDos[0]
                
                expect(cell.mockToDo).to(equal(expectedToDo))
            }

        
        }
    
    }
}

extension ToDoDataProviderTest{
    
    class MockTableView: UITableView {
        var cellGotDequeued = false
        
        override func dequeueReusableCell(withIdentifier identifier: String, for indexPath: IndexPath) -> UITableViewCell {
            
            self.cellGotDequeued = true
            
            return super.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        }
    }
    
    class FakeToDoCell: ToDoCell{
        override func configureCell(toDo: ToDo) {
            
        }
    }
    
    class MockToDoCell: ToDoCell {
        
        var mockToDo: ToDo!
        
        override func configureCell(toDo: ToDo) {
            mockToDo = toDo
        }
    }
    
}



