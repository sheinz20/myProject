//
//  ViewController.swift
//  myProject
//
//  Created by Sophia Heinz on 2/17/23.
//

import UIKit

class ViewController: UIViewController {
    let EAgreen = UIColor(named: "EA_green")
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = EAgreen
    }
    
    //let page = 1
    
    @IBAction func tapGearButton(){
        let g_vc = storyboard?.instantiateViewController(withIdentifier: "gear_vc") as! GearViewController
        present(g_vc, animated: true)
        }
    @IBAction func tapAdventureButton(){
        let a_vc = storyboard?.instantiateViewController(withIdentifier: "adventure_vc") as! AdventuresViewController
        present(a_vc, animated: true)
        }
    @IBAction func tapHowButton(){
        let g_vc = storyboard?.instantiateViewController(withIdentifier: "how_vc") as! HowViewController
        present(g_vc, animated: true)
        }
    @IBAction func tapFAQButton(){
        let f_vc = storyboard?.instantiateViewController(withIdentifier: "faq_vc") as! FAQViewController
        present(f_vc, animated: true)
        }
    @IBAction func makePhoneCall() {
        guard let phoneNumber = URL(string: "tel://" + "6037261702") else { return }
        UIApplication.shared.open(phoneNumber)
    }
    
    
    
    }
    



