//
//  CreateAccountViewController.swift
//  inventory-app
//
//  Created by Intekglobal01 on 7/4/23.
//

import UIKit
import Firebase

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func CreateAccButtonPressed(_ sender: UIButton) {
        guard let email = EmailTextField.text else { return}
        guard let pasword = PasswordTextField.text else { return }
        
        Auth.auth().createUser(withEmail: email, password: pasword ){firebaseResult, error in
            if let e = error{
                print(e.localizedDescription)
            }
            else{
                self.performSegue(withIdentifier: "goToMain", sender: self)
            }
        }
        
        
    }
    
    
    @IBAction func DoToLoginPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "moveToLogin", sender: self)
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
