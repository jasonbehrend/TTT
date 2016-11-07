//
//  WelcomeVC.swift
//  Tic Tac Toe
//
//  Created by Jason Behrend on 11/6/16.
//  Copyright © 2016 JasonBehrend. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var player1TextField: UITextField!
    @IBOutlet weak var player2TextField: UITextField!
    
    var player1Name = "Player 1"
    var player2Name = "Player 2"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func playGame(_ sender: Any) {
        
        if player1TextField.text != ""{
            player1Name = player1TextField.text!
        }
        
        if player2TextField.text != ""{
            player2Name = player2TextField.text!
        }
        
        self.performSegue(withIdentifier: "showGame", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showGame" {
            if let destinationVC = segue.destination as? PlayGameVC {
                destinationVC.player1Name = player1Name
                destinationVC.player2Name = player2Name
            }
        }
        
    }
    
    @IBAction func goBackToWelcomeScreen(sender: UIStoryboardSegue){
        print("called unwind segue")
    }

}
