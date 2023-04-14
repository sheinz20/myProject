//
//  CartViewController.swift
//  myProject
//
//  Created by Sophia Heinz on 3/23/23.
//

import Foundation
import UIKit

class CartViewController: UIViewController {
    
    override func viewDidLoad() {
        let EAgreen = UIColor(named: "EA_green")
        
        super.viewDidLoad()
        view.backgroundColor = EAgreen
        view.addSubview(backButton)
        view.addSubview(homeButton)

    }
    
    private let backButton: UIButton = {
        let backButton = UIButton()
        backButton.setTitle("< Back", for: .normal)
        backButton.setTitleColor(EAyellow, for: .normal)
        backButton.frame = CGRect(x: 20, y: 135, width: 75, height: 25)
        backButton.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        return backButton
    }()
    
    private let homeButton: UIButton = {
        let homeButton = UIButton()
        let logo = UIImage(named: "logo")
        homeButton.setTitle("home", for: .normal)
        homeButton.setImage(logo, for: .normal)
        homeButton.frame = CGRect(x: 25, y: 50, width: 75, height: 75)
        homeButton.addTarget(self, action: #selector(homeTapped), for: .touchUpInside)
        return homeButton
    }()
    
    @objc func backTapped() {
        let back_vc = ViewController()
        back_vc.modalPresentationStyle = .fullScreen
        back_vc.modalTransitionStyle = .crossDissolve
        present(back_vc, animated: true)
    }

    @objc func homeTapped() {
        let home_vc = ViewController()
        home_vc.modalPresentationStyle = .fullScreen
        home_vc.modalTransitionStyle = .crossDissolve
        present(home_vc, animated: true)
    }
}
