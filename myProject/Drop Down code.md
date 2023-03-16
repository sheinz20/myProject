import DropDown

class ViewController: UIViewController {
    //DROP DOWN MENU
    let menu: DropDown = {
        let menu = DropDown()
        menu.dataSource = [
            "Rental Equipment",
            "Buy an Adventure",
            "AMC Hut Packages"
        ]
        return menu
    }()
    
    let EAgreen_color = UIColor(named: "EA_green")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = EAgreen_color
        let myView = UIView(frame: navigationController?.navigationBar.frame ?? .zero)
        myView.backgroundColor = .gray
        navigationController?.navigationBar.topItem?.titleView = myView
        guard let topView = navigationController?.navigationBar.topItem?.titleView else {
            return
        }
        
        menu.anchorView = topView
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapTopItem))
        gesture.numberOfTapsRequired = 1
        gesture.numberOfTouchesRequired = 1
        topView.addGestureRecognizer(gesture)
        
        menu.selectionAction = { index, title in
            print ("index \(index) and \(title)")
        }
        
    }
    
    @objc func didTapTopItem() {
        menu.show()
    }
    
    
}










class SecondViewController: UIViewController {
    let EAyellow = UIColor(named: "EA_yellow")
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = EAyellow
    }
    
}





    @IBAction func didTapButton(sender: AnyObject){
        guard let page = sender as? UIButton else {return}
        switch page {
        case 1:
            let r_vc = storyboard?.instantiateViewController(withIdentifier: "rental_vc") as! RentalsViewController
            present(r_vc, animated: true)
            break
        case 2:
            let a_vc = storyboard?.instantiateViewController(withIdentifier: "adventure_vc") as! AdventuresViewController
            present(a_vc, animated: true)
            break
        case 3:
            let g_vc = storyboard?.instantiateViewController(withIdentifier: "gear_vc") as! GearViewController
            present(g_vc, animated: true)
            break
        default:
            break
        }
        
        
    }
