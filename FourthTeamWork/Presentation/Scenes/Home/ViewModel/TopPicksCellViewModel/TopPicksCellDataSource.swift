//
//  HomeCellDataSource.swift
//  FourthTeamWork
//
//  Created by user200328 on 7/8/21.
//

import UIKit

class TopPicksCellDataSource: NSObject {
    
    // MARK: - Variables
    private var collectionView: UICollectionView!
    private var viewModel: TopPicksCellViewModelProtocol!
    
    // MARK: - Init
    init(collectionView: UICollectionView, viewModel: TopPicksCellViewModelProtocol) {
        super.init()
        
        self.collectionView = collectionView
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
       
        self.viewModel = viewModel
        
        configureCollectionViewFlow()
    }
    
    func refresh() {
        print("Home Cell Refresh Called")
    }
    
    // MARK: - Custom Collection View Flow
    private func configureCollectionViewFlow() {
        let flowLayout = UPCarouselFlowLayout()
        flowLayout.itemSize = CGSize(width: 128, height: collectionView.frame.size.height)
        flowLayout.scrollDirection = .horizontal
        flowLayout.sideItemScale = 0.8
        flowLayout.sideItemAlpha = 1
        flowLayout.spacingMode = .fixed(spacing: 0)
        collectionView.collectionViewLayout = flowLayout
    }
    
    @IBAction func onPrevious(_ sender: UIButton) {
        let collectionBounds = self.collectionView.bounds
        let contentOffset = CGFloat(floor(self.collectionView.contentOffset.x - collectionBounds.size.width + 95))
        self.moveToFrame(contentOffset: contentOffset)
    }
    
    @IBAction func onNext(_ sender: UIButton) {
        let collectionBounds = self.collectionView.bounds
        let contentOffset = CGFloat(floor(self.collectionView.contentOffset.x + collectionBounds.size.width - 95))
        self.moveToFrame(contentOffset: contentOffset)
    }
    
    func moveToFrame(contentOffset : CGFloat) {
        let frame: CGRect = CGRect(x : contentOffset ,y : self.collectionView.contentOffset.y ,width : self.collectionView.frame.width,height : self.collectionView.frame.height)
        self.collectionView.scrollRectToVisible(frame, animated: true)
    }
    
}

// MARK: - UICollectionView Data Source
extension TopPicksCellDataSource: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.deque(TopPickCell.self, for: indexPath)
        return cell
    }
}

// MARK: - UICollectionView Delegate Flow Layout
extension TopPicksCellDataSource: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 120, bottom: 20, right: 120)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 50
    }
}
