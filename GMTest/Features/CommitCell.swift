//
//  CommitCell.swift
//  GMTest
//
//  Created by Shahriar Mahmud on 11/3/20.
//  Copyright © 2020 Thomas Woodfin. All rights reserved.
//

import UIKit
import SDWebImage

class CommitCell: UITableViewCell {
    
    static let identifier = "CommitCell"
    
    @IBOutlet weak private var profileImageView: UIImageView!
    @IBOutlet weak private var authorNameLbl: UILabel!
    @IBOutlet weak private var authorMsgLbl: UILabel!
    @IBOutlet weak private var commitHashLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(vm: DashboardVM, index: Int){
        let name = vm.commitList?[index].authorName ?? ""
        let msg = vm.commitList?[index].commitMessage ?? ""
        let hash = vm.commitList?[index].commitHash ?? ""
        
        authorNameLbl.text = "Author name: \(name)"
        authorMsgLbl.text = "Message: \(msg)"
        commitHashLbl.text = "#: \(hash)"
    }

}
