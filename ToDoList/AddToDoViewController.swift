//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by Sophia Liu on 8/16/22.
//

import UIKit

class AddToDoViewController: UIViewController {

    // create variable for To Do list View Controller
    var previousVC = ToDoListViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addToDoButton(_ sender: Any) {
        //let toDo = ToDo()
        
//        if let titleText = titleTextField.text {
//            toDo.name = titleText
//            toDo.important = importantSwitch.isOn
//        }
//
//        previousVC.toDos.append(toDo)
//        previousVC.tableView.reloadData()
//
//        navigationController?.popViewController(animated: true)
        
        // we have to grab this view context to be able to work with Core Data
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            // we are creating a new ToDoCD object here, naming it toDo
            let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)
            
            // if the titleTextField has text, we will call that text titleText
            if let titleText = titleTextField.text {
                // we will take the titleText and assign that value to toDo.name
                // this .name and .important came from the attributes you typed in on the Core Data page!
                toDo.name = titleText
                toDo.important = importantSwitch.isOn
            }
            
            try? context.save()

            // this will give a smooth transition back to the main page
            navigationController?.popViewController(animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
