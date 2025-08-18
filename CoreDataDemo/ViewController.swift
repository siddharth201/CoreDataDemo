//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Siddharth on 05/08/25.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //createEmployee()
        fetchEmployee()
    }
    
    func createEmployee() {
        let employee = Employee(context: PersistentStorage.shared.context)
        employee.name = "Siddharth"
        PersistentStorage.shared.saveContext()
    }
    
    func fetchEmployee() {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.path ?? ""
        print(path)
        let fetchRequest: NSFetchRequest<Employee> = Employee.fetchRequest()
        do {
            let employees = try PersistentStorage.shared.context.fetch(fetchRequest)
            print(employees)
            employees.forEach { emp in
                print(emp.name)
            }
        } catch {
            print("Error fetching data: \(error)")
        }
    }


}

