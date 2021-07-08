//
//  TeamWorkTextField.swift
//  FourthTeamWork
//
//  Created by Macbook Air on 7/8/21.
//

import UIKit

class TeamWorkTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupLayout()
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: 20, y: 0, width: bounds.width - 20 - 20, height: bounds.height)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: 20, y: 0, width: bounds.width - 20 - 20, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: 20, y: 0, width: bounds.width - 20 - 20, height: bounds.height)
    }
    
    private func setupLayout() {
        
    }
}
