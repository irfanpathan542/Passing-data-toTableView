//
//  SeconfVc.swift
//  PassingDataWithTwoViewContoller
//
//  Created by iFlame on 5/19/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class SeconfVc: UIViewController {
     var myString1 = ""

    @IBOutlet var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = myString1

        // Do any additional setup after loading the view.
    }

    @IBAction func nextPressed(_ sender: Any) {
        
        if myLabel.text != ""{
            performSegue(withIdentifier: "Next", sender: self)
    }
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let tableViewController = segue.destination as! TableViewController
        
        tableViewController.myString = myLabel.text!
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion:nil)
    }

  
}
