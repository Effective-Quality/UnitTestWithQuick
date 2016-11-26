//
//  ToDoCellTableViewCell.swift
//  blogEntry01
//
//  Created by Sebastian on 05/10/16.
//  Copyright © 2016 org. All rights reserved.
//

import UIKit

class ToDoCell: UITableViewCell {

    @IBOutlet var toDoNameLabel: UILabel!
    @IBOutlet var toDoDescriptionLabel: UILabel!
    
    func configureCell(toDo: ToDo){
        self.toDoNameLabel.text = toDo.Name
        self.toDoDescriptionLabel.text = toDo.Description
    }

}
