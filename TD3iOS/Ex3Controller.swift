//
//  Ex3Controller.swift
//  TD3iOS
//
//  Created by Derbalil on 2017-09-08.
//  Copyright © 2017 Derbalil. All rights reserved.
//

import UIKit

class Ex3Controller: UIViewController {

    @IBOutlet weak var btnCheck: UIButton!
    @IBOutlet weak var btnCheck2: UIButton!
    @IBOutlet weak var btnCheck3: UIButton!
    @IBOutlet weak var checkBox1: UIButton!
    @IBOutlet weak var checkBox2: UIButton!
    @IBOutlet weak var checkBox3: UIButton!
    
    var numSelected = ""
    var numCkecked = ["", "", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnCheck.tag = 1
        btnCheck2.tag = 2
        btnCheck3.tag  = 3
        checkBox1.tag = 4
        checkBox2.tag = 5
        checkBox3.tag = 6
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func check(_ sender: UIButton) {
        //sender.isSelected = !sender.isSelected
        switch sender.tag
        {
        case 1: numSelected  = "Decaf"
            btnCheck.setImage(UIImage(named: "selected-button"), for: .normal)
            btnCheck2.setImage(UIImage(named: "unselected-button"), for: .normal)
            btnCheck3.setImage(UIImage(named: "unselected-button"), for: .normal)
            break
        case 2: numSelected = "Expresso"
            btnCheck.setImage(UIImage(named: "unselected-button"), for: .normal)
            btnCheck2.setImage(UIImage(named: "selected-button"), for: .normal)
            btnCheck3.setImage(UIImage(named: "unselected-button"), for: .normal)
            break
        case 3: numSelected = "Colombian"
            btnCheck.setImage(UIImage(named: "unselected-button"), for: .normal)
            btnCheck2.setImage(UIImage(named: "unselected-button"), for: .normal)
            btnCheck3.setImage(UIImage(named: "selected-button"), for: .normal)
            break
            
        case 4:
         if numCkecked[0] == "Cream"{
            checkBox1.setImage(UIImage(named: "unchecked-button"), for: .normal)
            numCkecked[0] = ""
            } else {
            checkBox1.setImage(UIImage(named: "checked-button"), for: .normal)
            numCkecked[0] = "Cream"
         }
            break
        case 5:
            if numCkecked[1] == "Milk"{
                checkBox2.setImage(UIImage(named: "unchecked-button"), for: .normal)
                numCkecked[1] = ""
            } else {
                checkBox2.setImage(UIImage(named: "checked-button"), for: .normal)
                numCkecked[1] = "Milk"
            }
            break
        case 6:
            if numCkecked[2] == "Sugar"{
                checkBox3.setImage(UIImage(named: "unchecked-button"), for: .normal)
                numCkecked[2] = ""
            } else {
                checkBox3.setImage(UIImage(named: "checked-button"), for: .normal)
                numCkecked[2] = "Sugar"
            }
            break
            
        default: print("Other...")
        }
        
    }
    @IBAction func pressProceed(_ sender: Any) {
        
        let msg = "\(numSelected) with \(numCkecked[0]) \(numCkecked[1]) \(numCkecked[2]) "
        let alertController = UIAlertController(title: "Your Coffee", message: msg, preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }
}
