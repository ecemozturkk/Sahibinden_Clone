//
//  AramaTableViewCell.swift
//  Sahibinden_Clone
//
//  Created by Ecem Öztürk on 20.08.2023.
//

import UIKit

class AramaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImg: UIImageView!
    @IBOutlet weak var genreLbl: UILabel!
    @IBOutlet weak var contextLbl: UILabel!
    
    func setArama(arama: Arama) {
        iconImg.image = arama.iconImg
        genreLbl.text = arama.title
        contextLbl.text = arama.subtitle
    }
}
