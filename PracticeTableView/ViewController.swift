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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView1.dataSource = self
        tableView1.delegate = self
    }
    
    //セクション内の行数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return systemIcons.count
    }
    
//indexPath の位置に挿入する UITableViewCell を返す
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView1.dequeueReusableCell(withIdentifier: "tableViewCell1", for: indexPath)
            
            cell.textLabel?.text = systemIcons[indexPath.row]
            cell.imageView?.image = UIImage(systemName: systemIcons[indexPath.row])
            
            return cell
    }


}

