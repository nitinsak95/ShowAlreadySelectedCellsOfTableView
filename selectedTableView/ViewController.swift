//
//  ViewController.swift
//  selectedTableView
//
//  Created by AFFIXUS IMAC1 on 8/20/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var id = ["1", "2", "3", "8", "9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Public List"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func btOpenList(_ sender: UIButton) {
        let vc: TableVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableVC") as! TableVC
        vc.defaultSel = id
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

