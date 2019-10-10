//
//  Egecan_GameModel.swift
//  Egecan_Kahyaoglu_Blue_TicTacToe
//
//  Created by Egecan Kahyaoglu on 2019-10-09.
//  Copyright © 2019 Egecan Kahyaoglu. All rights reserved.
//

import Foundation

class Egecan_GameModel{
    
var whoseTurn = "X"
var numberOfMovesPlayed = 0
var lastPlayed = ""
var whoWon = ""
     
    
    var squareContents = Array(repeating: "", count: 10)
    
    let winningCombinations = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
    
    func playMove(tag : Int) {
    squareContents[tag] = whoseTurn
        lastPlayed = whoseTurn
        
        if(whoseTurn == "X"){
            whoseTurn = "O"
        } else {
            whoseTurn = "X"
        }
        numberOfMovesPlayed += 1
    }
        func isGameFinished() -> Bool {
            if (numberOfMovesPlayed < 5) {
                return false
            }
      
            
            
            for winningCombo in winningCombinations {
                
                let index1 = winningCombo[0]
                let index2 = winningCombo[1]
                let index3 = winningCombo[2]

                if (squareContents[index1] == lastPlayed && squareContents[index2] == lastPlayed && squareContents[index3] == lastPlayed) {
                    whoWon = lastPlayed
                    return true
                }
            }
            
            if (numberOfMovesPlayed == 9) {
                      return true
                  }
            return false
            }
    }

