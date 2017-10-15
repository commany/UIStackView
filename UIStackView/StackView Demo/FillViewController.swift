//
//  FillViewController.swift
//  UIStackView
//
//  Created by commany_mac on 2017. 9. 30..
//  Copyright © 2017년 CommanyShin. All rights reserved.
//

import UIKit

class FillViewController: UIViewController {

	@IBOutlet weak var stackView: UIStackView!
	
	override func viewDidLoad() {
        super.viewDidLoad()

		//addSubviews()

    }

	func addSubviews() {
		/*
		//Image View
		let imageView = UIImageView()
		imageView.backgroundColor = UIColor.blue
		imageView.heightAnchor.constraint(equalToConstant: 120.0).isActive = true
		imageView.widthAnchor.constraint(equalToConstant: 120.0).isActive = true
		imageView.image = UIImage(named: "buttonFollowCheckGreen")
		
		//Text Label
		let textLabel = UILabel()
		textLabel.backgroundColor = UIColor.yellow
		textLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
		textLabel.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
		textLabel.text  = "Hi World"
		textLabel.textAlignment = .center
		
		//Stack View
		let stackView   = UIStackView()
		stackView.axis  = UILayoutConstraintAxis.vertical
		stackView.distribution  = UIStackViewDistribution.equalSpacing
		stackView.alignment = UIStackViewAlignment.center
		stackView.spacing   = 16.0
		
		stackView.addArrangedSubview(imageView)
		stackView.addArrangedSubview(textLabel)
		stackView.translatesAutoresizingMaskIntoConstraints = false
		
		self.view.addSubview(stackView)
		
		//Constraints
		stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
		stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true

		

		let subviews = (0..<3).map { (Int) -> CustomView in
			return (UINib(nibName: "CustomView", bundle: nil).instantiate(withOwner: self, options: nil).first as? CustomView)!
		}
		
		print (subviews)
		
		subviews[0].backgroundColor = UIColor.red
		subviews[0].height = 3.0
		subviews[1].backgroundColor = UIColor.green
		subviews[1].height = 2.0
		subviews[2].backgroundColor = UIColor.blue
		subviews[2].height = 1.0
		
		subviews.forEach { (view) in
				stackView.addArrangedSubview(view)
		}
		*/
		
		let subView = UINib(nibName: "CustomView", bundle: nil).instantiate(withOwner: self, options: nil).first as! CustomView
		subView.backgroundColor = UIColor.red
		// subView.height = 3.0
		self.view.addSubview(subView)
		//stackView.addArrangedSubview(subView)
		
	}
}
