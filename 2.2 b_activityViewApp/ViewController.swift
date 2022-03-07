//
//  ViewController.swift
//  2.2 b_activityViewApp
//
//  Created by mairo on 07/03/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func experiment() {
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(controller, animated: true, completion: nil) // self.present works, can skip
    }
}

/*
 In AppDelegate.swift file folowing error occurs when I run this code for iPad instead of iPhone:
 
 Thread 1: "UIPopoverPresentationController (<UIPopoverPresentationController: 0x123007290>) should have a non-nil sourceView or barButtonItem set before the presentation occurs."
 */

/*
 when using:
 (sender: Any)
 
 Error:
 Thread 1: "-[__2_b_activityViewApp.ViewController experiment]: unrecognized selector sent to instance 0x1598059c0"
 
 when using:
 (sender: UIButton)
 
 Error:
 Thread 1: "-[__2_b_activityViewApp.ViewController experiment]: unrecognized selector sent to instance 0x153808360"
 */

