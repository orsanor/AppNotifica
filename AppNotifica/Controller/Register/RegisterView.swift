//
//  RegisterView.swift
//  AppNotifica
//
//  Created by IFBIOTIC14 on 31/07/24.
//

import Foundation
import UIKit

class RegisterView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackgroundColor
        setupVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var onLoginTap: (() -> Void)?
    
    var imageLabel: UILabel = {
        let label = labelDefault(text: "Entre com seu e-mail e senha para se registrar.", font: UIFont.systemFont(ofSize: 20, weight: .regular))
        label.textColor = UIColor(named: "imageLabelColor")
        return label
    }()
    
    
    var emailTextField = textfieldDefault(placeholder: "Email", keyBoardType: .emailAddress, returnKeyType: .next)
    
    //cria a função com as propriedades da text no login
    var senhaTextField: textfieldDefault = {
        let text = textfieldDefault(placeholder: "Senha", keyBoardType: .emailAddress, returnKeyType: .done)
        
        text.isSecureTextEntry = true
        
        return text
    }()
    
    //cria a função com as propriedades da text no login
    var confirmarSenhaTextField: textfieldDefault = {
        let text = textfieldDefault(placeholder: "Confirmar Senha", keyBoardType: .emailAddress, returnKeyType: .done)
        
        text.isSecureTextEntry = true
        
        return text
    }()
    
    var buttonRegistrar = buttonDefault(text: "Registrar")
    
    var buttonLogar = buttonDefault(text: "Logar")
    
    
    
    private func setupVisualElements() {
        // super.setupVisualElements()
        emailTextField.delegate = self
        senhaTextField.delegate = self
        confirmarSenhaTextField.delegate = self
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(buttonRegistrar)
        self.addSubview(buttonLogar)
        self.addSubview(confirmarSenhaTextField)
        
        buttonLogar.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            imageLabel.widthAnchor.constraint(equalToConstant: 374),
            imageLabel.heightAnchor.constraint(equalToConstant: 60),
            imageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            imageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
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
            
            confirmarSenhaTextField.widthAnchor.constraint(equalToConstant: 374),
            confirmarSenhaTextField.heightAnchor.constraint(equalToConstant: 60),
            confirmarSenhaTextField.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 23),
            confirmarSenhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            confirmarSenhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: confirmarSenhaTextField.bottomAnchor, constant: 25),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: buttonRegistrar.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
    }
    
    @objc
    private func loginTap(){
        onLoginTap?()
    }
}

extension RegisterView: UITextFieldDelegate {
    
    // configura o botão seguinte do teclado
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == emailTextField {
            self.senhaTextField.becomeFirstResponder()
            
        } else if textField == emailTextField {
            self.confirmarSenhaTextField.resignFirstResponder()
            
        } else {
            textField.resignFirstResponder()
        }
        
        return true
    }
}
