//
//  vitrinModel.swift
//  Sahibinden_Clone
//
//  Created by Ecem Öztürk on 15.08.2023.
//

import Foundation

class vitrinModel {
    
    var vitrinImg : String?
    var vitrinLbl : String?

init () {
}

init (vitrinImg : String, vitrinLbl : String ) {
    
    self.vitrinImg = vitrinImg
    self.vitrinLbl = vitrinLbl
    }
}
