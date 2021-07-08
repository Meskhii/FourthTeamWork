//
//  GenresCell.swift
//  FourthTeamWork
//
//  Created by user200328 on 7/8/21.
//

import UIKit

class GenresCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private var genresCellDataSource: GenresCellDataSource!
    private var viewModel: GenresCellViewModelProtocol!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.registerNib(class: GenreCell.self)
        
        configureViewModel()
    }
    
    private func configureViewModel() {
        viewModel = GenresCellViewModel()
        genresCellDataSource = GenresCellDataSource(collectionView: collectionView, viewModel: viewModel)
        
        genresCellDataSource.refresh()
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
