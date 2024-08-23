//
//  viewControllerDefault.swift
//  TelasSwift
//
//  Created by Jonathan Orsano on 23/08/24.
//

import Foundation
import UIKit

class ViewControllerDefault: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        self.navigationController?.navigationBar.prefersLargeTitles=true
        
    }
    
}
