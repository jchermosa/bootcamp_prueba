//
//  LoginViewController.swift
//  prueba
//
//  Created by Julio Hermosa on 2025-02-24.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.roundBorders()
        loginButton.tintColor = MisColores.rojoSangre
        //para añadir una acción a un gesto dentro de una vista (imageView)
        // Do any additional setup after loading the view.
    }
    
    //acción del botón login
    @IBAction func actionButton(_ sender: Any) {
        goToHome()
    }
    
    //acción de la imagen
    @objc func imageAction() {
        goToHome()
    }
    
    @IBAction func leftButtonAction(_ sender: Any) {
        heightConstraint.constant = 100
    }
    func goToHome() {
        //instanciamos la clase con su storyboard ID
        let vc = (self.storyboard?.instantiateViewController(withIdentifier: "homeID") as? HomeViewController)!
        vc.nombre = userTextField.text ?? "invitado"
        show(vc, sender: nil)
    }

}

extension UIButton {
    func roundBorders() {
        self
    }
}
