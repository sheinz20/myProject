//
//  GearTableView.swift
//  myProject
//
//  Created by Sophia Heinz on 3/30/23.
//
/*
import Foundation
import UIKit
import CoreData


class GearTableView: UITableViewController {
    
    private var products:[Products] = []
    var fetchResultController:NSFetchRequest<NSFetchRequestResult>
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let managedObjectContext = (UIApplication.shared.delegate as? AppDelegate)?.managedObjectContext {
            
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Product")
            do {
                products = try managedObjectContext.executeFetchRequest(fetchRequest) as! [Products]
            } catch {
                print("Failed to retrieve record")
                print(error)
            }
        }
        
        // Make the cell self size
        tableView.estimatedRowHeight = 66.0
        tableView.rowHeight = UITableView.automaticDimension
    }

    override func didReceiveMemoryWarning() {
        didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return products.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath) as! GearTableViewCell

        // Configure the cell...
        cell.nameLabel.text = products[indexPath.row].name
        cell.descriptionLabel.text = products[indexPath.row].description
        cell.priceLabel.text = "$\(products[indexPath.row].price as! Double)"

        return cell
    }

    

}

    
*/
