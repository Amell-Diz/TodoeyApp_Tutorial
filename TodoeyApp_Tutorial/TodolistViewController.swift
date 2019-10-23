//
//  ViewController.swift
//  TodoeyApp_Tutorial
//
//  Created by Amel Dizdarevic on 10/23/19.
//  Copyright © 2019 Virgin Pulse. All rights reserved.
//

import UIKit

class TodolistViewController: UITableViewController {

    let itemArray = ["Shen", "Zed", "Jhin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // TABLEVIEW DATABASE METHODS
    // Number of rows; This will create as many cells in a table as there are in itemArray list
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count;
    }
    
    //
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Created a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        // Populated it with text imported from itemArray list for the current row
        cell.textLabel?.text = itemArray[indexPath.row]
        
        // Return cell so it can be displayed
        return cell
    }
    
    // TABLEVIEW DELEGATE METHODS
    // Changes background of the selected row (it turns to grey)
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        // After enabling accessory in Main.storyboard for TableViewCell, this line will display the checkmark
        // in that row (in every row)
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        // After selecting the row, after it turns to grey, it turns back to white again
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

