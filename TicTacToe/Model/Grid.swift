//
//  Grid.swift for 
//  TicTacToe
//
//  Created by Alexander Kim on 1/16/19.
//  Copyright © 2019 Alexander Kim. All rights reserved.
//

import UIKit
    
//The following code is to represent each square's current status, whether filled or empty, and how the switch between players 1 and 2 should occur
    
enum TileState: String {
    case X = "X"
    case O = "O"
    case Empty = ""
    
    var switchPlayer: TileState {
        switch self {
        case .X:
            return .O
        case .O:
            return .X
        case .Empty:
            return .Empty
        }
    }
}

//numerically assigning values for each of the positions on the board
    
typealias Move = Int
    
//Grid is a struct that defines the position with the array [TileState], the player whose turn it is (alternating turns), and the most recent move played
    
struct Grid {
    var position: [TileState]
    var turn: TileState
    var previous: Move
        
    //struct TicTacToe {
    //
    //   var tileArray: [Tile] = Array(repeating: Tile, count: 9)
    //   var xArray: [Int]
    //   var oArray: [Int]
    //
    //   }
    //
    //The class' code for defining the grid's state, which I implemented with Grid
    
    //The instance created by the init is the default position of the board, which is a completely empty 3 by 3 uni-dimensional array
    //X is the first move to be played, per offical Tic-Tac-Toe guidelines (and for simplicity)
    
    init(position: [TileState] = [.Empty, .Empty, .Empty, .Empty, .Empty, .Empty, .Empty, .Empty, .Empty], turn: TileState = .X, previous: Int = -1) {
       
    
        self.position = position
        self.turn = turn
        self.previous = previous

    }
    
}


