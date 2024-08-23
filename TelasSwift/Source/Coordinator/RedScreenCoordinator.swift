//
//  RedScreenCoordinator.swift
//  TelasSwift
//
//  Created by IFBIOTIC14 on 23/08/24.
//

import Foundation
import UIKit

class RedScreenCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start(){
        let viewController = RedScreenViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.toGreenTap = {
            self.goToGreenTap()
        }
        
        viewController.toBlueTap = {
            self.goToBlueTap()
        }
    }
    
    func goToGreenTap() {
        let coordinator = GreenScreenCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    func goToBlueTap() {
        let coordinator = BlueScreenCoordinator(navigationController: navigationController)
        coordinator.start()
    }}
