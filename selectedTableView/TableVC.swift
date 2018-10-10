//
//  TableVC.swift
//  selectedTableView
//
//  Created by AFFIXUS IMAC1 on 8/20/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit

class TableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var id: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    var names: [String] = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
    var defaultSel: [String] = []
    var emptyId: [String] = []
    
    var namesArr: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsMultipleSelection = true
        tableView.reloadData()
        
        for i in defaultSel{
            let indexPath = IndexPath(row: id.index(of: i)!, section: 0)
            tableView.selectRow(at: indexPath, animated: true, scrollPosition: UITableViewScrollPosition.none)
            tableView.delegate?.tableView!(tableView, didSelectRowAt: indexPath)
        }
        
     
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return id.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TCell
        cell.lbIds.text = id[indexPath.row]
        cell.lbNames.text = names[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)! as! TCell
        cell.imgChecked.image = #imageLiteral(resourceName: "ic_checked")
        cell.imgChecked.isHidden = false
        cell.imgUnchecked.image = #imageLiteral(resourceName: "ic_unchecked")
        cell.imgUnchecked.isHidden = true
        
        emptyId.append(id[indexPath.row])
        print("Selection is \(emptyId)")
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)! as! TCell
        cell.imgChecked.image = #imageLiteral(resourceName: "ic_checked")
        cell.imgChecked.isHidden = true
        cell.imgUnchecked.image = #imageLiteral(resourceName: "ic_unchecked")
        cell.imgUnchecked.isHidden = false
        
        emptyId.remove(at: indexPath.row)
        print("deselected userGrpName are \(emptyId)")
    }

}
