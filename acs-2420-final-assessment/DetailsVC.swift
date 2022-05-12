//
//  DetailsVC.swift
//  acs-2420-final-assessment
//
//  Created by Anneka Curry on 5/11/22.
//

import UIKit

class DetailsVC: UIViewController {
    @IBOutlet weak var detailLabel: UILabel!
    var detail: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailLabel.text = detail
    }
}
