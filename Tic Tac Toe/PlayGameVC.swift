//
//  PlayGameVC.swift
//  Tic Tac Toe
//
//  Created by Jason Behrend on 11/6/16.
//  Copyright © 2016 JasonBehrend. All rights reserved.
//

import UIKit

class PlayGameVC: UIViewController {
    
    var player1Name = ""
    var player2Name = ""
    
    @IBOutlet weak var player1Label: UILabel!
    @IBOutlet weak var player2Label: UILabel!
    
    @IBOutlet weak var Square1: UIButton!
    @IBOutlet weak var Square2: UIButton!
    @IBOutlet weak var Square3: UIButton!
    @IBOutlet weak var Square4: UIButton!
    @IBOutlet weak var Square5: UIButton!
    @IBOutlet weak var Square6: UIButton!
    @IBOutlet weak var Square7: UIButton!
    @IBOutlet weak var Square8: UIButton!
    @IBOutlet weak var Square9: UIButton!
    
    @IBOutlet weak var playerTurnLabel: UILabel!
    
    var clicked1 = false
    var clicked2 = false
    var clicked3 = false
    var clicked4 = false
    var clicked5 = false
    var clicked6 = false
    var clicked7 = false
    var clicked8 = false
    var clicked9 = false
    
    var openSpots = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    let Player1 = player()
    let Player2 = player()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        player1Label.text = ("\(player1Name): X")
        player2Label.text = ("\(player2Name): O")
        
        Player2.playing()
        updateLabels()

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

    @IBAction func square1(_ sender: Any) {
        if clicked1 == false{
            if Player1.turn == true{
                Square1.tintColor = UIColor.red
                Square1.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                clicked1 = true
                Player1.remove(num: 1)
            }
            else if Player2.turn == true{
                Square1.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                clicked1 = true
                Player2.remove(num: 1)
            }
            Player1.playing()
            Player2.playing()
            
            openSpots = openSpots.filter() {$0 != 1}
            updateLabels()
            check()
        }

    }
    
    @IBAction func square2(_ sender: Any) {
        if clicked2 == false{
            if Player1.turn == true{
                Square2.tintColor = UIColor.red
                Square2.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                clicked2 = true
                Player1.remove(num: 2)
                
            }
            else if Player2.turn == true{
                Square2.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                clicked2 = true
                Player2.remove(num: 2)
            }
            Player1.playing()
            Player2.playing()
            
            openSpots = openSpots.filter() {$0 != 2}
            updateLabels()
            check()
        }
    }
   
    @IBAction func square3(_ sender: Any) {
        if clicked3 == false{
            if Player1.turn == true{
                Square3.tintColor = UIColor.red
                Square3.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                clicked3 = true
                Player1.remove(num: 3)
                
            }
            else if Player2.turn == true{
                Square3.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                clicked3 = true
                Player2.remove(num: 3)
            }
            Player1.playing()
            Player2.playing()
            
            openSpots = openSpots.filter() {$0 != 3}
            updateLabels()
            check()
        }

    }
    
    @IBAction func square4(_ sender: Any) {
        if clicked4 == false{
            if Player1.turn == true{
                Square4.tintColor = UIColor.red
                Square4.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                clicked4 = true
                Player1.remove(num: 4)
            }
            else if Player2.turn == true{
                Square4.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                clicked4 = true
                Player2.remove(num: 4)
            }
            
            Player1.playing()
            Player2.playing()
            
            openSpots = openSpots.filter() {$0 != 4}
            updateLabels()
            check()
        }

    }
    
    @IBAction func square5(_ sender: Any) {
        if clicked5 == false{
            if Player1.turn == true{
                Square5.tintColor = UIColor.red
                Square5.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                clicked5 = true
                Player1.remove(num: 5)
            }
            else if Player2.turn == true{
                Square5.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                clicked5 = true
                Player2.remove(num: 5)
            }
            Player1.playing()
            Player2.playing()
            
            openSpots = openSpots.filter() {$0 != 5}
            updateLabels()
            check()
        }

    }
    
    @IBAction func square6(_ sender: Any) {
        if clicked6 == false{
            if Player1.turn == true{
                Square6.tintColor = UIColor.red
                Square6.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                clicked6 = true
                Player1.remove(num: 6)
            }
            else if Player2.turn == true{
                Square6.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                clicked6 = true
                Player2.remove(num: 6)
            }
            Player1.playing()
            Player2.playing()
            
            openSpots = openSpots.filter() {$0 != 6}
            updateLabels()
            check()
        }

    }

    @IBAction func square7(_ sender: Any) {
        if clicked7 == false{
            if Player1.turn == true{
                Square7.tintColor = UIColor.red
                Square7.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                clicked7 = true
                Player1.remove(num: 7)
            }
            else if Player2.turn == true{
                Square7.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                clicked7 = true
                Player2.remove(num: 7)
            }
            Player1.playing()
            Player2.playing()
            
            openSpots = openSpots.filter() {$0 != 7}
            updateLabels()
            check()
        }

    }
    
    @IBAction func square8(_ sender: Any) {
        if clicked8 == false{
            if Player1.turn == true{
                Square8.tintColor = UIColor.red
                Square8.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                clicked8 = true
                Player1.remove(num: 8)
            }
            else if Player2.turn == true{
                Square8.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                clicked8 = true
                Player2.remove(num: 8)
            }
            Player1.playing()
            Player2.playing()
            
            openSpots = openSpots.filter() {$0 != 8}
            updateLabels()
            check()
        }
    }

    
    @IBAction func square9(_ sender: Any) {
        if clicked9 == false{
            if Player1.turn == true{
                Square9.tintColor = UIColor.red
                Square9.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                clicked9 = true
                Player1.remove(num: 9)
            }
            else if Player2.turn == true{
                Square9.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                clicked9 = true
                Player2.remove(num: 9)
            }
            Player1.playing()
            Player2.playing()
            
            openSpots = openSpots.filter() {$0 != 9}
            updateLabels()
            check()
        }

    }

        
    
    
    func check(){
        Player1.check()
        Player2.check()

        
        if Player1.win == true{
            Player1.turn = false
            Player2.turn = false
            playerTurnLabel.text = ("\(player1Name) Won!")
        }
        
        if Player2.win == true{
            Player1.turn = false
            Player2.turn = false
            playerTurnLabel.text = ("\(player2Name) Won!")
        }
        
        if openSpots == []{
            if Player1.win == false{
                if Player2.win == false{
                    playerTurnLabel.text = "It's a Tie"
                }
            }
        }
        
    }
    
    func updateLabels(){
        if Player1.turn == true{
            playerTurnLabel.text = ("\(player1Name)'s Turn")
        }
        else if Player2.turn == true{
            playerTurnLabel.text = ("\(player2Name)'s Turn")
        }
    }
}

