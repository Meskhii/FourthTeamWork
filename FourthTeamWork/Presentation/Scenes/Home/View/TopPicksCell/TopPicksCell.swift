//
//  HomeCell.swift
//  FourthTeamWork
//
//  Created by user200328 on 7/8/21.
//

import UIKit

class TopPicksCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private var topPicksCellDataSource: TopPicksCellDataSource!
    private var viewModel: TopPicksCellViewModelProtocol!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        collectionView.showsHorizontalScrollIndicator = false
        
        collectionView.registerNib(class: TopPickCell.self)
        
        configureViewModel()
    }
    
    private func configureViewModel() {
        viewModel = TopPicksCellViewModel()
        topPicksCellDataSource = TopPicksCellDataSource(collectionView: collectionView, viewModel: viewModel)
        
        topPicksCellDataSource.refresh()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
