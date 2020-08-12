//
//  AddToDoViewController.swift
//  ToDoListApp
//
//  Created by Apple on 8/11/20.
//  Copyright © 2020 Amy. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    @IBOutlet weak var labelImportant: UILabel!
    
    @IBOutlet weak var switchImportant: UISwitch!
    
    @IBOutlet weak var titleTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        
        if let titleText = titleTextField.text {
            toDo.name = titleText
            toDo.important = switchImportant.isOn
        }
        //add a new ToDo
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        //pop back to the Table View when user taps the Add button
    
    navigationController?.popViewController(animated: true)
    }
   
    //add the class ToDoTableViewController so the ToDo is added to the ToDo array
    var previousVC = ToDoTableTableViewController()
    
    
    
    // MARK: - Navigation

    //In a storyboard-based application, you will often want to do a little preparation before navigation
    
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    

}