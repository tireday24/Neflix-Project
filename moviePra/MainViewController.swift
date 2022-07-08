//
//  MainViewController.swift
//  moviePra
//
//  Created by 권민서 on 2022/07/05.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var firstImage: UIImageView!
    
    @IBOutlet weak var secondImage: UIImageView!
    
    @IBOutlet weak var thirdImage: UIImageView!
    
    
    @IBOutlet weak var moviePoster: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        moviePoster.image = UIImage(named: "movie\(Int.random(in: 1...17))")
        moviePoster.layer.cornerRadius = 100
        moviePoster.layer.borderWidth = 5
        moviePoster.layer.borderColor = UIColor.black.cgColor
        
        
        firstImage.layer.cornerRadius = firstImage.frame.height / 2
        firstImage.layer.borderWidth = 3
        firstImage.layer.borderColor = UIColor.gray.cgColor
        

        secondImage.layer.cornerRadius = secondImage.frame.height / 2
        secondImage.layer.borderWidth = 3
        secondImage.layer.borderColor = UIColor.gray.cgColor

        thirdImage.layer.cornerRadius = thirdImage.frame.height / 2
        thirdImage.layer.borderWidth = 3
        thirdImage.layer.borderColor = UIColor.gray.cgColor
        
       
    }
    
    
   
    @IBAction func randomBackground(_ sender: Any) {
        
        moviePoster.image = UIImage(named: "movie\(Int.random(in: 1...17))")
        
    }
    

}
