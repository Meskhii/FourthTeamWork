//
//  HomeViewController.swift
//  FourthTeamWork
//
//  Created by user200328 on 7/8/21.
//

import UIKit

class HomeViewController: BaseViewController {

    private var homeDataSource: HomeDataSource!
    private var viewModel: HomeViewModelProtocol!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerNib(class: TopPicksCell.self)
        tableView.registerNib(class: BestSellersCell.self)
        tableView.registerNib(class: GenresCell.self)

        configureViewModel()
    }
    
    private func configureViewModel() {
        viewModel = HomeViewModel()
        homeDataSource = HomeDataSource(with: tableView, viewModel: viewModel)
        
        homeDataSource.refresh()
    }
    
}
