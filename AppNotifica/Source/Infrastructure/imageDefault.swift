//
//  imageDefault.swift
//  AppNotifica
//
//  Created by Jonathan Orsano on 30/07/24.
//

import Foundation
import UIKit

class ImageDefault: UIImageView {
    init(image: String) {
        super.init(frame: .zero)
        initDefault(image: image)
    }
    
    private func initDefault( image: String ){
        
        _ = UIImageView()
        self.image = UIImage(named: image)
        self.contentMode = .scaleAspectFit
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
