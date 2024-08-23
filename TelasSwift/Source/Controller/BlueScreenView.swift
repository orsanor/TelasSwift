import Foundation
import UIKit

class BlueScreenView: UIView {
    
    @objc var toGreenTap: (() -> Void)?
    
    var buttonGreenScreen = buttonDefault(text: "Ir para tela Verde")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blueBackgroundColor
        setupVisualElements()
    }
    
    func setupVisualElements() {
        self.addSubview(buttonGreenScreen)
        
        buttonGreenScreen.addTarget(self, action: #selector(greenScreenTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonGreenScreen.widthAnchor.constraint(equalToConstant: 276),
            buttonGreenScreen.heightAnchor.constraint(equalToConstant: 84),
            buttonGreenScreen.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            buttonGreenScreen.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            buttonGreenScreen.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
        ])
    }
    
    @objc
    private func greenScreenTap(){
        toGreenTap?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
}
