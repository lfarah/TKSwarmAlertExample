//
//  ViewController.swift
//  TestSwarmAlert
//
//  Created by Lucas Farah on 6/8/16.
//  Copyright © 2016 Lucas Farah. All rights reserved.
//

import UIKit
import TKSwarmAlert
import EZSwiftExtensions

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

		NSTimer.runThisAfterDelay(seconds: 5) {

			let width = self.view.frame.width - 30
			let myView1 = UIView(x: 15, y: self.view.center.y - 50, w: width, h: 60)
			myView1.backgroundColor = .redColor()

			let myView2 = UIView(x: 15, y: self.view.center.y - 50, w: width, h: 60)
			myView2.backgroundColor = .greenColor()

			let myView3 = UIView(x: 15, y: self.view.center.y - 50, w: width, h: 60)
			myView3.backgroundColor = .blueColor()

			let alert = TKSwarmAlert()
			alert.show(type: .BrightBlur, views: [myView1, myView2, myView3])
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

}

