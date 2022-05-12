//
//  TableVC.swift
//  acs-2420-final-assessment
//
//  Created by Anneka Curry on 5/11/22.
//

import UIKit

class TableVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var itemList = [
        Item(name: "Hello", desc: "Hello"),
        Item(name: "World", desc: "World"),
        Item(name: "Foo", desc: "Foo"),
        Item(name: "Bar", desc: "Bar")
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self


    }
    
}

extension TableVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = itemList[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
}

extension TableVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
        let vc = storyboard?.instantiateViewController(withIdentifier: "detail") as! DetailsVC
        navigationController?.pushViewController(vc, animated: true)
        vc.detail = itemList[indexPath.row].desc
            
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
