//
//  DetailViewController.swift
//  Project1
//
//  Created by Filip Mastalerz on 23/02/2021.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var selectedPictureNumber: Int?
    var totalPictures: Int?
    
    var  pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //title = createNameByIndex()
        title = "\(selectedPictureNumber! + 1) of \(totalPictures!)"
        
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

    private func createNameByIndex() -> String? {
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        var nameByIndex: String? = selectedImage
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        
        pictures.sort()
        print(pictures.count)
        
        var index = 1
        
        for picture in pictures {
            if picture == selectedImage {
                nameByIndex = "\(index) of \(pictures.count)"
            }
            index += 1
        }
        
        return nameByIndex
    }
}
