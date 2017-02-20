//
//  BusinessCell.swift
//  Yelp
//
//  Created by Yukkee chang on 2/18/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    
    @IBOutlet weak var reviewsLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var starsImageView: UIImageView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var EstTitleLabel: UILabel!
    
    var business: Business! {
        didSet {
            EstTitleLabel.text = business.name
           reviewsLabel.text = "\(business.reviewCount!) Reviews"
            categoriesLabel.text = business.categories
            addressLabel.text = business.address
        thumbImageView.setImageWith(business.imageURL!)
            distanceLabel.text = business.distance
            starsImageView.setImageWith(business.ratingImageURL!)
            
            
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbImageView.layer.cornerRadius = 3
        thumbImageView.clipsToBounds = true
        
        EstTitleLabel.preferredMaxLayoutWidth = EstTitleLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
         EstTitleLabel.preferredMaxLayoutWidth = EstTitleLabel.frame.size.width
    }
   

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
