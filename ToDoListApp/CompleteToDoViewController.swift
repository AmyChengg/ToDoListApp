//
//  CompleteToDoViewController.swift
//  ToDoListApp
//
//  Created by Apple on 8/11/20.
//  Copyright © 2020 Amy. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //grab the name of the ToDo and assign it to the text of titleLabel
        titleLabel.text = selectedToDo.name

        // Do any additional setup after loading the view.
    }
    

    @IBAction func completeTapped(_ sender: Any) {
    }
    
    var previousVC = ToDoTableTableViewController()
    var selectedToDo = ToDo()
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
