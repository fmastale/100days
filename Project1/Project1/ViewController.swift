//
//  ViewController.swift
//  Project1
//
//  Created by Filip Mastalerz on 22/02/2021.
//

import UIKit

class ViewController: UITableViewController {
    var  pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Storm Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        DispatchQueue.global(qos: .userInitiated).async {
            [weak self] in
            for item in items {
                if item.hasPrefix("nssl") {
                    self?.pictures.append(item)
                }
            }
        }
        
        pictures.sort()
        self.tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]
            
            vc.selectedPictureNumber = indexPath.row
            vc.totalPictures = pictures.count
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

