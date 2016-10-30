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
    
    @IBOutlet weak var p1name: UITextField!
    @IBOutlet weak var p2name: UITextField!
    @IBOutlet weak var p1: UILabel!
    @IBOutlet weak var p2: UILabel!
    
    
    var player1 = true
    var clicked1 = false
    var clicked2 = false
    var clicked3 = false
    var clicked4 = false
    var clicked5 = false
    var clicked6 = false
    var clicked7 = false
    var clicked8 = false
    var clicked9 = false
    var xList = [0]
    var oList = [0]
    
    
    
    @IBAction func square1(_ sender: Any) {
        if clicked1 == false{
            if player1 == true{
                Square1.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                xList.append(1)
                player1 = false
                print(xList)
                clicked1 = true
            }
            else{
                Square1.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                oList.append(1)
                player1 = true
                print(oList)
                clicked1 = true
            }
        }
    }
    
    @IBAction func square2(_ sender: Any) {
        if clicked2 == false{
            if player1 == true{
                Square2.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                xList.append(2)
                player1 = false
                print(xList)
                clicked2 = true
            }
            else{
                Square2.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                oList.append(2)
                player1 = true
                print(oList)
                clicked2 = true
            }
        }
    }
    
    @IBAction func square3(_ sender: Any) {
        if clicked3 == false{
            if player1 == true{
                Square3.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                xList.append(3)
                player1 = false
                print(xList)
                clicked3 = true
            }
            else{
                Square3.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                oList.append(3)
                player1 = true
                print(oList)
                clicked3 = true
            }
        }
    }
    
    @IBAction func square4(_ sender: Any) {
        if clicked4 == false{
            if player1 == true{
                Square4.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                xList.append(4)
                player1 = false
                print(xList)
                clicked4 = true
            }
            else{
                Square4.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                oList.append(4)
                player1 = true
                print(oList)
                clicked4 = true
            }
        }
    }
    
    @IBAction func square5(_ sender: Any) {
        if clicked5 == false{
            if player1 == true{
                Square5.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                xList.append(5)
                player1 = false
                print(xList)
                clicked5 = true
            }
            else{
                Square5.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                oList.append(5)
                player1 = true
                print(oList)
                clicked5 = true
            }
        }
    }
    
    @IBAction func square6(_ sender: Any) {
        if clicked6 == false{
            if player1 == true{
                Square6.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                xList.append(6)
                player1 = false
                print(xList)
                clicked6 = true
            }
            else{
                Square6.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                oList.append(6)
                player1 = true
                print(oList)
                clicked6 = true
            }
        }
    }
    
    @IBAction func square7(_ sender: Any) {
        if clicked7 == false{
            if player1 == true{
                Square7.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                xList.append(7)
                player1 = false
                print(xList)
                clicked7 = true
            }
            else{
                Square7.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                oList.append(7)
                player1 = true
                print(oList)
                clicked7 = true
            }
        }
    }
    
    @IBAction func square8(_ sender: Any) {
        if clicked8 == false{
            if player1 == true{
                Square8.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                xList.append(8)
                player1 = false
                print(xList)
                clicked8 = true
            }
            else{
                Square8.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                oList.append(8)
                player1 = true
                print(oList)
                clicked8 = true
            }
        }
    }
    
    @IBAction func square9(_ sender: Any) {
        if clicked9 == false{
            if player1 == true{
                Square9.setImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                xList.append(9)
                player1 = false
                print(xList)
                clicked9 = true
            }
            else{
                Square9.setImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                oList.append(9)
                player1 = true
                print(oList)
                clicked9 = true
            }
        }
    }
    
    
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
    
    @IBAction func p1Name(_ sender: Any) {
        if p1name.text != ""{
            print (p1name.text!)
            p1.text = self.p1name.text!
    }
    }
    
    @IBAction func p2Name(_ sender: Any) {
        if p2name.text != ""{
            p2.text = p2name.text!
    }
        }
    
    // Mark: Actions


}
