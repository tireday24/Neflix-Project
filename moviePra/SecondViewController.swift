//
//  SecondViewController.swift
//  moviePra
//
//  Created by 권민서 on 2022/07/05.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var posterImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        posterImage.image = UIImage(named: "movie\(Int.random(in: 1...17))")
        posterImage.layer.cornerRadius = 100
        posterImage.layer.borderWidth = 5
        posterImage.layer.borderColor = UIColor.blue.cgColor
        
    }
    
    @IBAction func resultButtonClicked(_ sender: Any) {
        
        posterImage.image = UIImage(named: "movie\(Int.random(in: 1...17))")
        
    }
    

}
