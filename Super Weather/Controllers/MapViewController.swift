//
//  ViewController.swift
//  Super Weather
//
//  Created by Sergei Zorko on 15/01/2020.
//  Copyright © 2020 Banarum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherPanel: UIView! {
        didSet {
            weatherPanel.layer.cornerRadius = 4
            
            let shadowPath = UIBezierPath(rect: weatherPanel.bounds)
            weatherPanel.layer.masksToBounds = false
            weatherPanel.layer.shadowColor = UIColor.black.cgColor
            weatherPanel.layer.shadowOffset = CGSize(width: 0, height: 0.5)
            weatherPanel.layer.shadowOpacity = 0.2
            weatherPanel.layer.shadowPath = shadowPath.cgPath
            weatherPanel.layer.shadowRadius = 20
            
        }
    }
    
    
    @IBOutlet weak var showBtn: UIButton! {
        didSet {
            showBtn.layer.backgroundColor = UIColor.white.cgColor
            showBtn.layer.borderColor = UIColor.blue.cgColor
            showBtn.layer.borderWidth = 1

            showBtn.layer.cornerRadius = 56/2
            showBtn.layer.masksToBounds = true
            
            showBtn.setTitleColor(.blue, for: .normal)
            showBtn.setTitleColor(.white, for: .highlighted)
            
            showBtn.setBackgroundImage(UIImage.from(color: .white), for: .normal)
            showBtn.setBackgroundImage(UIImage.from(color: .blue), for: .highlighted)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = false
        
        let searchController = UISearchController(searchResultsController: nil)
        //searchController.delegate = self

        let searchBar = searchController.searchBar
        searchBar.tintColor = UIColor.white
        searchBar.barTintColor = UIColor.white

       if let textfield = searchBar.value(forKey: "searchField") as? UITextField {
            textfield.textColor = UIColor.blue
            if let backgroundview = textfield.subviews.first {

                // Background color
                backgroundview.backgroundColor = UIColor.white

                // Rounded corner
                backgroundview.layer.cornerRadius = 10;
                backgroundview.clipsToBounds = true;
            }
        }

        if let navigationbar = self.navigationController?.navigationBar {
            navigationbar.barTintColor = UIColor.white
        }

        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        
    }

}

