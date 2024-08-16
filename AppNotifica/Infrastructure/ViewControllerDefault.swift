//
//  ViewControllerDefault.swift
//  AppNotifica
//
//  Created by IFBIOTIC14 on 12/08/24.
//

import Foundation
import UIKit

class ViewControllerDefault: ViewController {
    
    //é executado quando está carregado
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // faz com que o título da superior fique maior
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        // faz com que o botão superior do navigationController desapareça
        self.navigationController?.navigationBar.prefersLargeTitles=true
        
        //faz com que o teclado desapareça clicando em qualquer lugar da tela
        let tap: UITapGestureRecognizer = UITapGestureRecognizer( target: self, action:
            #selector(self.hideKeyBoardByTappinoutSide))
        
        self.view.addGestureRecognizer(tap)
    }
    
    @objc
    
    func hideKeyBoardByTappinoutSide() {
        self.view.endEditing(true)
    }
}
