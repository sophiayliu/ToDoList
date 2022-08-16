//
//  completeToDoViewController.swift
//  ToDoList
//
//  Created by Sophia Liu on 8/16/22.
//

import UIKit

class completeToDoViewController: UIViewController {

    var previousVC = ToDoListViewController()
    var selectedToDo = ToDo()
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLabel.text = selectedToDo.name
    }
    
    
    @IBAction func completeButton(_ sender: Any) {
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
