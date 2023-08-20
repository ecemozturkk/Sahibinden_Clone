//
//  VitrinViewController.swift
//  Sahibinden_Clone
//
//  Created by Ecem Öztürk on 11.08.2023.
//

import UIKit

class VitrinViewController: UIViewController {
    
    @IBOutlet weak var vitrinCollectionView: UICollectionView!
    
    var vitrinList = [vitrinModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vitrinCollectionView.dataSource = self
        vitrinCollectionView.delegate = self
        
        vitrinCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        let v1 = vitrinModel(vitrinImg: "araba1", vitrinLbl: "İlk Sahibinden-bakımlı-double Ekran-masrafsız-ekstralı")
        let v2 = vitrinModel(vitrinImg: "daire1", vitrinLbl: "**güneş Yapı** Tunalı Gop Kolej Karşısı")
        let v3 = vitrinModel(vitrinImg: "reno", vitrinLbl: "Cardwind Renault Clio 1.2 Turbo Icon")
        let v4 = vitrinModel(vitrinImg: "tarla1", vitrinLbl: "Sahibinden Didim Zümrüttepede 400 m2 satılık arsa")
        let v5 = vitrinModel(vitrinImg: "makina1", vitrinLbl: "Servo Klavuz Çekme Makinası (M3-M24)")
        let v6 = vitrinModel(vitrinImg: "traktor1", vitrinLbl: "Osman Traktörden 2014 Model John Deere")
        let v7 = vitrinModel(vitrinImg: "motor1", vitrinLbl: "Motorkn'den Lansmana Özel Fiyat Stoktan")
        let v8 = vitrinModel(vitrinImg: "araba2", vitrinLbl: "Düşük Km'li Volvo Xc40")
        let v9 = vitrinModel(vitrinImg: "bina1", vitrinLbl: "23x80 Hangar Çadırı Depo Çadırı")
        let v10 = vitrinModel(vitrinImg: "araba", vitrinLbl: "ARABA ARABA ARABA ARABA")
        let v11 = vitrinModel(vitrinImg: "araba", vitrinLbl: "ARABA ARABA ARABA ARABA")
        let v12 = vitrinModel(vitrinImg: "araba", vitrinLbl: "ARABA ARABA ARABA ARABA")
        
        vitrinList.append(v1)
        vitrinList.append(v2)
        vitrinList.append(v3)
        vitrinList.append(v4)
        vitrinList.append(v5)
        vitrinList.append(v6)
        vitrinList.append(v7)
        vitrinList.append(v8)
        vitrinList.append(v9)
        vitrinList.append(v10)
        vitrinList.append(v11)
        vitrinList.append(v12)
    }
}

extension VitrinViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vitrinList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let vitrin = vitrinList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! VitrinCollectionViewCell
        cell.vitrinImg.image = UIImage(named: vitrin.vitrinImg!)
        cell.vitrinLbl.text = vitrin.vitrinLbl
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.3
        
        return cell
    }
}

extension VitrinViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //return CGSize(width: 195, height: 150)
        return CGSize(width: 195, height: 180)
    }
}


