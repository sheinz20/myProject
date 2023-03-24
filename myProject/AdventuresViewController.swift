//
//  AdventuresViewController.swift
//  myProject
//
//  Created by Sophia Heinz on 2/17/23.
//

import UIKit

let EAgreen = UIColor(named: "EA_green")
let EAyellow = UIColor(named: "EA_yellow")

class AdventuresViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = EAgreen
        
        view.addSubview(selfButton)
        selfButton.center = view.center
        
        view.addSubview(backButton)
        view.addSubview(homeButton)
        view.addSubview(cartButton)

    }
    
    private let selfButton: UIButton = {
        let selfButton = UIButton()
        selfButton.setTitle("Self Guided", for: .normal)
        selfButton.backgroundColor = EAyellow
        selfButton.frame = CGRect(x: 75, y: 100, width: 250, height: 100)
        selfButton.layer.cornerRadius = 25
        selfButton.addTarget(self, action: #selector(selfTapped), for: .touchUpInside)
        return selfButton
    }()
    
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
    
    private let cartButton: UIButton = {
        let cartButton = UIButton()
        let cart = UIImage(named: "cart")
        cartButton.setTitle("cart", for: .normal)
        cartButton.setImage(cart, for: .normal)
        cartButton.frame = CGRect(x: 315, y: 65, width: 50, height: 50)
        cartButton.addTarget(self, action: #selector(cartTapped), for: .touchUpInside)
        return cartButton
    }()
    
    @objc func selfTapped() {
        let self_vc = SelfViewController()
        self_vc.modalPresentationStyle = .fullScreen
        self_vc.modalTransitionStyle = .crossDissolve
        present(self_vc, animated: true)
    }
   
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
    
    @objc func cartTapped() {
        let cart_vc = CartViewController()
        cart_vc.modalPresentationStyle = .fullScreen
        cart_vc.modalTransitionStyle = .crossDissolve
        present(cart_vc, animated: true)
    }

}
