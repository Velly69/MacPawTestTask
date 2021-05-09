//
//  MovieBodyLabel.swift
//  MovieList
//
//  Created by Alexander Totsky on 08.05.2021.
//

import UIKit

class MovieBodyLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        let customFont = UIFont(name: "Menlo-Bold", size: 16)
        font = UIFontMetrics(forTextStyle: .headline).scaledFont(for: customFont!)
        textColor = .label
        textAlignment = .center
        adjustsFontForContentSizeCategory = true
        minimumScaleFactor = 0.25
        numberOfLines = 3
        lineBreakMode = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }
}
