//
//  ViewController.swift
//  WantedPreOnboarding
//
//  Created by 김남건 on 2023/02/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        
        let imageLoadView = ImageLoadView()
        imageLoadView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(imageLoadView)
        
        NSLayoutConstraint.activate([
            imageLoadView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            imageLoadView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            imageLoadView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageLoadView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }


}

