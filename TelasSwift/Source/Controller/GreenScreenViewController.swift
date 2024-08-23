//
//  GreenScreenViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 23/08/24.
//

import Foundation
import UIKit

class GreenScreenViewController: ViewControllerDefault {
    var toBlueTap: (() -> Void)?
    var toRedTap: (() -> Void)?
    
    lazy var greenScreenView: GreenScreenView = {
        let greenScreenView = GreenScreenView()
       
        greenScreenView.toBlueTap = {
            self.toBlueTap?()
        }
        
        greenScreenView.toRedTap = {
            self.toRedTap?()
        }
        
        return greenScreenView
    }()

    
    override func loadView() {
        self.view = greenScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Verde"
    }
}
