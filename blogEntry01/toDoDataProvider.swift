//
//  toDoDataProvider.swift
//  blogEntry01
//
//  Created by Sebastian on 05/10/16.
//  Copyright © 2016 org. All rights reserved.
//

import UIKit

class toDoDataProvider: NSObject, UITableViewDataSource {
    
    var toDoManager: ToDoManager = ToDoManager()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoManager.toDos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: ToDoCell = tableView.dequeueReusableCell(withIdentifier: "toDoCell", for: indexPath) as! ToDoCell
        
        cell.configureCell(toDo: self.toDoManager.returnToDoAtIndex(index: indexPath.row))
        
        return cell
        
    }

}
