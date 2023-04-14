//
//  HowViewController.swift
//  myProject
//
//  Created by Sophia Heinz on 2/17/23.
//

import UIKit
import youtube_ios_player_helper
import WebKit

class HowViewController: UIViewController {
    
    override func viewDidLoad() {
        let EAgreen = UIColor(named: "EA_green")
        super.viewDidLoad()
        view.backgroundColor = EAgreen
        
        view.addSubview(backButton)
        view.addSubview(homeButton)
        view.addSubview(pageTitle)
        view.addSubview(videoView)
        
        
        addConstraints()
        
    }

//page title
    private let pageTitle: UILabel = {
        let pageTitle = UILabel()
        pageTitle.text = "How it Works"
        pageTitle.textColor = EAyellow
        pageTitle.textAlignment = .center
        pageTitle.font = .boldSystemFont(ofSize: 30)
        pageTitle.translatesAutoresizingMaskIntoConstraints = false
        return pageTitle
    }()
    
    
//youtube video
    private let videoView: YTPlayerView = {
        let videoView = YTPlayerView()
        videoView.load(withVideoId: "ECXsEU9erWY")
        videoView.backgroundColor = EAgreen
        videoView.translatesAutoresizingMaskIntoConstraints = false    //autolayout

        return videoView
    }()
  
//button navigation
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
        homeButton.translatesAutoresizingMaskIntoConstraints = false    //autolayout

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

    private func addConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        //page title
        constraints.append(pageTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(pageTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 130))
        
        //youtibe video
        constraints.append(videoView.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(videoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200))
        constraints.append(videoView.widthAnchor.constraint(equalToConstant: 335))
        constraints.append(videoView.heightAnchor.constraint(equalToConstant: 200))
        
        //home button
        constraints.append(homeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(homeButton.bottomAnchor.constraint(equalTo: pageTitle.topAnchor))
        constraints.append(homeButton.widthAnchor.constraint(equalToConstant: 75))
        constraints.append(homeButton.heightAnchor.constraint(equalToConstant: 75))
        
        NSLayoutConstraint.activate(constraints)

    }
}
