//
//  LoginViewController.swift
//  inventory-app
//
//  Created by Intekglobal01 on 7/4/23.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    var warningPopUp: WarningPopUp!
        
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func ForgotPwClicked(_ sender: UIButton) {
        print("Password forgotten")
    }
    
    @IBAction func ContinueClicked(_ sender: UIButton) {
        
        guard let email = EmailTextField.text else { return}
        guard let pasword = PasswordTextField.text else { return }
        
        Auth.auth().signIn(withEmail: email, password: pasword ){ [self]firebaseResult, error in
            if let e = error{
                print(e.localizedDescription)
               /* self.warningPopUp = WarningPopUp(frame: self.view.frame)
                self.warningPopUp.closeBtn.addTarget(self, action: #selector(self.closeBtnTapped), for: .touchUpInside)
                self.view.addSubview(warningPopUp)
                */
            }
            else{
                self.performSegue(withIdentifier: "goToMain", sender: self)
            }
        }
    }
    
   /* @objc func  closeBtnTapped(){
        self.warningPopUp.removeFromSuperview()
    }*/
    
    
    @IBAction func CreateAccClicked(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "moveToCreateAcc", sender: self)
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
