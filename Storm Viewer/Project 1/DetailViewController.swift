//
//  DetailViewController.swift
//  Project 1
//
//  Created by Neeraj Gupta on 06/09/20.
//  Copyright © 2020 Neeraj Gupta. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage : String?
    var pictureNumber : Int?
    var totalPictures : Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        let valueOfPictureNumber : String? = "Picture \((pictureNumber ?? 0) + 1) of \(totalPictures ?? 0)"
        title = valueOfPictureNumber
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
