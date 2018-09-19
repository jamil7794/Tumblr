//
//  PhotoDetailsVC.swift
//  Tumblr
//
//  Created by Jamil Jalal on 9/18/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class PhotoDetailsVC: UIViewController {
    
    var pics : [String: Any]!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let photos = pics["photos"] as? [[String: Any]] {
            // photos is NOT nil, we can use it!
            // TODO: Get the photo url
            let photo = photos[0]
            // 2.
            let originalSize = photo["original_size"] as! [String: Any]
            // 3.
            let urlString = originalSize["url"] as! String
            // 4.
            let url = URL(string: urlString)
            imageView.af_setImage(withURL: url!)
        }
        
    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
