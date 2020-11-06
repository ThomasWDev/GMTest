//
//  MovieCell.swift
//  GMTest
//
//  Created by Thomas Woodfin Mahmud on 11/3/20.
//  Copyright © 2020 Thomas Woodfin. All rights reserved.
//

import UIKit
import SDWebImage

class MovieCell: UITableViewCell {
    
    static let identifier = "MovieCell"
    
    @IBOutlet weak private var movieImageView: UIImageView!
    @IBOutlet weak private var movieNameLbl: UILabel!
    @IBOutlet weak private var releaseDateLbl: UILabel!
    @IBOutlet weak private var durationLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(vm: DashboardVM, index: Int){
        let name = vm.movieList?[index].title ?? ""
        let releaseDate = vm.movieList?[index].release_date ?? ""
        let voteAvg = vm.movieList?[index].vote_average ?? 0.0
        
        let imageUrl = vm.movieList?[index].poster_path ?? ""
        
        let fullImageURL = Constants.imageURL + imageUrl
        
        movieNameLbl.text = name
        releaseDateLbl.text = releaseDate
        durationLbl.text = "Vote: \(voteAvg)"
        
        movieImageView.sd_setImage(with: URL(string: fullImageURL), placeholderImage: UIImage(named: "placeholder"))
    }

}
