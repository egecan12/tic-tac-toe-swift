//
//  Egecan_TableViewCell.swift
//  Egecan_Kahyaoglu_Blue_TicTacToe
//
//  Created by Egecan Kahyaoglu on 2019-09-25.
//  Copyright © 2019 Egecan Kahyaoglu. All rights reserved.
//

import UIKit

class Egecan_TableViewCell: UITableViewCell {
    
    //mark:-Outlets
    @IBOutlet weak var winLossImage: UIImageView!
    
    @IBOutlet weak var whoWon: UILabel!
    
    @IBOutlet weak var dateTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
