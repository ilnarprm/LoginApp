//
//  ViewController.swift
//  AboutMeApp AboutMeApp
//
//  Created by Ильнар Ижгузин on 11.02.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "1"
    private let password = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            // Введенное имя не валидно, отменяем переход и показываем алерт контроллер
            showAlert(withTitle: "asdfd", andMassage: "sadfa")
            return false
        }
        // Введенное имя валидно, разрешаем переход
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomVC = segue.destination as? WelcomViewController
        welcomVC?.welcom = userNameTextField.text
    }
    
    private func showAlert(withTitle title: String, andMassage message: String) {
        let allert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {
            _ in self.passwordTextField.text = ""
        }
        allert.addAction(okAction)
        present(allert, animated: true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        //let welcomVC = segue.source as? WelcomViewController
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func getForgotName() {
        showAlert(withTitle: "Name", andMassage: "User Name is \(user)")
    }
    
    @IBAction func getForgotPassword() {
        showAlert(withTitle: "Password", andMassage: "Password is \(password)")
    }
}

