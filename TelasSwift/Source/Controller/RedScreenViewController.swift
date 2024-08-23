//
//  RedScreenViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 23/08/24.
//

import Foundation
import UIKit

class RedScreenViewController: ViewControllerDefault {
    
    var toBlueTap: (() -> Void)?
    var toGreenTap: (() -> Void)?
    
    lazy var redScreenView: RedScreenView = {
        let redScreenView = RedScreenView()
       
        redScreenView.toBlueTap = {
            self.toBlueTap?()
        }
        
        redScreenView.toGreenTap = {
            self.toGreenTap?()
        }
        
        return redScreenView
    }()
    
    override func loadView() {
        self.view = redScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Vermelha"
    }
}
