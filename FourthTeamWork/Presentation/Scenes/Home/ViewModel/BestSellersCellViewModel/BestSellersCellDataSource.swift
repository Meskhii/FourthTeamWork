//
//  BestSellersCellDataSource.swift
//  FourthTeamWork
//
//  Created by user200328 on 7/8/21.
//


import UIKit

class BestSellersCellDataSource: NSObject {
    
    // MARK: - Variables
    private var collectionView: UICollectionView!
    private var viewModel: BestSellersCellViewModelProtocol!
    
    // MARK: - Init
    init(collectionView: UICollectionView, viewModel: BestSellersCellViewModelProtocol) {
        super.init()
        
        self.collectionView = collectionView
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
       
        self.viewModel = viewModel
        
    }
    
    func refresh() {
        print("Home Cell Refresh Called")
    }
    
}

// MARK: - UICollectionView Data Source
extension BestSellersCellDataSource: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.deque(BestSellerCell.self, for: indexPath)
        return cell
    }
}

// MARK: - UICollectionView Delegate Flow Layout
extension BestSellersCellDataSource: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 122, height: 275)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 25
    }
    
}
