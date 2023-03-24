//
//  ViewController.swift
//  myProject
//
//  Created by Sophia Heinz on 2/17/23.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    let EAgreen = UIColor(named: "EA_green")
    let EAyellow = UIColor(named: "EA_yellow")

        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = EAgreen
        
        view.addSubview(gearButton)
        view.addSubview(advenButton)
        view.addSubview(howButton)
        view.addSubview(FAQButton)
        view.addSubview(phoneButton)
        view.addSubview(homeButton)
        view.addSubview(cartButton)
        
        let label = UILabel(frame: CGRect(x: 156, y: 70, width: 200, height: 20))
        label.text = "Effortless"
        label.textColor = EAyellow
        label.font = .boldSystemFont(ofSize: 20)
        let label1 = UILabel(frame: CGRect(x: 153, y: 92, width: 200, height: 20))
        label1.text = "Adventure"
        label1.textColor = EAyellow
        label1.font = .boldSystemFont(ofSize: 20)
        view.addSubview(label)
        view.addSubview(label1)

        

    }
    
    private let gearButton: UIButton = {
        let gearButton = UIButton()
        let GearImage = UIImage(named: "Gear")
        gearButton.setTitle("Gear", for: .normal)
        gearButton.setImage(GearImage, for: .normal)
        gearButton.frame = CGRect(x: 30, y: 155, width: 335, height: 175)
        gearButton.layer.cornerRadius = 25
        gearButton.addTarget(self, action: #selector(gearTapped), for: .touchUpInside)
        return gearButton
    }()
    
    private let advenButton: UIButton = {
        let advenButton = UIButton()
        let AdvenImage = UIImage(named: "Adventure")
        advenButton.setTitle("Adventures", for: .normal)
        advenButton.setImage(AdvenImage, for: .normal)
        //advenButton.layer.borderColor = .yellow
        advenButton.frame = CGRect(x: 30, y: 360, width: 335, height: 175)
        advenButton.layer.cornerRadius = 50
        advenButton.addTarget(self, action: #selector(advenTapped), for: .touchUpInside)
        return advenButton
    }()
    
    private let howButton: UIButton = {
        let howButton = UIButton()
        let HowImage = UIImage(named: "How")
        howButton.setTitle("How it works", for: .normal)
        howButton.setImage(HowImage, for: .normal)
        howButton.frame = CGRect(x: 30, y: 565, width: 335, height: 175)
        howButton.layer.cornerRadius = 25
        howButton.addTarget(self, action: #selector(howTapped), for: .touchUpInside)
        return howButton
    }()
    
    private let FAQButton: UIButton = {
        let FAQButton = UIButton()
        let EAyellow = UIColor(named: "EA_yellow")
        FAQButton.setTitle("FAQ's", for: .normal)
        FAQButton.setTitleColor(EAyellow, for: .normal)
        FAQButton.frame = CGRect(x: 60, y: 790, width: 75, height: 25)
        FAQButton.addTarget(self, action: #selector(FAQTapped), for: .touchUpInside)
        return FAQButton
    }()
    
    private let phoneButton: UIButton = {
        let phoneButton = UIButton()
        let EAyellow = UIColor(named: "EA_yellow")
        phoneButton.setTitle("Contact Us", for: .normal)
        phoneButton.setTitleColor(EAyellow, for: .normal)
        phoneButton.frame = CGRect(x: 240, y: 790, width: 100, height: 25)
        phoneButton.addTarget(self, action: #selector(phoneTapped), for: .touchUpInside)
        return phoneButton
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
        cartButton.frame = CGRect(x: 305, y: 66, width: 50, height: 50)
        cartButton.addTarget(self, action: #selector(cartTapped), for: .touchUpInside)
        return cartButton
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
   /*
    var name = [name]() //fooditem food
    var moc:NSManagedObjectContext!
    let appDelegate = UIApplication.shared.delegate as? AppDelegate

    @IBAction func addCustomerToDatabase (_ sender: UIButton) {
        let name = Name(context: moc)
        name.added = NSData()
    
    }
    */
    
    }
    



