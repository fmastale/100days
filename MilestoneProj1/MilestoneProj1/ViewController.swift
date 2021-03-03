//
//  ViewController.swift
//  MilestoneProj1
//
//  Created by Filip Mastalerz on 03/03/2021.
//

import UIKit

class ViewController: UITableViewController {
    var flags = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasSuffix("@2x.png") {
                flags.append(item)
            }
        }
        print(flags)
    }


}

