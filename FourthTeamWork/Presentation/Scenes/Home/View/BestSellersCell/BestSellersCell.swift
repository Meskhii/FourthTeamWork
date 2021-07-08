//
//  BestSellersCell.swift
//  FourthTeamWork
//
//  Created by user200328 on 7/8/21.
//

import UIKit

class BestSellersCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private var bestSellersCellDataSource: BestSellersCellDataSource!
    private var viewModel: BestSellersCellViewModelProtocol!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.registerNib(class: BestSellerCell.self)
        
        configureViewModel()
    }
    
    private func configureViewModel() {
        viewModel = BestSellersCellViewModel()
        bestSellersCellDataSource = BestSellersCellDataSource(collectionView: collectionView, viewModel: viewModel)
        
        bestSellersCellDataSource.refresh()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
