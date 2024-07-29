//
//  LoginView.swift
//  AppNotifica
//
//  Created by IFBIOTIC14 on 29/07/24.
//

import Foundation
import UIKit

class LoginView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    lazy var imageLogin: UIImageView = {
        let imagem = UIImageView()
        imagem.image = UIImage(named: "ImageLogin")
        imagem.contentMode = .scaleAspectFit
        
        imagem.translatesAutoresizingMaskIntoConstraints = false
        return imagem
    }()
    
    lazy var imageLabel: UILabel = {
        let label = UILabel()
        label.text = "Registre e gerencia as ocorrências no seu IF"
        label.textColor = UIColor(red: 138/255, green: 138/255, blue: 142/255, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont(name: "SProDisplay-Light", size: 17)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func setupVisualElements() {
        addSubview(imageLogin)
        
        NSLayoutConstraint.activate([
            imageLogin.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            imageLogin.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageLogin.widthAnchor.constraint(equalToConstant: 275),
            imageLogin.heightAnchor.constraint(equalToConstant: 82),
            
            
            imageLogin.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 5),
            imageLogin.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            imageLogin.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
}
