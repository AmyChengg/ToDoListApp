//
//  ToDoTableTableViewController.swift
//  ToDoListApp
//
//  Created by Apple on 8/10/20.
//  Copyright © 2020 Amy. All rights reserved.
//

import UIKit

class ToDoTableTableViewController: UITableViewController {

    func createToDos() -> [ToDo] {
        
        let swift = ToDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = ToDo()
        dog.name = "Walk the Dog"
        
        return [swift, dog]
        
    }
    
    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //return an array of Core Data ToDos
        //var toDos : [ToDoCD] = []
        
        //access Core Data
        /*
         func getToDos() {
            if let context = (UIApplication.shared.delegate as?
                AppDelegate)?.persistentContainer.viewContext {
                
                //fetch the ToDos from Core Data and bring them back as an array of Core Data objects
                if let coreDataToDos = try? context.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
                    //if let the ToDos = coreDataToDos {
                        toDos = coreDataToDos
                        tableView.reloadData()
                    }
                }
                
            }
        }
 */

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //return 0
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        
        //unwrap the name because a String is not being unwrapped
        if let name = toDo.name {
            if toDo.important {
                //let toDo = toDos[indexPath.row]
                
                if toDo.important {
                    cell.textLabel?.text = "❗️" + toDo.name
                } else {
                    cell.textLabel?.text = toDo.name
                    
                }
            }
        
        return cell
    }
        
    override func viewWillAppear(_ animated: Bool) {
            getToDos()
        }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    //this gives us a single ToDo
        let toDo = toDos[indexPath.row]
    //make a segue from To-Do List to CompleteToDoViewController
        performSegue(withIdentifier: "moveToComplete", sender: toDo)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as?
    AddToDoViewController {
            addVC.previousVC = self
        }
        
        if let completeVC = segue.destination as?
    CompleteToDoViewController {
            if let toDo = sender as? ToDo {
                completeVC.selectedToDo = toDo
                completeVC.previousVC = self
            }
        }
    
    }
    
    
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as?
    AddToDoViewController {
            addVC.previousVC = self
        }
 */
    
    // Override to indicate if the toDo has been marked important
   /* override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = "❗️" + toDo.name
        } else {
            cell.textLabel?.text = toDo.name
        }
        
        return cell
    }
 */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
