//
//  WelcomViewController.swift
//  AboutMeApp AboutMeApp
//
//  Created by Ильнар Ижгузин on 16.02.2024.
//

import UIKit

final class WelcomViewController: UIViewController {

    @IBOutlet var welcomLabel: UILabel!
    
    var welcom: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomLabel.text = ("Welcom, \(String(welcom))")
    }
}

