//
//  myTableViewCell.swift
//  Project 2
//
//  Created by Field Employee on 10/24/20.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var cellButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
