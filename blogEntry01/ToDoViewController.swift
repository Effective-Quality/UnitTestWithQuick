//
//  ViewController.swift
//  blogEntry01
//
//  Created by Sebastian on 05/10/16.
//  Copyright © 2016 org. All rights reserved.
//

import UIKit

class ToDoViewController: UIViewController {
    
    @IBOutlet var toDoTableView: UITableView!
    @IBOutlet var toDoDataProvider: (UITableViewDelegate & UITableViewDataSource)!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.toDoTableView.dataSource = toDoDataProvider
        self.toDoTableView.delegate = toDoDataProvider    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

