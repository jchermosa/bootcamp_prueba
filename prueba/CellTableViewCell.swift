//
//  CellTableViewCell.swift
//  prueba
//
//  Created by Julio Hermosa on 2025-03-11.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    @IBOutlet weak var trailingImageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
