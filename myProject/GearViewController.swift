//
//  GearViewController.swift
//  myProject
//
//  Created by Sophia Heinz on 2/17/23.
//

import UIKit
import WebKit

class GearViewController: UIViewController, WKNavigationDelegate {
   // var secondView: SecondView { return self.view as! SecondView }
    let EAgreen = UIColor(named: "EA_green")
    var webView: WKWebView!

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://book.peek.com/s/1f0ba8ea-cdc1-4c6b-b069-2cac56978a3e/9oDE9?gaClientId=20334242.1661379370")!
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
        backButton.setTitleColor(EAyellow, for: .normal)
        return backButton
    }()
   
    
    @objc func backTapped() {
        let back_vc = ViewController()
        back_vc.modalPresentationStyle = .fullScreen
        back_vc.modalTransitionStyle = .crossDissolve
        present(back_vc, animated: true)
    }
}


/*
class SecondView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        self.addSubview(contentView)
    }
    
    let contentView: UIView = {
        let contentView = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        contentView.backgroundColor = EAyellow
        contentView.layer.borderWidth = 1.5
        return contentView
    }()
}*/
