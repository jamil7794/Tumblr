//
//  FullScreenPhotoVC.swift
//  Tumblr
//
//  Created by Jamil Jalal on 9/19/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class FullScreenPhotoVC: UIViewController {

    var pic : [String: Any]!
    
    @IBOutlet weak var fullScreenPic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let photos = pic["photos"] as? [[String: Any]] {
//            // photos is NOT nil, we can use it!
//            // TODO: Get the photo url
//            let photo = photos[0]
//            // 2.
//            let originalSize = photo["original_size"] as! [String: Any]
//            // 3.
//            let urlString = originalSize["url"] as! String
//            // 4.
//            let url = URL(string: urlString)
//            fullScreenPic.af_setImage(withURL: url!)
//        }
        
    }

    
}
