//
//  PokemonTableViewCell.swift
//  Laboratorio06
//
//  Created by Mac13 on 20/04/24.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    
    @IBOutlet var imgProfile: UIImageView!
    
    @IBOutlet var username: UILabel!
    
    @IBOutlet var imgPost: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
