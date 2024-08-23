//
//  BlueScreenViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 23/08/24.
//

import Foundation
import UIKit

class BlueScreenViewController: ViewControllerDefault {
    
    var toGreenTap: (() -> Void)?

    var viewMain = BlueScreenView()
    
    lazy var blueScreenView: BlueScreenView = {
        let blueScreenView = BlueScreenView()
       
        blueScreenView.toGreenTap = {
            self.toGreenTap?()
        }
                
        return blueScreenView
    }()

    override func loadView() {
        self.view = blueScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Azul"
    }
    
}
