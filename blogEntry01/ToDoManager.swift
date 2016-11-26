//
//  ToDoManager.swift
//  blogEntry01
//
//  Created by Sebastian on 05/10/16.
//  Copyright © 2016 org. All rights reserved.
//

import Foundation

class ToDoManager{

    var toDos = [ToDo]()
    
    init(){
    
        let todo1: ToDo = ToDo(todoName: "Call Dad", todoDescription: "Call your Dad back")
        let todo2: ToDo = ToDo(todoName: "Finish presentation", todoDescription: "Finish presentation with lase sales numbers")
        let todo3: ToDo = ToDo(todoName: "Publish blog", todoDescription: "Publish your blog entry about iOS Unit-Testing")
        
        self.toDos.append(todo1)
        self.toDos.append(todo2)
        self.toDos.append(todo3)
    }
    
    func returnToDoAtIndex(index: Int) -> ToDo {
        return self.toDos[index]
    }
    
}
