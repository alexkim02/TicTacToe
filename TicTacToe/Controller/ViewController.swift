//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alexander Kim on 1/25/19.
//  Copyright © 2019 Alexander Kim. All rights reserved.
//

//credit: https://stackoverflow.com/questions/40685461/tic-tac-toe-tie-swift-3

import UIKit

class ViewController: UIViewController {

    var grid = Grid()
    var activePlayer = 1 //Cross
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    var gameIsActive = true
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if gameState[sender.tag-1] == 0 && gameIsActive == true {
            
            gameState[sender.tag-1] = activePlayer
            
            if (activePlayer == 1) {
                sender.setImage(UIImage(named: "O.jpg"), for: UIControl.State())
                activePlayer = 2
            } else {
                sender.setImage(UIImage(named: "X.jpg"), for: UIControl.State())
                activePlayer = 1
            }
        
        }
        
     //I added every possible win condition, but in a brute force manner

        for combination in winningCombinations {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                
                gameIsActive = false
                
            }
        
            for i in gameState {
                if i == 0 {
                    gameIsActive = true
                    break
                }
            }
        }
    }

}
