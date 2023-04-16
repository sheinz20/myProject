//
//  ViewController.swift
//  myProject
//
//  Created by Sophia Heinz on 2/17/23.
//

import UIKit
import CoreData

//let EAgreen = UIColor(named: "EA_green")
//let EAyellow = UIColor(named: "EA_yellow")

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let rootVC = SecondViewController()
        //let navVC = UINavigationController(rootViewController: rootVC)
        //present(navVC, animated: true)
        
        view.backgroundColor = EAgreen
        
        view.addSubview(gearButton)
        view.addSubview(advenButton)
        view.addSubview(howButton)
        view.addSubview(FAQButton)
        view.addSubview(phoneButton)
        view.addSubview(homeButton)
        view.addSubview(pageTitle)
        
        addConstraints()
    }
    
    let pageTitle: UILabel = {
        let pageTitle = UILabel()
        pageTitle.text = "Effortless Adventure"
        pageTitle.textColor = EAyellow
        pageTitle.font = .boldSystemFont(ofSize: 20)
        pageTitle.textAlignment = .center
        pageTitle.translatesAutoresizingMaskIntoConstraints = false    //autolayout
        
        return pageTitle
    }()
    
    private let gearButton: UIButton = {
        let gearButton = UIButton()
        let GearImage = UIImage(named: "Gear")
        gearButton.setTitle("Gear", for: .normal)
        gearButton.setImage(GearImage, for: .normal)
        //gearButton.layer.cornerRadius = 25
        //gearButton.layer.borderWidth = 2
        //gearButton.layer.borderColor = UIColor.yellow
        //gearButton.contentMode = .scaleAspectFit
        gearButton.translatesAutoresizingMaskIntoConstraints = false    //autolayout
        gearButton.addTarget(self, action: #selector(gearTapped), for: .touchUpInside)
        return gearButton
    }()
    
    private let advenButton: UIButton = {
        let advenButton = UIButton()
        let AdvenImage = UIImage(named: "Adventure")
        advenButton.setTitle("Adventures", for: .normal)
        advenButton.setImage(AdvenImage, for: .normal)
        advenButton.translatesAutoresizingMaskIntoConstraints = false    //autolayout
        advenButton.addTarget(self, action: #selector(advenTapped), for: .touchUpInside)
        return advenButton
    }()
    
    private let howButton: UIButton = {
        let howButton = UIButton()
        let HowImage = UIImage(named: "How")
        howButton.setTitle("How it works", for: .normal)
        howButton.setImage(HowImage, for: .normal)
        howButton.translatesAutoresizingMaskIntoConstraints = false    //autolayout
        howButton.addTarget(self, action: #selector(howTapped), for: .touchUpInside)
        return howButton
    }()
    
    private let FAQButton: UIButton = {
        let FAQButton = UIButton()
        let EAyellow = UIColor(named: "EA_yellow")
        FAQButton.setTitle("FAQ's", for: .normal)
        FAQButton.setTitleColor(EAyellow, for: .normal)
        //FAQButton.frame = CGRect(x: 60, y: 790, width: 75, height: 25)
        FAQButton.translatesAutoresizingMaskIntoConstraints = false    //autolayout
        FAQButton.addTarget(self, action: #selector(FAQTapped), for: .touchUpInside)
        return FAQButton
    }()
    
    private let phoneButton: UIButton = {
        let phoneButton = UIButton()
        let EAyellow = UIColor(named: "EA_yellow")
        phoneButton.setTitle("Contact Us", for: .normal)
        phoneButton.setTitleColor(EAyellow, for: .normal)
        //phoneButton.frame = CGRect(x: 240, y: 790, width: 100, height: 25)
        phoneButton.translatesAutoresizingMaskIntoConstraints = false    //autolayout
        phoneButton.addTarget(self, action: #selector(phoneTapped), for: .touchUpInside)
        return phoneButton
    }()
    
    private let homeButton: UIButton = {
        let homeButton = UIButton()
        let logo = UIImage(named: "logo")
        homeButton.setTitle("home", for: .normal)
        homeButton.setImage(logo, for: .normal)
        homeButton.translatesAutoresizingMaskIntoConstraints = false    //autolayout
        return homeButton
    }()
    
    @objc func gearTapped() {
        let gearB_vc = GearViewController()
        gearB_vc.modalPresentationStyle = .fullScreen
        gearB_vc.modalTransitionStyle = .crossDissolve
        present(gearB_vc, animated: true)
    }
    
    @objc func advenTapped() {
        let advenB_vc = AdventuresViewController()
        advenB_vc.modalPresentationStyle = .fullScreen
        advenB_vc.modalTransitionStyle = .crossDissolve
        present(advenB_vc, animated: true)
    }
    
    @objc func howTapped() {
        let howB_vc = HowViewController()
        howB_vc.modalPresentationStyle = .fullScreen
        howB_vc.modalTransitionStyle = .crossDissolve
        present(howB_vc, animated: true)
    }
    
    @objc func FAQTapped() {
        let FAQB_vc = FAQViewController()
        present(FAQB_vc, animated: true)
    }
    
    @objc func phoneTapped() {
        guard let phoneNumber = URL(string: "tel://" + "6037261702") else { return }
        UIApplication.shared.open(phoneNumber)
    }
    
    private func addConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        //page title
        constraints.append(pageTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(pageTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80))
        
        //home button
        constraints.append(homeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(homeButton.bottomAnchor.constraint(equalTo: pageTitle.topAnchor))
        constraints.append(homeButton.widthAnchor.constraint(equalToConstant: 75))
        constraints.append(homeButton.heightAnchor.constraint(equalToConstant: 75))
        
        //gear button
        constraints.append(gearButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 140))
        constraints.append(gearButton.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(gearButton.widthAnchor.constraint(equalToConstant: 320))
        constraints.append(gearButton.heightAnchor.constraint(equalToConstant: 190))
        
        //adven button
        constraints.append(advenButton.topAnchor.constraint(equalTo: gearButton.bottomAnchor, constant: 30))
        constraints.append(advenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(advenButton.widthAnchor.constraint(equalToConstant: 320))
        constraints.append(advenButton.heightAnchor.constraint(equalToConstant: 190))
        
        //how button
        constraints.append(howButton.topAnchor.constraint(equalTo: advenButton.bottomAnchor, constant: 30))
        constraints.append(howButton.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(howButton.widthAnchor.constraint(equalToConstant: 320))
        constraints.append(howButton.heightAnchor.constraint(equalToConstant: 190))
        
        //faq button
        constraints.append(FAQButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40))
        constraints.append(FAQButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -290))
        constraints.append(FAQButton.topAnchor.constraint(equalTo: howButton.bottomAnchor, constant: 35))
        
        //phone button
        constraints.append(phoneButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 270))
        constraints.append(phoneButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -45))
        
        constraints.append(phoneButton.topAnchor.constraint(equalTo: howButton.bottomAnchor, constant: 35))
        
        
        NSLayoutConstraint.activate(constraints)
    }
    
}
