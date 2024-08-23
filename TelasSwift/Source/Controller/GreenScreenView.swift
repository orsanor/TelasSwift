//
//  GreenScreenView.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 23/08/24.
//

import Foundation
import UIKit

class GreenScreenView: UIView {
    @objc var toBlueTap: (() -> Void)?
    @objc var toRedTap: (() -> Void)?
    
    var buttonBlueScreen = buttonDefault(text: "Voltar para tela Azul")
    var buttonRedScreen = buttonDefault(text: "Ir para tela Vermelha")

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .greenBackgroundColor
        setupVisualElements()
    }
    
    func setupVisualElements() {
        self.addSubview(buttonBlueScreen)
        self.addSubview(buttonRedScreen)
        
        buttonBlueScreen.addTarget(self, action: #selector(blueScreenTap), for: .touchUpInside)
        buttonRedScreen.addTarget(self, action: #selector(redScreenTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonBlueScreen.widthAnchor.constraint(equalToConstant: 276),
            buttonBlueScreen.heightAnchor.constraint(equalToConstant: 84),
            buttonBlueScreen.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            buttonBlueScreen.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            buttonBlueScreen.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            buttonRedScreen.widthAnchor.constraint(equalToConstant: 276),
            buttonRedScreen.heightAnchor.constraint(equalToConstant: 84),
            buttonRedScreen.topAnchor.constraint(equalTo: buttonBlueScreen.bottomAnchor, constant: 40),
            buttonRedScreen.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            buttonRedScreen.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
        ])
    }
    
    @objc
    private func blueScreenTap(){
        toBlueTap?()
    }

    @objc
    private func redScreenTap(){
        toRedTap?()
    }

    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
}
