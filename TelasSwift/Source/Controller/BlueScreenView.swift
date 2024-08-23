//
//  BlueScreenView.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 23/08/24.
//

import Foundation
import UIKit

class BlueScreenView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blueBackgroundColor
    }
    
    var buttonGreenScreen: UIButton = {
        let button = UIButton ()
        button.setTitle("vai para verde", for: .normal)
        button.layer.backgroundColor = CGColor(red: 0.369, green: 0.649, blue: 666, alpha: 222)
        button.layer.cornerRadius = 14
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    func setupVisualElements() {
        self.addSubview(buttonGreenScreen)
        
        
        NSLayoutConstraint.activate([
            
            buttonGreenScreen.widthAnchor.constraint(equalToConstant: 374),
            buttonGreenScreen.heightAnchor.constraint(equalToConstant: 60),
            buttonGreenScreen.topAnchor.constraint(equalTo: self.topAnchor, constant: 25),
            buttonGreenScreen.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonGreenScreen.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
}
