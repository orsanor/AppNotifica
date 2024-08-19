//
//  LoginView.swift
//  AppNotifica
//
//  Created by IFBIOTIC14 on 29/07/24.
//

import Foundation
import UIKit

class LoginView: ViewDefault {
    
    var onRegisterTap: (() -> Void)?
    var onLoginTap: (() -> Void)?
    
    lazy var imageLogin = ImageDefault(image: "ImageLogin")
    
    lazy var imageLabel = labelDefault(text: "Registre e gerencia as ocorrências no seu IF", font: UIFont.systemFont(ofSize: 15, weight: .regular))
    
    //cria a variavel com as propriedades da text no login
    var emailTextField = textfieldDefault(placeholder: "Email", keyBoardType: .emailAddress, returnKeyType: .next)
    
    //cria a função com as propriedades da text no login
    var senhaTextField: textfieldDefault = {
        let text = textfieldDefault(placeholder: "Senha", keyBoardType: .emailAddress, returnKeyType: .done)
        
        text.isSecureTextEntry = true
        
        return text
    }()
  
    var buttonLogar = buttonDefault(text: "Logar")
    
    var buttonRegistrar = buttonDefault(text: "Registrar")
    
    
    
    
    override func setupVisualElements() {
        super.setupVisualElements()
        emailTextField.delegate = self
        senhaTextField.delegate = self
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        buttonRegistrar.addTarget(self, action: #selector(registerTap), for: .touchUpInside)
        buttonLogar.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            imageLogin.widthAnchor.constraint(equalToConstant: 276),
            imageLogin.heightAnchor.constraint(equalToConstant: 84),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            
            imageLabel.widthAnchor.constraint(equalToConstant: 275),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 2),
            imageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 45),
            imageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            senhaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 23),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: buttonLogar.bottomAnchor, constant: 25),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
        
    }
    @objc
    private func registerTap(){
        onRegisterTap?()
    }
    
    @objc
    private func loginTap(){
        onLoginTap?()
    }
}

extension LoginView: UITextFieldDelegate {
    
    // configura o botão seguinte do teclado
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == emailTextField {
            self.senhaTextField.becomeFirstResponder()
            
        } else {
            textField.resignFirstResponder()
        }
        
        return true
    }
}
