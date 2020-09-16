//
//  ViewController.swift
//  iLogin
//
//  Created by Narlei A Moreira on 16/09/20.
//  Copyright © 2020 Narlei A Moreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Outlets

    @IBOutlet var textFieldEmail: UITextField!
    @IBOutlet var textFieldSenha: UITextField!

    // MARK: Properties

    var arrayUsers = [User]()

    // MARK: Actions

    @IBAction func actionButtonLogin(_ sender: Any) {
        if verifyDataComplete() {
            login(email: textFieldEmail.text!, password: textFieldSenha.text!)
        } else {
            // Alerta de nao preenchido
        }
    }

    @IBAction func actionButtonCadastro(_ sender: Any) {
        if verifyDataComplete() {
            registerUser(email: textFieldEmail.text!, password: textFieldSenha.text!)
        } else {
            // Alerta de informações nao preenchidas
        }
    }

    private func login(email: String, password: String) {
        if let user = getUserWithEmail(email: email) {
            if user.password == password {
                cleanFields()
                // Sucesso
            } else {
                // Inválido
            }
        } else {
            // Alerta inválido
        }
    }

    private func getUserWithEmail(email: String) -> User? {
        for user in arrayUsers {
            if user.email.lowercased() == email.lowercased() {
                return user
            }
        }
        return nil
    }

    private func registerUser(email: String, password: String) {
        if userExists(email: email) { // userExists(email: email)
            // Exibe alerta
        } else {
            if password.isValidPassword() {
            }
            // Cadastra
            let user = User(email: email, senha: password)
            arrayUsers.append(user)
            cleanFields()
            // Exibe alerta
        }
    }

    private func cleanFields() {
        textFieldEmail.text = ""
        textFieldSenha.text = ""
    }

    func userExists(email: String) -> Bool {
        for user in arrayUsers {
            if user.email == email {
                return true
            }
        }

        return false
    }

    private func verifyDataComplete() -> Bool {
        if textFieldEmail.isEmpty() {
            return false
        }
        if textFieldSenha.text == nil || textFieldSenha.text!.isEmpty {
            return false
        }

        return true
    }

    // MARK: ViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldEmail.delegate = self
        textFieldSenha.delegate = self
    }
}
