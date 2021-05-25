//
//  LoadButton.swift
//  Task2
//
//  Created by Сергей Кононов on 22.05.2021.
//

import UIKit

class LoadButton: UIButton {
    
    var indicator = UIActivityIndicatorView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(indicator)
        indicator.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        indicator.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        indicator.isHidden = true
        
        self.layer.cornerRadius = 15
        
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(indicator)
        indicator.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        indicator.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        indicator.isHidden = true
        self.layer.cornerRadius = 15
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        setTitle("", for: .normal)
        indicator.startAnimating()
        indicator.isHidden = false
        
    }
    
    
}
