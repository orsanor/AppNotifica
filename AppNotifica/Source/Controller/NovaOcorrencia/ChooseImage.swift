//
//  ChooseImage.swift
//  AppNotifica
//
//  Created by IFBIOTIC14 on 19/08/24.
//

import Foundation
import UIKit

class ChooseImage: NSObject, UIImagePickerControllerDelegate,
                   UINavigationControllerDelegate {
    var selector = UIImagePickerController()
    
    var alerta = UIAlertController(title: "Escolha uma opção", message: nil, preferredStyle: .actionSheet)
    
    var viewController: UIViewController?
    
    var returnSelector: ((UIImage) -> ())?
    
    func selectorImage(_ viewController: UIViewController, _ retorno: @escaping
                       ((UIImage) -> ())) {
        
        returnSelector = retorno
        
        self.viewController = viewController
        
        let camera = UIAlertAction(title: "Camera", style: .default){
            UIAlertAction in
            self.openCamera()
        }
        
        let gallery = UIAlertAction(title: "Galeria", style: .default){
            UIAlertAction in
            self.openGallery()
        }
        
        let cancel = UIAlertAction(title: "Cancelar", style: .cancel){
            UIAlertAction in
            
        }
        
        selector.delegate = self
        
        alerta.addAction(camera)
        alerta.addAction(gallery)
        alerta.addAction(cancel)
        
        alerta.popoverPresentationController?.sourceView = self.viewController!.view
        viewController.present(alerta, animated: true, completion: nil)
    }
    
    func openCamera() {
        alerta.dismiss(animated: true, completion: nil)
        
        if(UIImagePickerController .isSourceTypeAvailable(.camera)){
            
            selector.sourceType = .camera
            
            self.viewController?.present(selector, animated: true, completion: nil)
        } else {
            
            let alerta = UIAlertController(title: "Alerta", message: "Você não tem câmera", preferredStyle: .actionSheet)
            
            let cancelar = UIAlertAction(title: "Cancelar", style: .cancel){
                UIAlertAction in
            }
            
            alerta.addAction(cancelar)
            self.viewController?.present(alerta, animated: true, completion: nil)
        }
    }
    
    func openGallery() {
        alerta.dismiss(animated: true, completion: nil)
        
        selector.sourceType = .photoLibrary
        
        self.viewController?.present(selector, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
           didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any])
    {
        picker.dismiss(animated: true, completion: nil)
        
        guard let image = info[.originalImage] as? UIImage else {
            fatalError("Esparave-se uma imagem, mas foi dado o seguinte: \(info)")
        }
        
        returnSelector?(image)
    }
}
