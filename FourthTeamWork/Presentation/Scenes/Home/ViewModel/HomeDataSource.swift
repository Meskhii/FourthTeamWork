//
//  HomeDataSource.swift
//  FourthTeamWork
//
//  Created by user200328 on 7/8/21.
//

import UIKit

class HomeDataSource: NSObject {
    
    // MARK: - Variables
    private var tableView: UITableView!
    private var viewModel: HomeViewModelProtocol!
    
    // MARK: - Init
    init(with tableView: UITableView, viewModel: HomeViewModelProtocol) {
        super.init()
        
        self.tableView = tableView
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 40, right: 0)
        self.tableView.separatorColor = UIColor.clear
        
        self.viewModel = viewModel
        
    }
    
    func refresh() {
        print("Refresh Called")
    }
    
}

// MARK: - UITableView Data Source
extension HomeDataSource: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.deque(class: TopPicksCell.self, for: indexPath)
            return cell
            
        } else if indexPath.row == 1 {
            let cell = tableView.deque(class: BestSellersCell.self, for: indexPath)
            return cell
            
        } else if indexPath.row == 2 {
            let cell = tableView.deque(class: GenresCell.self, for: indexPath)
            return cell
            
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 480
        } else if indexPath.row == 1 {
            return 340
        } else if indexPath.row == 2 {
            return 240
        }
        
        return 280
    }
    
}

