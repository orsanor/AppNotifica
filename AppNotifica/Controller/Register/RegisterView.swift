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
   
    
    var imageLabel = labelDefault(text: "Entre com seu e-mail e senha para se registrar.", font: UIFont.systemFont(ofSize: 20, weight: .regular))
    
    var emailTextField = textfieldDefault(text: "Email")
    
    var senhaTextField = textfieldDefault(text: "Senha")
    
    var confirmarSenhaTextField = textfieldDefault(text: "Confirmar Senha")
    
    var buttonLogar = buttonDefault(text: "Registrar")
    
    var buttonRegistrar = buttonDefault(text: "Logar")


    
    private func setupVisualElements() {
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        self.addSubview(confirmarSenhaTextField)
        
        NSLayoutConstraint.activate([
            imageLabel.widthAnchor.constraint(equalToConstant: 374),
            imageLabel.heightAnchor.constraint(equalToConstant: 60),
            imageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            imageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
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
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: confirmarSenhaTextField.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: buttonLogar.bottomAnchor, constant: 25),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
    }
}
