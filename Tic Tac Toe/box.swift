//
//  box.swift
//  Tic Tac Toe
//
//  Created by Jason Behrend on 10/30/16.
//  Copyright © 2016 JasonBehrend. All rights reserved.
//

import Foundation

class player{
    let range: CountableClosedRange = 0...7
    var winningCombos = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
    var last = 0
    var play = 0
    var turn = true
    var win = false
    
    func remove(num: Int){
        for i in range{
            winningCombos[i] = winningCombos[i].filter() { $0 != num }
            }
        print(winningCombos)

    }
    

    
    func check(){
        for i in range{
            if winningCombos[i] == []{
                win = true
            }
        }
    }
    
    func playing(){
        play += 1
        if play % 2 == 0{
            turn = true
        }
        else{
            turn = false
        }
        
    }
    

}
