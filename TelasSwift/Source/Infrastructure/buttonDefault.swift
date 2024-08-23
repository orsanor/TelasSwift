//
//  buttonDefault.swift
//  TelasSwift
//
//  Created by Jonathan Orsano on 23/08/24.
//


import Foundation
import UIKit

class buttonDefault: UIButton {
    
    init(text: String){
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault (text: String){
        _ = UIButton()
        self.setTitle(text, for: .normal)
        self.backgroundColor = .buttonBackground
        self.layer.cornerRadius = 14
        self.translatesAutoresizingMaskIntoConstraints = false

    }
}
