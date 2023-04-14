//
//  GearViewController.swift
//  myProject
//
//  Created by Sophia Heinz on 2/17/23.
//

import UIKit
import WebKit

class GearViewController: UIViewController {
    let EAgreen = UIColor(named: "EA_green")
    
    let webView = WKWebView()

    var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = EAgreen
        
        view.addSubview(backButton)
        view.addSubview(homeButton)
        view.addSubview(cartButton)
        
        view.addSubview(webView)
        
        guard let url = URL(string: "https://book.peek.com/s/1f0ba8ea-cdc1-4c6b-b069-2cac56978a3e/9oDE9?gaClientId=20334242.1661379370") else {
            return
        }
        webView.load(URLRequest(url: url))
        webView.backgroundColor = EAgreen

        let html = """
        <html>
        <body>
        <h1>Hello, Swift!</h1>
        </body>
        </html>
        """

        // webView.loadHTMLString(html, baseURL: nil)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
    
    private let homeButton: UIButton = {
        let homeButton = UIButton()
        let logo = UIImage(named: "logo")
        homeButton.setTitle("home", for: .normal)
        homeButton.setImage(logo, for: .normal)
        homeButton.frame = CGRect(x: 25, y: 50, width: 75, height: 75)
        homeButton.addTarget(self, action: #selector(homeTapped), for: .touchUpInside)
        return homeButton
    }()
    
    private let backButton: UIButton = {
        let backButton = UIButton()
        backButton.setTitle("< Back", for: .normal)
        backButton.setTitleColor(EAyellow, for: .normal)
        backButton.frame = CGRect(x: 20, y: 135, width: 75, height: 25)
        backButton.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        backButton.setTitleColor(EAyellow, for: .normal)
        return backButton
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
