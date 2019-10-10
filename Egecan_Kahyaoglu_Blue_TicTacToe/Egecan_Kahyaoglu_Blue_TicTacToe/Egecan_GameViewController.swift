//
//  Egecan_GameViewController.swift
//  Egecan_Kahyaoglu_Blue_TicTacToe
//
//  Created by Egecan Kahyaoglu on 2019-10-09.
//  Copyright © 2019 Egecan Kahyaoglu. All rights reserved.
//

import UIKit

class Egecan_GameViewController: UIViewController {

    
    @IBOutlet weak var gameStateLabel: UILabel!
    //mark:-Class variables
    var theGameModel = Egecan_GameModel()
    var gameFinished = false
    
    //MARK:- Outlets

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // MARK:- IBActions

    @IBAction func squareTouched(_ sender: UIButton) {
        print("button touched")
        print(sender.tag)
        
        if (sender.currentTitle == "X" || sender.currentTitle == "O" || gameFinished) {
            return
        }
        sender.setTitle(theGameModel.whoseTurn, for: .normal)
        theGameModel.playMove(tag: sender.tag)
        
        
        if (theGameModel.isGameFinished()){
            let winner = theGameModel.whoWon
            
            if (winner.count > 0) {
                gameStateLabel.text = winner + " Won!"
            } else{
                gameStateLabel.text = "Draw!"
            }
            
              gameFinished = true
        } else {
            gameStateLabel.text = theGameModel.whoseTurn + "'s Turn"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
