//
//  SearchListDataSource.swift
//  MyTask3
//
//  Created by Luka Bukuri on 08.07.21.
//


import UIKit

class SearchListDataSource: NSObject, UITableViewDelegate, UITableViewDataSource
{
  
    private var tableView: UITableView!
    
    private var dataSource: SearchListDataSource!
    
    init(with tableView: UITableView)
    {
        super.init()
        self.tableView = tableView
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.deque(class: ListImagesTableViewCell.self, for: indexPath)
        
        
        return cell
    }
}
