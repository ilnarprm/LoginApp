//
//  UserInfoViewController.swift
//  AboutMeApp AboutMeApp
//
//  Created by Ильнар Ижгузин on 16.02.2024.
//

import UIKit

final class UserInfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userBioVC = segue.destination as? UserBioViewController
        userBioVC?.view.backgroundColor = .systemCyan
    }

}

//override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    let userBioVC = segue.destination as? UserBioViewController
//    userBioVC?.user = user
