//
//  GreenScreenView.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 23/08/24.
//

import Foundation
import UIKit

class GreenScreenView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .greenBackgroundColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
}
