//
//  EmojiViewController.swift
//  UIStackView
//
//  Created by commany_mac on 2017. 9. 29..
//  Copyright © 2017년 CommanyShin. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    
    @IBOutlet var emojiButtons: [UIButton]! {
        didSet {
            emojiButtons.forEach {
                $0.isHidden = true
            }
        }
    }
    
    @IBAction func onSettingsButtonTap(_ sender: AnyObject) {        
        UIView.animate(withDuration: 0.5) {
            self.emojiButtons.forEach {
                $0.isHidden = !$0.isHidden
            }
        }
    }
	
	@IBOutlet weak var viewB: UIView!
	@IBOutlet weak var viewC: UIView!
	
	@IBOutlet weak var viewBLabel: UILabel!
	@IBOutlet weak var viewCLabel: UILabel!
	
	@IBAction func toggleBButtonTapped(_ sender: UIButton) {
		UIView.animate(withDuration: 0.3) {
			self.viewBLabel.isHidden = !self.viewBLabel.isHidden
			self.viewB.isHidden = !self.viewB.isHidden
		}
	}
	
	@IBAction func toggleCButtonTapped(_ sender: UIButton) {
		UIView.animate(withDuration: 0.3) {
			self.viewCLabel.isHidden = !self.viewCLabel.isHidden
			self.viewC.isHidden = !self.viewC.isHidden
		}
	}
	
	@IBOutlet weak var stackView: UIStackView!
	
	override func viewDidLoad() {
        super.viewDidLoad()

        settingSpaceing()
    }

	func settingSpaceing() {
		// iOS 11 only
		self.stackView.setCustomSpacing(5, after: viewB)
		self.stackView.setCustomSpacing(10, after: viewC)
	}
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
