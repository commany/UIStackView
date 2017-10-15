//
//  CustomView.swift
//  UIStackView
//
//  Created by commany_mac on 2017. 9. 30..
//  Copyright © 2017년 CommanyShin. All rights reserved.
//

import UIKit

class CustomView: UIView {
	
	let nibName = "CustomView"
	var view : UIView!
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		xibSetUp()
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		xibSetUp()
	}
	
	func xibSetUp() {
		view = loadViewFromNib()
		view.frame = self.bounds
		view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
		addSubview(view)
	}
	
	func loadViewFromNib() -> UIView {
		let bundle = Bundle(for: type(of: self))
		let nib = UINib(nibName: nibName, bundle: bundle)
		let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
		return view
	}
	
	@IBAction func dismissPressed(_ sender: UIButton) {
		view.removeFromSuperview()
	}
}
