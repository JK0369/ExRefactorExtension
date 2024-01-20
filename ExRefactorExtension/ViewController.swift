//
//  ViewController.swift
//  ExRefactorExtension
//
//  Created by 김종권 on 2024/01/20.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = MyButton(config: .init(backgroundColor: .green))
    }
}

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

// MyButton+Config.swift
public extension MyButton {
    struct Config {
        public let backgroundColor: UIColor
        
        public init(backgroundColor: UIColor) {
            self.backgroundColor = backgroundColor
        }
    }
}
