//
//  ViewController.swift
//  PassingDataWithTwoViewContoller
//
//  Created by iFlame on 5/19/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var mystring = ""

    @IBOutlet var textMyName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if textMyName.text != "" {
        performSegue(withIdentifier: "Go", sender: self)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let second = segue.destination as! SeconfVc
        
        second.myString1 = textMyName.text!
    }

}

