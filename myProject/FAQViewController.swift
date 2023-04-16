//
//  FAQViewController.swift
//  myProject
//
//

import UIKit

class FAQViewController: UIViewController {
    
    let tableView: UITableView = {
        let tb = UITableView()
        tb.translatesAutoresizingMaskIntoConstraints = false
        return tb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let EAgreen = UIColor(named: "EA_green")
        
        //tableView.rowHeight = UITableView.automaticDimension

        view.backgroundColor = EAgreen
        setupTableView()
        
    }
    
    fileprivate func setupTableView() {
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        tableView.register(FAQDropCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = EAgreen
    }
    
    
    let data = [
        FAQlist(question: "Can I rent camping gear?", answer: "Yes! Camping gear rentals in New Hampshire’s White Mountains are what we do.  No Gear? No Problem."),
        FAQlist(question:"What is the cancellation policy for rental camping gear?", answer: "Rental camping gear canceled 10 days before the start of your rental will be given a full refund. Cancel 3 days before the start of your rental for a 50% refund, and 50% store credit. Cancel with less than 3 days before the start of your rental and you will not be given a refund. To cancel a rental order, contact us at 603-726-1702."),
        FAQlist(question: "What is the cancellation policy for guided adventures?", answer: "A guided adventure cancelled 60 days before the first day of the trip will be given a full refund. A guided adventure cancelled 30 days before the first day of the trip will be given a 50% refund, and 50 % in store credit. Cancel with less than 7 days notice to the first day of the trip and you will not be given a refund. To cancel, contact us at 603-726-1702."),
        FAQlist(question: "What is the cancellation policy for self-guided itineraries?", answer: "Any cancellation with more than 7 days notice gets full store credit in the amount they paid for the adventure. There will be no cash or credit refunds. With less than 7 days notice, there will be no cancellations. Call 603-726-1702 to cancel."),
        FAQlist(question: "Where should I go camping?", answer: "The White Mountain National Forest and surrounding areas have a plethora of campground options! When booking your camping gear rental, check the “add a campsite” box at checkout. Someone from our team will reach out and set you up with the perfect site for you!"),
        FAQlist(question: "Where are we located?", answer: "Our 24 hour pick-up location is located at 231 Main Street Plymouth, New Hampshire. \n 1.5 hours up I-93 from Boston, Massachusetts \n 2 hours south of Portland, Maine \n 5 hours north of New York City, New York"),
        FAQlist(question:"How long can I rent camping gear for?", answer:"On our website you will find that we provide rentals up to 6 nights. If you are interested in renting our gear for a longer duration though please contact us by phone at (603)-726-1702 or by email at info@effortlessadventure.com."),
        FAQlist(question: "Can I still go camping if I don't have a car?", answer:"Yes you can! We’ve partnered with Ridj-It, the online community platform providing a safe and fun way to find partners, car-pools and events when your ready for your next adventure. You can find upcoming adventures with Ridj-it on our Social Adventures page. There is also reliable bus service from South Station in Boston to Plymouth, NH via Concord Coach Lines. With some notice, we may be able to accommodate."),
        FAQlist(question: "I've never camped before, how will I know what to do?", answer:"No experience, no problem! All of our gear rentals come with detailed tips and instructions ahead of time to keep things as simple as possible for you. Our gear is reliable, easy to set up, and easy to use! We also have self-guided itineraries where we provide you with the plans, gear and reservations. Setting you up for an adventure at your own pace. If you are looking for all the excitement that comes out of planning and executing a trip but just need the gear, all of our camping gear rentals come with an educational folder of directions and suggestions that we created specifically with never ever campers in mind. As always, feel free to contact us and we are happy to help."),
        FAQlist(question: "Will I recieve a refund if I return my rental camping gear early?", answer:"Unfortunately we can’t provide refunds for ending trips early. If you do have any questions or concerns though please feel free to call us at (603)-726-1702 or email at info@effortlessadventure.com." ),
        FAQlist(question: "What happens if I lose or break gear?", answer:"We pride ourselves in choosing gear that can stand up to those who have never camped before. If something does happen though don’t worry we will work with you in figuring out the fairest solution to the problem. Please don’t try to hide it from us though as we do a thorough inspection of the camping gear after each rental. If you have any questions don’t hesitate to reach out."),
        FAQlist(question: "How often is camping gear cleaned?", answer:"We pride ourselves in keeping our gear extremely clean. After every rental we thoroughly go through the rental camping gear fully washing the sleeping bags, cooking equipment and tents also checking for any damages. Making sure everything is crisp and clean, for your next adventure."),
        FAQlist(question: "What is the largest group that I can rent camping gear for?", answer:"We would be more than happy to help figure out your group plans no matter the size. Head on over to our Custom Adventures page and fill our our quick and easy Effortless Questionnaire to give us a better idea of how we can help you. If you are more interested in contacting us personally feel free to reach out to us over phone at (603)-726-1702 or by email at info@effortlessadventure.com."),
        FAQlist(question: "When can I pickup and drop off my rental camping gear?", answer:"As a 24 hour store you can pickup your gear any time on the day of your trip. If there is any reason that you may need to change your pickup day please reach out to us by phone at (603)-726-1702 or email at info@effortlessadventure.com. Generally speaking, we can be very flexible on pick-up times as long as we know ahead of time."),
        FAQlist(question: "How does the rental camping gear pickup and drop off process work?", answer:"\nPick up: On the morning of your rental, you’ll receive a text message indicating a Door Code, Locker Number, and Locker Combination. Make sure to save this information as it will be used for both your pick-up and drop-off. We will stock your locker with the rental gear you have ordered by the pick-up time. You are then free to stop by and pickup your rental camping gear at the most convenient time for you. \n\n Drop Off: You can drop off the camping gear in the same locker using the codes that you were provided with to pickup your gear. The latest that you can drop off the gear is by 7pm on the last day of your rental period. If you are running late, let us know! As long as you communicate with us as to your new return time or you’d like to extend your trip, we won’t charge a late return fee.")
    ]
    
    var selectedIndex: IndexPath = IndexPath(row: 0, section: 0)
    
}

struct FAQlist {
    var question: String
    var answer: String
}

extension FAQViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if selectedIndex == indexPath { return 650 }
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FAQDropCell
        cell.data = data[indexPath.row]
        cell.selectionStyle = .none
        cell.animate()
        cell.backgroundColor = EAgreen
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath
        
        tableView.beginUpdates()
        tableView.reloadRows(at: [selectedIndex], with: .none)
        tableView.endUpdates()
    }
    
    
}

