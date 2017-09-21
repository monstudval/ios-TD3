//
//  Item3Controller.swift
//  TD3iOS
//
//  Created by Derbalil on 2017-09-15.
//  Copyright © 2017 Derbalil. All rights reserved.
//

import UIKit

class Ex4Controller: UIViewController {

    @IBOutlet weak var imageFlag: UIImageView!
    
    @IBOutlet weak var btn_1: UIButton!
    @IBOutlet weak var btn_2: UIButton!
    @IBOutlet weak var btn_3: UIButton!
    @IBOutlet weak var btn_4: UIButton!
    
    
    var boutons: [UIButton] = [UIButton]() // Empty UIButton array
    
    let drapeaux = ["Lebanon", "Maldives", "Pakistan", "Senegal", "South_Africa", "the_Netherlands", "China", "Ukraine", "Uruguay", "Venezuela"]
    
    var num_question = 0
    var randDrapeau : Int = 0
    var randBouton : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //manage buttons
        self.btn_1.tag=1
        self.btn_2.tag=2
        self.btn_3.tag=3
        self.btn_4.tag=4
        
        self.boutons = [self.btn_1, self.btn_2, self.btn_3, self.btn_4]
     
        self.setImageViewFlag()
        self.setButtonsTitle()
        self.num_question += 1
        
    }
    

    @IBAction func btnClicked(_ sender: UIButton) {
        
        var answer:String?
        var clickedButton : Int = 0
        switch sender.tag {
            case 1: answer = self.btn_1.title(for: .normal)
                    clickedButton = 0
            case 2: answer = self.btn_2.title(for: .normal)
                    clickedButton = 1
            case 3: answer = self.btn_3.title(for: .normal)
                    clickedButton = 2
            case 4: answer = self.btn_4.title(for: .normal)
                    clickedButton = 3
            default: ()
        }
        
        if answer! == self.drapeaux[self.randDrapeau]{
            self.boutons[self.randBouton].backgroundColor = UIColor(red: 50/255,
                                                                    green: 180/255,
                                                                    blue: 50/255,
                                                                    alpha: 1.0)
        }else{
            self.boutons[clickedButton].backgroundColor = UIColor(red: 180/255,
                                                                  green: 50/255,
                                                                  blue: 50/255,
                                                                  alpha: 1.0)
            self.boutons[self.randBouton].backgroundColor = UIColor(red: 50/255,
                                                                    green: 180/255,
                                                                    blue: 50/255,
                                                                    alpha: 1.0)
        }
        
        if self.num_question < 5 {
            //delay of 2 seconds
            let when = DispatchTime.now() + 2
            DispatchQueue.main.asyncAfter(deadline: when) {
                // Your code with delay
                self.setImageViewFlag()
                self.setButtonsTitle()
                self.num_question += 1
            }
        } else{
            let alertController = UIAlertController(title: "Quiz", message: "The end !", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
        }
      
        
    }
    
    func setImageViewFlag(){
        self.randDrapeau = Int(arc4random_uniform(UInt32(self.drapeaux.count)))
        self.imageFlag.image = UIImage(named: self.drapeaux[self.randDrapeau])
    }
    
    func setButtonsTitle(){
        
        
        self.randBouton = Int(arc4random_uniform(4))
        self.boutons[randBouton].setTitle(self.drapeaux[self.randDrapeau], for: .normal)
        
        var duplicateDrapeaux = self.drapeaux.map{ $0 }
        duplicateDrapeaux.remove(at: self.randDrapeau)
        for index in 0...3 {
            self.boutons[index].backgroundColor = UIColor(red: 0xfd/255,
                                                          green: 0xe8/255,
                                                          blue: 0xd7/255,
                                                          alpha: 1.0)
            if index != self.randBouton {
                let rand = Int(arc4random_uniform(UInt32(duplicateDrapeaux.count)))
                self.boutons[index].setTitle(duplicateDrapeaux[rand], for: .normal)
            }
        }
        
    }
    
    

}
