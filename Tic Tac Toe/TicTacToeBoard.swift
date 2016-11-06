//
//  TicTacToeBoard.swift
//  Tic Tac Toe
//
//  Created by Jason Behrend on 10/30/16.
//  Copyright © 2016 JasonBehrend. All rights reserved.
//

import UIKit

class TicTacToeBoard: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var Square1: UIButton!
    @IBOutlet weak var Square2: UIButton!
    @IBOutlet weak var Square3: UIButton!
    @IBOutlet weak var Square4: UIButton!
    @IBOutlet weak var Square5: UIButton!
    @IBOutlet weak var Square6: UIButton!
    @IBOutlet weak var Square7: UIButton!
    @IBOutlet weak var Square8: UIButton!
    @IBOutlet weak var Square9: UIButton!
    
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var p1name: UITextField!
    @IBOutlet weak var p2name: UITextField!
    @IBOutlet weak var p1: UILabel!
    @IBOutlet weak var p2: UILabel!
    
    let Player1 = player()
    let Player2 = player()
    
    
    var clicked1 = false
    var clicked2 = false
    var clicked3 = false
    var clicked4 = false
    var clicked5 = false
    var clicked6 = false
    var clicked7 = false
    var clicked8 = false
    var clicked9 = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(p1.text!)
        
        
        Player2.playing()
        
        // Do any additional setup after loading the view.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func square1(_ sender: Any) {
        if clicked1 == false{
            if Player1.turn == true{
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
            
            check()
        }
    }
    
    @IBAction func square2(_ sender: Any) {
        if clicked2 == false{
            if Player1.turn == true{
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
            
            check()
        }
    }
    
    @IBAction func square3(_ sender: Any) {
        if clicked3 == false{
            if Player1.turn == true{
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
            
            check()
        }
    }
    
    @IBAction func square4(_ sender: Any) {
        if clicked4 == false{
            if Player1.turn == true{
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
            
            check()
        }
    }
    
    @IBAction func square5(_ sender: Any) {
        if clicked5 == false{
            if Player1.turn == true{
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
            
            check()
        }
    }
    
    @IBAction func square6(_ sender: Any) {
        if clicked6 == false{
            if Player1.turn == true{
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
            
            check()
        }
    }
    
    @IBAction func square7(_ sender: Any) {
        if clicked7 == false{
            if Player1.turn == true{
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
            
            check()
        }
    }
    
    @IBAction func square8(_ sender: Any) {
        if clicked8 == false{
            if Player1.turn == true{
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
            
            check()
        }
    }
    
    @IBAction func square9(_ sender: Any) {
        if clicked9 == false{
            if Player1.turn == true{
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
            
            check()
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func playButton(_ sender: Any) {
        print("THE NAMES")
        print(p1name.text!)
        print(p2name.text!)
        
        
    }

    func check(){
        Player1.check()
        Player2.check()
        
        print("Did call check")
        
        if Player1.win == true{
            Player1.turn = false
            Player2.turn = false
            winnerLabel.text = "Player 1 won"
        }
        
        if Player2.win == true{
            Player1.turn = false
            Player2.turn = false
            winnerLabel.text = "Player 2 won"
        }

    }
    
    
    
    
    
}
