//
//  AdventuresViewController.swift
//  myProject
//
//  Created by Sophia Heinz on 2/17/23.
//

import UIKit

class AdventuresViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink

    }
    
    @IBAction func didTapButtonOne() {
        let vc = TableViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didTapButtonTwo() {
        let vc = TableViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    

}
