//
//  Ex2Controller.swift
//  TD3iOS
//
//  Created by Derbalil on 2017-09-19.
//  Copyright © 2017 Derbalil. All rights reserved.
//

import UIKit

class Ex2Controller: UIViewController {

    @IBOutlet weak var txtAmount: UITextField!
    @IBOutlet weak var txtPercent: UITextField!
    @IBOutlet weak var lblTotal: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func computeTotal(_ sender: Any) {
     
        let amount = Float(txtAmount.text!)
        let percent = Float(txtPercent.text!)
        
        let total = amount! * (1 + percent!/100)
        
        lblTotal.text = String("Total = \(total) $")
        
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
