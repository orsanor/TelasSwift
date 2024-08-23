//
//  GreenScreenCoordinator.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 23/08/24.
//

import Foundation
import UIKit

class GreenScreenCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start(){
        let viewController = GreenScreenViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
