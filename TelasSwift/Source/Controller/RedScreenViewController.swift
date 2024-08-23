//
//  RedScreenViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 23/08/24.
//

import Foundation
import UIKit

class RedScreenViewController: UIViewController {
    
    var viewMain = RedScreenView()
    
    override func loadView() {
        self.view = viewMain
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Vermelha"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
