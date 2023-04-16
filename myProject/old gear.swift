//
//  old gear.swift
//  myProject
//
//  Created by Sophia Heinz on 4/15/23.
//

//
//  GearViewController.swift
//  myProject
//
//  Created by Sophia Heinz on 2/17/23.
/*

import UIKit
import WebKit

class GearViewController: UIViewController {
    let EAgreen = UIColor(named: "EA_green")
    
    //let webView = WKWebView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = EAgreen
        
        view.addSubview(backButton)
        view.addSubview(homeButton)
        //view.addSubview(webView)
        
        guard let url = URL(string: "https://book.peek.com/s/1f0ba8ea-cdc1-4c6b-b069-2cac56978a3e/9oDE9?gaClientId=20334242.1661379370") else {
            return
        }
        webView.load(URLRequest(url: url))
        webView.backgroundColor = EAgreen
        self.webView.translatesAutoresizingMaskIntoConstraints = false

    }
    
    private let webView: WKWebView = {
        let webView = WKWebView()
        return webView
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
    
    private let backButton: UIButton = {
        let backButton = UIButton()
        backButton.setTitle("< Back", for: .normal)
        backButton.setTitleColor(EAyellow, for: .normal)
        backButton.frame = CGRect(x: 20, y: 135, width: 75, height: 25)
        backButton.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        backButton.setTitleColor(EAyellow, for: .normal)
        return backButton
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
*/
