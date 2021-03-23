//
//  ViewController.swift
//  PracticeTableView
//
//  Created by Kenshiro on 2021/03/16.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView1: UITableView!
    let systemIcons = ["archivebox","trash","tray","folder","doc"]
    var animals: [Animal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView1.dataSource = self
        tableView1.delegate = self
        
        loadData()
    }
    
    //セクション内の行数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
        
    }
    
    //indexPath の位置に挿入する UITableViewCell を返す
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView1.dequeueReusableCell(withIdentifier: "tableViewCell1", for: indexPath)
//            cell.textLabel?.text = systemIcons[indexPath.row]
//            cell.imageView?.image = UIImage(systemName: systemIcons[indexPath.row])
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalTableViewCell", for: indexPath) as? AnimalTableViewCell else {
                    fatalError("Dequeue failed: AnimalTableViewCell.")
                }
        
            cell.animalNameJPLabel.text = animals[indexPath.row].nameJP
            cell.animalNameENLabel.text = animals[indexPath.row].nameEN
            cell.animalImageView.image = UIImage(named: animals[indexPath.row].imageName)
                
            return cell
    }
    
    
    
    

    func loadData() {
       animals.append(Animal(nameJP: "ふくろう", nameEN: "Owl", imageName: "owl"))
       animals.append(Animal(nameJP: "とり", nameEN: "Bird", imageName: "bird"))
       animals.append(Animal(nameJP: "らいおん", nameEN: "Lion", imageName: "lion"))
       animals.append(Animal(nameJP: "かば", nameEN: "Hippo", imageName: "hippo"))
       animals.append(Animal(nameJP: "くま", nameEN: "Bear", imageName: "bear"))
       animals.append(Animal(nameJP: "はりねずみ", nameEN: "Hedgehog", imageName: "hedgehog"))
       animals.append(Animal(nameJP: "ぞう", nameEN: "Elephant", imageName: "elephant"))
    }
    
}

