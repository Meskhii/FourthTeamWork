//
//  BestSellerCell.swift
//  FourthTeamWork
//
//  Created by user200328 on 7/8/21.
//

import UIKit

class BestSellerCell: UICollectionViewCell {

    @IBOutlet weak var bookCoverImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        bookCoverImage.layer.cornerRadius = 15
    
    }

}
