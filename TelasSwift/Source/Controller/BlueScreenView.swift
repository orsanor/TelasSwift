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
        self.backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
}
