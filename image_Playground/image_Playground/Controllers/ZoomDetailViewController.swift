//
//  ZoomDetailViewController.swift
//  image_Playground
//
//  Created by Maksym Bilohatniuk on 10/24/19.
//  Copyright © 2019 Maksym Bilohatniuk. All rights reserved.
//

import UIKit

class ZoomDetailViewController: UIViewController, UIScrollViewDelegate{
    
    var image: String?
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        imageOutlet.image = UIImage(named: image!)
        
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageOutlet
    }
}
