//
//  GenreCell.swift
//  FourthTeamWork
//
//  Created by user200328 on 7/8/21.
//

import UIKit

class GenreCell: UICollectionViewCell {

    @IBOutlet weak var backgroundColorView: UIView!
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var novelsNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColorView.layer.cornerRadius = 20
        
    }

}
