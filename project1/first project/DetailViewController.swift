//
//  DetailViewController.swift
//  first project
//
//  Created by Anisha Lamichhane on 6/11/20.
//  Copyright © 2020 Anisha Lamichhane. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var selectedPictureNumber = 0
    var totalPictures = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
        
//        this is th ecode to add button in the navigation bar
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(recommend))


        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
//    @objc func recommend() {
//        guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else {
//                print("no image shared")
//                return
//            }
//            let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
//            vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
//            present(vc,animated: true)
//        }
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
