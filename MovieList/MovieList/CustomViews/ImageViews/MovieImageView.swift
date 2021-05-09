//
//  PosterImageView.swift
//  MovieList
//
//  Created by Alexander Totsky on 05.05.2021.
//

import UIKit

class MovieImageView: UIImageView {
    
    let cache = MovieNetworkManager.shared.cache
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        clipsToBounds = true
        contentMode = .scaleAspectFit
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func downloadPosterImage(fromURL url: String) {
        MovieNetworkManager.shared.downloadImage(from: url) { [weak self] (image) in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
    
}
