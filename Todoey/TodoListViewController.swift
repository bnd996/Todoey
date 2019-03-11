//
//  ViewController.swift
//  Todoey
//
//  Created by Nurbek Baibolov on 3/10/19.
//  Copyright © 2019 Nurbek Baibolov. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    var itemArray = ["First Row", "Second Row", "Third Row"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK - Tabble View Datasource methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    //MARK - Table view Delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        
        let currentCell = tableView.cellForRow(at: indexPath)
        
        if currentCell?.accessoryType == UITableViewCell.AccessoryType.checkmark {
            currentCell?.accessoryType = .none
        } else {
            currentCell?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    //MARK - Bar button
    
    @IBAction func addItemButtonPressed(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New Todoey Item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
            self.itemArray.append(textField.text!)
            self.tableView.reloadData()
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new item"
            textField = alertTextField
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    

}

