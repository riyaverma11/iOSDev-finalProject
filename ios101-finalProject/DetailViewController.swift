//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Riya Verma on 3/21/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    var post: Post!
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var captionView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        // Unwrap the optional poster path
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            
            // Load the photo in the image view via Nuke library...
            Nuke.loadImage(with: url, into: photoView)
            
        }
        captionView.text = post.caption.trimHTMLTags()
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
