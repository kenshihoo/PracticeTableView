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
     
    private var animal: Animal? = nil {
        didSet {
            self.animalNameJPLabel.text = self.animal?.nameJP
            self.animalNameENLabel.text = self.animal?.nameEN
            self.animalImageView.image = UIImage(named: self.animal!.imageName)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func apply(animal: Animal) {
        self.animal = animal
    }

}
