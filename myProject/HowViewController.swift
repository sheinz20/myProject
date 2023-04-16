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
        view.addSubview(sectionTitle)
        view.addSubview(videoView)
        view.addSubview(stepOne)
        view.addSubview(stepTwo)
        
        addConstraints()
    }
    
    
//page title
    private let pageTitle: UILabel = {
       let pageTitle = UILabel()
        pageTitle.text = "Effortless Adventure"
        pageTitle.textColor = EAyellow
        pageTitle.font = .boldSystemFont(ofSize: 20)
        pageTitle.textAlignment = .center
        pageTitle.translatesAutoresizingMaskIntoConstraints = false    //autolayout

        return pageTitle
    }()
    
//section title
    private let sectionTitle: UILabel = {
        let sectionTitle = UILabel()
        sectionTitle.text = "How it Works"
        sectionTitle.textColor = EAyellow
        sectionTitle.textAlignment = .center
        sectionTitle.font = .boldSystemFont(ofSize: 40)
        sectionTitle.translatesAutoresizingMaskIntoConstraints = false
        return sectionTitle
    }()
    
    
//youtube video
    private let videoView: YTPlayerView = {
        let videoView = YTPlayerView()
        videoView.load(withVideoId: "ECXsEU9erWY")
        videoView.backgroundColor = EAgreen
        videoView.translatesAutoresizingMaskIntoConstraints = false    //autolayout

        return videoView
    }()
    
    let stepOne: UIView = {
        let stepOne = UILabel()
        stepOne.text = "Step 1: \n\nBook your camping or backpacking gear rental online today!\nSelect your group size and dates. It’s easy!"
        stepOne.numberOfLines = 5
        stepOne.translatesAutoresizingMaskIntoConstraints = false
        stepOne.lineBreakMode = .byWordWrapping
        stepOne.textAlignment = .center
        stepOne.font = stepOne.font.withSize(24)
        stepOne.textColor = EAyellow
        return stepOne
    }()
    
    let stepTwo: UIView = {
        let stepTwo = UILabel()
        stepTwo.text = "Step 2: \n\nThe morning of your camping or backpacking gear rental you will receive a door code and locker number. Pick-Up at your convenience at our location in Plymouth, NH. Right on the way to the best camping and hiking in the state!"
        stepTwo.numberOfLines = 10
        stepTwo.translatesAutoresizingMaskIntoConstraints = false
        stepTwo.lineBreakMode = .byWordWrapping
        stepTwo.textAlignment = .center
        stepTwo.font = stepTwo.font.withSize(24)
        stepTwo.textColor = EAyellow
        return stepTwo
    }()
  
//button navigation
    private let backButton: UIButton = {
        let backButton = UIButton()
        backButton.setTitle("< Back", for: .normal)
        backButton.setTitleColor(EAyellow, for: .normal)
        backButton.frame = CGRect(x: 15, y: 70, width: 75, height: 25)
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

//constraints
    private func addConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        //page title
        constraints.append(pageTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(pageTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80))
        
        //section title
        constraints.append(sectionTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(sectionTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 140))
        
        //youtube video
        constraints.append(videoView.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(videoView.topAnchor.constraint(equalTo: sectionTitle.bottomAnchor, constant: 30))
        constraints.append(videoView.widthAnchor.constraint(equalToConstant: 335))
        constraints.append(videoView.heightAnchor.constraint(equalToConstant: 200))
        
        //home button
        constraints.append(homeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(homeButton.bottomAnchor.constraint(equalTo: pageTitle.topAnchor))
        constraints.append(homeButton.widthAnchor.constraint(equalToConstant: 75))
        constraints.append(homeButton.heightAnchor.constraint(equalToConstant: 75))
        
        //step one
        constraints.append(stepOne.topAnchor.constraint(equalTo: videoView.bottomAnchor, constant: 30))
        constraints.append(stepOne.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(stepOne.widthAnchor.constraint(equalToConstant: 400))
        constraints.append(stepOne.heightAnchor.constraint(equalToConstant: 150))
        
        //step two
        constraints.append(stepTwo.topAnchor.constraint(equalTo: stepOne.bottomAnchor, constant: 30))
        constraints.append(stepTwo.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(stepTwo.widthAnchor.constraint(equalToConstant: 400))
        constraints.append(stepTwo.heightAnchor.constraint(equalToConstant: 300))
        
        NSLayoutConstraint.activate(constraints)

    }
}
