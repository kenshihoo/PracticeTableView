//
//  AnimalTableViewCell.swift
//  PracticeTableView
//
//  Created by Kenshiro on 2021/03/18.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalNameJPLabel: UILabel!
    @IBOutlet weak var animalNameENLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
