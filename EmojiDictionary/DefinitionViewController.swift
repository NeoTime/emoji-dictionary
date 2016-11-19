//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Jefferey Rigler on 11/18/16.
//  Copyright © 2016 RiglerDigital. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
       
        if emoji == "🐻" {
            definitionLabel.text = "Cute Baby Bear"
        }
        
        if emoji == "😎" {
            definitionLabel.text = "Cool Smiley Guy"
        }
        
        if emoji == "💩" {
            definitionLabel.text = "A Pile of Stinking Poo"
        }
        
        if emoji == "👠" {
            definitionLabel.text = "Sparkling Red Shoe"
        }
        
        if emoji == "😀" {
            definitionLabel.text = "Happy Smiley Guy"
        }
        
        if emoji == "😨" {
            definitionLabel.text = "Worried Smiley Guy"
        }

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
