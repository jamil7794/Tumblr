//
//  FullScreenPhotoVC.swift
//  Tumblr
//
//  Created by Jamil Jalal on 9/19/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class FullScreenPhotoVC: UIViewController, UIScrollViewDelegate {

    var pic : [String: Any]!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let photos = pic["photos"] as? [[String: Any]] {
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
        scrollView.contentSize = imageView.image!.size
        scrollView.delegate = self
        
    }
    
    @IBAction func closeBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    
}
