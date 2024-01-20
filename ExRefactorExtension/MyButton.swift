//
//  MyButton.swift
//  ExRefactorExtension
//
//  Created by 김종권 on 2024/01/20.
//

import UIKit

public class MyButton: UIButton {
    private let config: Config
    
    public init(config: Config) {
        self.config = config
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setupUI() {
        backgroundColor = config.backgroundColor
    }
}
