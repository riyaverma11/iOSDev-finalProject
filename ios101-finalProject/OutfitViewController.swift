//
//  OutfitViewController.swift
//  ios101-finalProject
//
//  Created by Riya Verma on 4/23/24.
//

import UIKit

class OutfitViewController: UIViewController {
    
    @IBOutlet weak var taylorButton: UIButton!
    @IBOutlet weak var fearlessButton: UIButton!
    @IBOutlet weak var speakButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var birthButton: UIButton!
    @IBOutlet weak var repButton: UIButton!
    @IBOutlet weak var loverButton: UIButton!
    @IBOutlet weak var folkloreButton: UIButton!
    @IBOutlet weak var evermoreButton: UIButton!
    @IBOutlet weak var midnightsButton: UIButton!
    @IBOutlet weak var ttpdButton: UIButton!
    
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var overlayView: UIView!
    
    
    @IBAction func clickTaylor(_ sender: UIButton) {
        if let url = URL(string: "https://www.shopltk.com/explore/blushfulbelle/posts/3863c403-dc37-11ee-980a-0242ac11002d") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func clickFearless(_ sender: UIButton) {
        if let url = URL(string: "https://www.shopltk.com/explore/blushfulbelle/posts/2b24c3f9-b425-11ee-b916-0242ac110003") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func clickSpeak(_ sender: UIButton) {
        if let url = URL(string: "https://www.shopltk.com/explore/blushfulbelle/posts/1361499d-e419-11ee-b869-0242ac110021") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func clickRed(_ sender: Any) {
        if let url = URL(string: "https://www.shopltk.com/explore/blushfulbelle/posts/556e023f-ef21-11ee-9001-0242ac11002b") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func clickBirth(_ sender: UIButton) {
        if let url = URL(string: "https://www.shopltk.com/explore/blushfulbelle/posts/920c9e8a-fd1b-11ed-a87c-0242ac110004") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func clickRep(_ sender: UIButton) {
        if let url = URL(string: "https://www.shopltk.com/explore/blushfulbelle/posts/ad450a89-b672-11ee-96ca-0242ac110003") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func clickLover(_ sender: UIButton) {
        if let url = URL(string: "https://www.shopltk.com/explore/blushfulbelle/posts/f17b3fe7-6095-11ee-aebf-0242ac110002") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func clickFolklore(_ sender: UIButton) {
        if let url = URL(string: "https://www.shopltk.com/explore/blushfulbelle/posts/aa756713-5b60-11ee-9248-0242ac110002") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func clickEvermore(_ sender: UIButton) {
        if let url = URL(string: "https://www.shopltk.com/explore/blushfulbelle/posts/1c340f28-cb87-11ed-9ee7-0242ac110003") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func clickMidnights(_ sender: UIButton) {
        if let url = URL(string: "https://www.shopltk.com/explore/blushfulbelle/posts/1fbc64be-1878-11ee-9a20-0242ac110003") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func clickTTPD(_ sender: UIButton) {
        if let url = URL(string: "https://www.shopltk.com/explore/blushfulbelle/posts/14bbbc17-005b-11ef-b40e-0242ac11002d") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // trying to make the background image a little bit transparent so that i can read the options
        overlayView.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        backgroundImage.addSubview(overlayView)
        
        // Do any additional setup after loading the view.
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
