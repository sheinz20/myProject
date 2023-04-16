//
//  AdventuresViewController.swift
//  myProject
//
//  Created by Sophia Heinz on 2/17/23.
//

import UIKit
import WebKit

let EAgreen = UIColor(named: "EA_green")
let EAyellow = UIColor(named: "EA_yellow")

class AdventuresViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://book.peek.com/s/1f0ba8ea-cdc1-4c6b-b069-2cac56978a3e/XDEXx?gaClientId=20334242.1661379370")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        view.backgroundColor = EAgreen
        
        
        view.addSubview(backButton)
        
    }
    
    private let backButton: UIButton = {
        let backButton = UIButton()
        backButton.setTitle("< Back", for: .normal)
        backButton.setTitleColor(EAyellow, for: .normal)
        backButton.frame = CGRect(x: 15, y: 70, width: 75, height: 25)
        backButton.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        return backButton
    }()
   
    @objc func backTapped() {
        let back_vc = ViewController()
        back_vc.modalPresentationStyle = .fullScreen
        back_vc.modalTransitionStyle = .crossDissolve
        present(back_vc, animated: true)
    }

}
