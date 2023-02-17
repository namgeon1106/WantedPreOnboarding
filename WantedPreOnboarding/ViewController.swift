//
//  ViewController.swift
//  WantedPreOnboarding
//
//  Created by 김남건 on 2023/02/15.
//

import UIKit

class ViewController: UIViewController {
    private let vStack = {
        let vStack = UIStackView()
        vStack.axis = .vertical
        vStack.spacing = 10
        vStack.alignment = .fill
        
        return vStack
    }()
    
    let imageLoadViews = (1...5).map { _ in ImageLoadView() }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        
        setUp()
    }

    private func setUp() {
        vStack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(vStack)
        
        NSLayoutConstraint.activate([
            vStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            vStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            vStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
        ])
        
        imageLoadViews.forEach { [unowned vStack] imageLoadView in
            imageLoadView.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                imageLoadView.heightAnchor.constraint(equalToConstant: 50)
            ])
            
            vStack.addArrangedSubview(imageLoadView)
        }
    }
}

