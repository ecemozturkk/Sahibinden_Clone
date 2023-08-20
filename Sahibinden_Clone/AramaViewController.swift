//
//  AramaViewController.swift
//  Sahibinden_Clone
//
//  Created by Ecem Öztürk on 11.08.2023.
//

import UIKit

class AramaViewController: UIViewController {

    @IBOutlet weak var aramaTableView: UITableView!
    var list : [Arama] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aramaTableView.dataSource = self
        aramaTableView.delegate = self
        
        list = createArama()
    }
    
    func createArama() -> [Arama] {
        var aramaListesi : [Arama] = []
        
        let arama1 = Arama(iconImg: UIImage(named: "home")!, title: "Emlak", subtitle: "Konut, İş Yeri, Arsa, Konut Projeleri, Bina, Devre Mülk")
        let arama2 = Arama(iconImg: UIImage(named: "wheel")!, title: "Vasıta", subtitle: "Otomobil, Arazi, SUV & Pickup, Motosiklet, Minivan")
        let arama3 = Arama(iconImg: UIImage(named: "tools")!, title: "Yedek Parça, Aksesuar, Donanım &Tuning", subtitle: "Otomotiv Ekipmanları, Motosiklet Ekipmanları, Deniz Aracı")
        let arama33 = Arama(iconImg: UIImage(named: "trolley")!, title: "İkinci El ve Sıfır Alışveriş", subtitle: "Bilgisayar, Cep Telefonu, Fotoğraf & Kamera, Ev Dekorasyon")
        let arama4 = Arama(iconImg: UIImage(named: "tractor")!, title: "İş Makineleri & Sanayi", subtitle: "İş Makineleri, Tarım Makineleri, Sanayi, Elektrik & Enerji")
        let arama5 = Arama(iconImg: UIImage(named: "paint")!, title: "Ustalar ve Hizmetler", subtitle: "Ev Tadilat & Dekorasyon, Nakliye, Araç Servis & Bakım")
        let arama6 = Arama(iconImg: UIImage(named: "book")!, title: "Özel Ders Verenler", subtitle: "Lise & Üniversite, İlkokul & Ortaokul, Yabancı Dil, Bilgisayar")
        let arama7 = Arama(iconImg: UIImage(named: "user")!, title: "İş İlanları", subtitle: "Avukatlık & Hukuki Danışmanlık, Eğitim, Eğlence ve Aktiviteler")
        let arama8 = Arama(iconImg: UIImage(named: "stroller")!, title: "Yardımcı Arayanlar", subtitle: "Bebek & Çocuk Bakıcısı, Yaşlı & Hasta Bakıcısı, Temizlikçi")
        let arama9 = Arama(iconImg: UIImage(named: "paw")!, title: "Hayvanlar Alemi", subtitle: "Evcil Hayvanlar, Akvaryum Balıkları, Aksesuarlar, Bakım Ürünleri")
      
        aramaListesi.append(arama1)
        aramaListesi.append(arama2)
        aramaListesi.append(arama3)
        aramaListesi.append(arama33)
        aramaListesi.append(arama4)
        aramaListesi.append(arama5)
        aramaListesi.append(arama6)
        aramaListesi.append(arama7)
        aramaListesi.append(arama8)
        aramaListesi.append(arama9)
        
        return aramaListesi
    }
}

extension AramaViewController : UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let arama = list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "AramaTableViewCell") as! AramaTableViewCell
        cell.setArama(arama: arama)
        return cell
    }
}
