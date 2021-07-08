//
//  SearchGridDataSource.swift
//  MyTask3
//
//  Created by Luka Bukuri on 08.07.21.
//

import UIKit

class SearchGridDataSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
{
    private var collectionView: UICollectionView!
    
    private var dataSource: SearchGridDataSource!
    
    init(with collectionView: UICollectionView)
    {
        super.init()
        self.collectionView = collectionView
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.row == 0
        {
            let cell = collectionView.deque(CategoriesCollectionViewCell.self, for: indexPath)
            return cell
        }
        
        let cell = collectionView.deque(GridImagesCollectionViewCell.self, for: indexPath)
        return cell
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        if indexPath.row == 0
        {
            return CGSize(width: collectionView.frame.width, height: 80)

        }
        if indexPath.row > 0
        {
        return CGSize(width: collectionView.frame.width / 2.3, height: collectionView.frame.height / 2 - collectionView.frame.width / 4)

        }
            
        return .init()
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {


        return UIEdgeInsets(top: -20, left: 15, bottom: 0, right: 15)
    }



    
    
}
