//
//  DetailViewController.swift
//  MilestoneProj1
//
//  Created by Filip Mastalerz on 03/03/2021.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageToLoad = selectedImage {
            // how to add border around flag image
            imageView.image = UIImage(named: imageToLoad)
        }
        
        
        
    }
}
