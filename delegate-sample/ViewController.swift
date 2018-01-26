//
//  ViewController.swift
//  delegate-sample
//
//  Created by Andrew Gorzny on 2018-01-25.
//  Copyright © 2018 Andrew Gorzny. All rights reserved.
//

import UIKit

class ViewController: UIViewController, TwoDelegate {
    

    @IBAction func buttonAction(_ sender: Any) {
        self.performSegue(withIdentifier: "GoTo", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? ViewController2 {
            nextVC.myName = "My name is Andrew"
            nextVC.delegate = self
        }
    }
    
    func sendMessage(text: String) {
        print("VC One: \(text)")
    }
 
}

