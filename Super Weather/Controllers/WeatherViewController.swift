//
//  WeatherViewController.swift
//  Super Weather
//
//  Created by Sergei Zorko on 15/01/2020.
//  Copyright © 2020 Banarum. All rights reserved.
//

import UIKit

class WeatherViewController: ViewController {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.searchController = nil
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let path = UIBezierPath(ovalIn:CGRect(x: image.bounds.width * 0.4, y: 0, width: image.bounds.height, height: image.bounds.height)).cgPath

        let overlay = CAShapeLayer()
        overlay.path = path
        overlay.fillColor = UIColor.gray.cgColor
        overlay.shouldRasterize = true
        image.layer.mask = overlay
    }
    

}
