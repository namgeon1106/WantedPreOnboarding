//
//  ImageLoadView.swift
//  WantedPreOnboarding
//
//  Created by 김남건 on 2023/02/17.
//

import UIKit

class ImageLoadView: UIStackView {
    private let imageView = UIImageView(image: UIImage(systemName: "photo"))
    private let progressView = UIProgressView()
    
    private let button = {
        let button = UIButton()
        button.configuration = .filled()
        button.setTitle("Load", for: .normal)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        axis = .horizontal
        alignment = .center
        spacing = 10
        
        setUp()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp() {
        imageView.sizeToFit()
        
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 90),
            imageView.heightAnchor.constraint(equalToConstant: 50),
            progressView.widthAnchor.constraint(equalToConstant: 180),
            progressView.heightAnchor.constraint(equalToConstant: 2)
        ])
        
        [imageView, progressView, button].forEach { [unowned self] subView in
            subView.translatesAutoresizingMaskIntoConstraints = false
            self.addArrangedSubview(subView)
        }
    }
}
