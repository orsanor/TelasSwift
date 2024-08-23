//
//  BlueScreen.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 23/08/24.
//

import Foundation
import UIKit

class BlueScreenCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start(){
        let viewController = BlueScreenViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
