//
//  FAQcustomViews.swift
//  myProject
//
//  Created by Sophia Heinz on 3/19/23.
//


import UIKit

class FAQDropCell: UITableViewCell {
    
    var data: FAQlist? {
        didSet {
            guard let data = data else { return }
            self.question.text = data.question
            self.answer.text = data.answer
        }
    }
    
    func animate() {
        UIView.animate(withDuration: 0.25, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.contentView.layoutIfNeeded()
        })
    }
    
    fileprivate let question: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.text = "questions"
        label.textColor = EAgreen
        label.textAlignment = .center
        label.numberOfLines = -1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    fileprivate let answer: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.text = "answers"
        label.textColor = EAgreen
        label.numberOfLines = -1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let container: UIView = {
       let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.clipsToBounds = true
        v.backgroundColor = EAyellow
        v.layer.cornerRadius = 8
        return v
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(container)
        container.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4).isActive = true
        container.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4).isActive = true
        container.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4).isActive = true
        container.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4).isActive = true
        
        container.addSubview(question)
        container.addSubview(answer)
        
        question.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
        question.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 4).isActive = true
        question.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -4).isActive = true
        question.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        answer.topAnchor.constraint(equalTo: question.bottomAnchor).isActive = true
        answer.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 4).isActive = true
        answer.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -4).isActive = true
        answer.heightAnchor.constraint(equalToConstant: 550).isActive = true
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
