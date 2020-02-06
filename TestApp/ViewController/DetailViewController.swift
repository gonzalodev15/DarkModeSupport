//
//  DetailViewController.swift
//  TestApp
//
//  Created by Gonzalo.Leon on 2/4/20.
//  Copyright © 2020 Gonzalo.Leon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var selectedLandmark : Landmark? 
    
    @IBOutlet weak var landmarkUIImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var parkLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkUIImageView.image = selectedLandmark?.image
        nameLabel.text = selectedLandmark?.name
        parkLabel.text = selectedLandmark?.park
        stateLabel.text = selectedLandmark?.city
        categoryLabel.text = (selectedLandmark?.category).map { $0.rawValue }
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
