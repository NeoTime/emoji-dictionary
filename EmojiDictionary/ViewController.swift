//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Jefferey Rigler on 11/14/16.
//  Copyright © 2016 RiglerDigital. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var motableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        motableview.dataSource = self
        motableview.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

