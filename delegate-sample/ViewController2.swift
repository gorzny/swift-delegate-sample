//
//  ViewController2.swift
//  delegate-sample
//
//  Created by Andrew Gorzny on 2018-01-25.
//  Copyright © 2018 Andrew Gorzny. All rights reserved.
//

import UIKit

protocol TwoDelegate: class {
    func sendMessage(text: String)
}

class ViewController2: UIViewController {

    var myName: String = ""
    var delegate: TwoDelegate?
    
    @IBAction func buttonAction(_ sender: Any) {
                delegate?.sendMessage(text: "and my fav colour is Blue")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("\(self.myName)")
        

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
