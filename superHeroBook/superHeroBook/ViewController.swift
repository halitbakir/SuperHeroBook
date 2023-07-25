//
//  ViewController.swift
//  superHeroBook
//
//  Created by Halit Bakır on 17.06.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    //import gibi tableview kullanabilmek için son 2ye o yapılar eklenmeli
    
    @IBOutlet weak var tableView: UITableView!
    
    var superKahramanGorselIsimleri = [String]()
    var superKahramanIsimleri = [String]() //boş string dizi oluşturma
    var secilenIsim = ""
    var secilenGorsel = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        superKahramanIsimleri.append("Flash")
        superKahramanIsimleri.append("Thor")
        superKahramanIsimleri.append("Thanos")
        superKahramanIsimleri.append("Wonder Woman")
        superKahramanIsimleri.append("Aquaman")
        superKahramanIsimleri.append("Hulk")
        superKahramanIsimleri.append("Deadpool")
        superKahramanIsimleri.append("Captain America")
        superKahramanIsimleri.append("Ironman")
        superKahramanIsimleri.append("Spiderman")
        superKahramanIsimleri.append("Superman")
        superKahramanIsimleri.append("Scarlet Witch")
        superKahramanIsimleri.append("X-Men")
        superKahramanIsimleri.append("Hell Boy")
        superKahramanIsimleri.append("Doctor Strange")
        superKahramanIsimleri.append("Black Panther")
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Mom")
        
        
        superKahramanGorselIsimleri.append("flash")
        superKahramanGorselIsimleri.append("thor")
        superKahramanGorselIsimleri.append("thanos")
        superKahramanGorselIsimleri.append("wonderwoman")
        superKahramanGorselIsimleri.append("aquaman")
        superKahramanGorselIsimleri.append("hulk")
        superKahramanGorselIsimleri.append("deadpool")
        superKahramanGorselIsimleri.append("captainamerica")
        superKahramanGorselIsimleri.append("ironman")
        superKahramanGorselIsimleri.append("spiderman")
        superKahramanGorselIsimleri.append("superman")
        superKahramanGorselIsimleri.append("scarletwitch")
        superKahramanGorselIsimleri.append("x-men")
        superKahramanGorselIsimleri.append("hellboy")
        superKahramanGorselIsimleri.append("doctorstrange")
        superKahramanGorselIsimleri.append("blackpanther")
        superKahramanGorselIsimleri.append("batman")
        superKahramanGorselIsimleri.append("mom")
        
    }
    
    //tableviewde kullanılacak zorunlu yapı 1: kaç satır olacağı
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahramanIsimleri.count //dizide kaç eleman varsa o kadar satır oluştur dedik
        
    }
    
    //tableviewde kullanılacak zorunlu yapı 2: hücre yapısını belirtir
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahramanIsimleri[indexPath.row] //satırlara dizideki eleman isimlerini yazdırma
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { //tıklanınca vc gitmek için
        secilenIsim = superKahramanIsimleri[indexPath.row]
        secilenGorsel = superKahramanGorselIsimleri[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenKahramanIsmi = secilenIsim
            destinationVC.secilenKahramanGorselIsmi = secilenGorsel
        }
        
    }

}

