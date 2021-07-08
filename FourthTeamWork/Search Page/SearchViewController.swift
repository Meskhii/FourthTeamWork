//
//  ViewController.swift
//  MyTask3
//
//  Created by Luka Bukuri on 08.07.21.
//

import UIKit

class SearchViewController: UIViewController {

    
    @IBOutlet weak var switchBtn: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    private var searchGridDataSource: SearchGridDataSource!
    private var searchListDataSource: SearchListDataSource!
    
    var onListView = false
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.isHidden = true
        
        collectionView.registerNib(class: CategoriesCollectionViewCell.self)
        collectionView.registerNib(class: GridImagesCollectionViewCell.self)
        tableView.registerNib(class: ListImagesTableViewCell.self)
        configure()
    }
 
    override func viewWillLayoutSubviews() {
        tableViewConstraints()
        
    }
    
    func configure()
    {
        searchGridDataSource = SearchGridDataSource(with: collectionView)
        searchListDataSource = SearchListDataSource(with: tableView)
    }


    @IBAction func onSwitch(_ sender: UIButton)
    {
        onListView.toggle()
        
        if onListView
        {
            tableView.isHidden = false
            collectionView.isHidden = true
            switchBtn.setTitle("Grid", for: .normal)
            
        }
        else
        {
            tableView.isHidden = true
            collectionView.isHidden = false
            switchBtn.setTitle("List", for: .normal)
            
        }
    }
    
    func tableViewConstraints()
    {
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: switchBtn.bottomAnchor , constant: 27)

        ])
    }
    
 
    
}

