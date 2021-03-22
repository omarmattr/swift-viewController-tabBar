//
//  Details.swift
//  viewController&tabBar
//
//  Created by omar mattr on 22/03/2021.
//

import UIKit
class Details: UIViewController {
    var data:Data?

    @IBOutlet weak var dTxt: UILabel!
    @IBOutlet weak var dImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = data?.image, let title = data?.title{
            dImage.image = UIImage(named: image)
            dTxt.text = title
        }
        
        
    }
  
    
}
