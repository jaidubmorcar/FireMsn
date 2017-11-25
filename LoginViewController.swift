//
//  LoginViewController.swift
//  FireMsn
//
//  Created by practica on 25/11/17.
//  Copyright © 2017 practica. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var lblMsg: UILabel!
    @IBAction func LogIn(_ sender: UIButton) {
        lblMsg.text="Estamos validando..... Espere un momento"
        Auth.auth().signIn(withEmail: txtEmail.text!, password: txtPassword.text!) { (user, error) in
            if error != nil{
                self.lblMsg.text = error?.localizedDescription
                
            }else{
                
                self.performSegue(withIdentifier: "GoToChat", sender: self)
                self.lblMsg.text = "Te damos la bienvenida."
            }
        }

    }
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
