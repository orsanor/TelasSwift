//
//  BlueScreenViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 23/08/24.
//

import Foundation
import UIKit

class BlueScreenViewController: UIViewController {
    
    var viewMain = BlueScreenView()
    
    lazy var blueScreenView: BlueScreenView = {
        let blueScreenView = BlueScreenView()
       
        return blueScreenView
    }()

    override func loadView() {
        self.view = blueScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Azul"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}
