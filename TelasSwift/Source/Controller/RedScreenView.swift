//
//  RedScreenView.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 23/08/24.
//

import Foundation
import UIKit

class RedScreenView: UIView {
    @objc var toBlueTap: (() -> Void)?
    @objc var toGreenTap: (() -> Void)?
    
    var buttonBlueScreen = buttonDefault(text: "Ir para tela Azul")
    var buttonGreenScreen = buttonDefault(text: "Voltar para tela Verde")

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .redBackgroundColor
        setupVisualElements()
    }
    
    func setupVisualElements() {
        self.addSubview(buttonBlueScreen)
        self.addSubview(buttonGreenScreen)
        
        buttonBlueScreen.addTarget(self, action: #selector(blueScreenTap), for: .touchUpInside)
        buttonGreenScreen.addTarget(self, action: #selector(greenScreenTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonBlueScreen.widthAnchor.constraint(equalToConstant: 276),
            buttonBlueScreen.heightAnchor.constraint(equalToConstant: 84),
            buttonBlueScreen.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            buttonBlueScreen.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            buttonBlueScreen.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            buttonGreenScreen.widthAnchor.constraint(equalToConstant: 276),
            buttonGreenScreen.heightAnchor.constraint(equalToConstant: 84),
            buttonGreenScreen.topAnchor.constraint(equalTo: buttonBlueScreen.bottomAnchor, constant: 40),
            buttonGreenScreen.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            buttonGreenScreen.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
        ])
    }
    
    @objc
    private func blueScreenTap(){
        toBlueTap?()
    }

    @objc
    private func greenScreenTap(){
        toGreenTap?()
    }

    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
}
