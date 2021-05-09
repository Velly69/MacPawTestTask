//
//  PosterTitleLabel.swift
//  MovieList
//
//  Created by Alexander Totsky on 05.05.2021.
//

import UIKit

class MovieTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(fontSize: CGFloat, textColor: UIColor) {
        self.init(frame: .zero)
        let customFont = UIFont(name: "Menlo-Bold", size: fontSize)
        self.textColor = textColor
        self.font = UIFontMetrics(forTextStyle: .headline).scaledFont(for: customFont!)
    }
    
    private func configure() {
        adjustsFontForContentSizeCategory = true
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.25
        numberOfLines = 0
        textAlignment = .center
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
}
