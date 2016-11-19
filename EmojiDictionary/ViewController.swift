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
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        motableview.dataSource = self
        motableview.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
            }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthdate = 2009
        emoji1.category = "Smiley"
        emoji1.definition = "Cool Smiley Guy"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😀"
        emoji2.birthdate = 2009
        emoji2.category = "Smiley"
        emoji2.definition = "Happy Smiley Guy"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.birthdate = 2009
        emoji3.category = "Pooh"
        emoji3.definition = "Piece of Pooh"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😨"
        emoji4.birthdate = 2009
        emoji4.category = "Smiley"
        emoji4.definition = "Worried Smiley Guy"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👠"
        emoji5.birthdate = 2009
        emoji5.category = "Shoes"
        emoji5.definition = "Sparkling Red Shoe"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐻"
        emoji6.birthdate = 2009
        emoji6.category = "Animal"
        emoji6.definition = "Happy Hamster"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
    
}

