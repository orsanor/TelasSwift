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
        
        viewController.toRedTap = {
            self.goToRedTap()
        }
        
        viewController.toBlueTap = {
            self.goToBlueTap()
        }
    }
    
    func goToRedTap() {
        let coordinator = RedScreenCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    func goToBlueTap() {
        let coordinator = BlueScreenCoordinator(navigationController: navigationController)
        coordinator.start()
    }

}
