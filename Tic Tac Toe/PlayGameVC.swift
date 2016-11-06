//
//  PlayGameVC.swift
//  Tic Tac Toe
//
//  Created by Jason Behrend on 11/6/16.
//  Copyright © 2016 JasonBehrend. All rights reserved.
//

import UIKit

class PlayGameVC: UIViewController {
    
    var player1Name = "Joe"
    var player2Name = "Bob"
    
    @IBOutlet weak var player1Label: UILabel!
    @IBOutlet weak var player2Label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        player1Label.text = player1Name
        player2Label.text = player2Name

        // Do any additional setup after loading the view.
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
