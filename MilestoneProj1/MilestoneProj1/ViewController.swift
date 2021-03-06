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
                let flagName = item.deleteSuffix("@2x.png")
                
                flags.append(flagName)
            }
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flags.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Flag", for: indexPath)
        
        cell.textLabel?.text = uppercase(flags[indexPath.row].capitalized)
        
        return cell
    }
}

extension String {
    func deleteSuffix(_ suffix: String) -> String {
        guard self.hasSuffix(suffix) else { return self }
        return String(self.dropLast(suffix.count))
    }
}

private func uppercase(_ country: String) -> String {
    if country == "Uk" || country == "Us" {
        return country.uppercased()
    }
    return country
}
