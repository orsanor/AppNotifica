//
//  NovaOcorrenciaViewController.swift
//  AppNotifica
//
//  Created by Jonathan Orsano on 19/08/24.
//

import Foundation
import UIKit

class NovaOcorrenciaViewController: ViewControllerDefault {
    
    
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let novaOcorrenciaView = NovaOcorrenciaView()
        
        novaOcorrenciaView.onCameraTap = {
            ChooseImage().selectorImage(self) { imagem in 
                novaOcorrenciaView.setImage(image: imagem)
            }
        }
        
       return novaOcorrenciaView
    }()
    
    override func loadView() {
        self.view = novaOcorrenciaView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrência"
        
    }
}

