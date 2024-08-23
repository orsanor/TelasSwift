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
    
    override func loadView() {
        self.view = viewMain
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "teste"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
