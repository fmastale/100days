//
//  ViewController.swift
//  GroceryList
//
//  Created by Filip Mastalerz on 16/03/2021.
//

import UIKit

class ViewController: UITableViewController {
    var products = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Grocery list"
    }

    func cleanList() {
        products.removeAll(keepingCapacity: true)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Product", for: indexPath)
        cell.textLabel?.text = products[indexPath.row]
        return cell
    }

}

