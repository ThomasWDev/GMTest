//
//  DashboardVC.swift
//  TestProject
//
//  Created by Thomas Woodfin on 10/29/20.
//  Copyright © 2020 Thomas Woodfin. All rights reserved.
//

import UIKit

class DashboardVC: UIViewController {
    
    @IBOutlet weak private var tblView: UITableView!
    
    private let viewModel = DashboardVM()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Commit List"
        getData()
    }
    
    private func getData(){
        viewModel.getCommits { (success) in
            if success{
                self.tblView.reloadData()
            }
        }
    }
}

extension DashboardVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if viewModel.commitList?.count == 0{
            Helper.emptyMessageInTableView(tableView, "No data available")
        }
        return viewModel.commitList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CommitCell.identifier, for: indexPath) as! CommitCell
        cell.selectionStyle = .none
        cell.configureCell(vm: viewModel, index: indexPath.row)
        return cell
    }
    
    
}
