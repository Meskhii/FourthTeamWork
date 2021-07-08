//
//  TopPicksCell.swift
//  FourthTeamWork
//
//  Created by user200328 on 7/8/21.
//

import UIKit

class TopPickCell: UICollectionViewCell {

    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var authorNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        bookImageView.layer.cornerRadius = 10
    }

}
