//
//  ToDo.swift
//  blogEntry01
//
//  Created by Sebastian on 05/10/16.
//  Copyright © 2016 org. All rights reserved.
//

import Foundation

struct ToDo: Equatable{
    
    let Name: String!
    let Description: String!
    
    init(todoName: String?=nil, todoDescription: String?=nil){
        self.Name = todoName
        self.Description = todoDescription
    }
    
}
func == (lhs: ToDo, rhs: ToDo) -> Bool {
    let areEqual: Bool = lhs.Name == rhs.Name && lhs.Description == rhs.Description
    return areEqual
}
