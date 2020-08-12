//
//  AddToDoViewController.swift
//  ToDoListApp
//
//  Created by Apple on 8/11/20.
//  Copyright © 2020 Amy. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableTableViewController()

    
    @IBOutlet weak var labelImportant: UILabel!
    
   
    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBOutlet weak var titleTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        
        if let titleText = titleTextField.text {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }

    }
    
    
    
    // MARK: - Navigation

    //In a storyboard-based application, you will often want to do a little preparation before navigation
    
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    

}
