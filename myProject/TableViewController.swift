//
//  TableViewController.swift
//  myProject
//
//  Created by Sophia Heinz on 2/24/23.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }

}
