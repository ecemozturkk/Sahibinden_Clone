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
        
        let v1 = vitrinModel(vitrinImg: "araba", vitrinLbl: "ARABA ARABA ARABA ARABA ARABA ARABA ARABA ARABA")
        let v2 = vitrinModel(vitrinImg: "bahce", vitrinLbl: "ARABA ARABA ARABA ARABA")
        let v3 = vitrinModel(vitrinImg: "reno", vitrinLbl: "Cardwind Renault Clio 1.2 Turbı Icon")
        let v4 = vitrinModel(vitrinImg: "araba", vitrinLbl: "ARABA ARABA ARABA ARABA")
        let v5 = vitrinModel(vitrinImg: "araba", vitrinLbl: "ARABA ARABA ARABA ARABA")
        let v6 = vitrinModel(vitrinImg: "araba", vitrinLbl: "ARABA ARABA ARABA ARABA")
        let v7 = vitrinModel(vitrinImg: "araba", vitrinLbl: "ARABA ARABA ARABA ARABA")
        let v8 = vitrinModel(vitrinImg: "araba", vitrinLbl: "ARABA ARABA ARABA ARABA")
        let v9 = vitrinModel(vitrinImg: "araba", vitrinLbl: "ARABA ARABA ARABA ARABA")
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
        return CGSize(width: 195, height: 150)
    }
}


