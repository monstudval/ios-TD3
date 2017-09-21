//
//  Ex1Controller.swift
//  TD3iOS
//
//  Created by Derbalil on 2017-09-08.
//  Copyright © 2017 Derbalil. All rights reserved.
//

import UIKit

class Ex1Controller: UIViewController {

    @IBOutlet weak var lbl_counter: UILabel!
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl_counter.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func decreaseCounter(_ sender: Any) {
        counter -= 1
        lbl_counter.text  = String(counter)
    }

    @IBAction func increaseCounter(_ sender: Any) {
        counter += 1
        lbl_counter.text  = String(counter)
    }
}
