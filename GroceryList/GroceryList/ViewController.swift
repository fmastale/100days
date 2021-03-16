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
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addProduct))
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

    @objc func addProduct() {
        let ac = UIAlertController(title: "Enter product", message: nil, preferredStyle: .alert)
        ac.addTextField()
        
        let submitAction = UIAlertAction(title: "Add", style: .default) {
            [weak self, weak ac] action in
            guard let newProduct = ac?.textFields?[0].text else {return}
            self?.submit(newProduct)
        }
        
        ac.addAction(submitAction)
        present(ac, animated: true)
    }
    
    func submit(_ newProduct: String) {
        
    }
}

