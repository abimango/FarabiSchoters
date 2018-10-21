//
//  ScholarshipCategories.swift
//  Schoters
//
//  Created by Farabi Ramadhan Arief on 21/10/18.
//  Copyright © 2018 Farabi Ramadhan Arief. All rights reserved.
//

import UIKit

class ScholarshipCell: UITableViewCell {
    
    @IBOutlet weak var scholarshipImage: UIImageView!
    @IBOutlet weak var scholarshipName: UILabel!
    @IBOutlet weak var scholarshipDesIndo: UILabel!
    @IBOutlet weak var scholarshipDescEng: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
