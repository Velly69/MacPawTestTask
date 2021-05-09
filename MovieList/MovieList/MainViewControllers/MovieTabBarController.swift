//
//  MovieTabBarController.swift
//  MovieList
//
//  Created by Alexander Totsky on 07.05.2021.
//

import UIKit

class MovieTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemRed
        UITabBar.appearance().barTintColor = .black
        self.viewControllers = [createMovieVC(), createWatchLaterVC()]
    }
    
    private func createMovieVC() -> UINavigationController{
        let movieVC = MovieListVC()
        movieVC.title = "In theatres now"
        movieVC.tabBarItem = UITabBarItem(title: "Movie List", image: UIImage(named: "icon-movie"), tag: 0)
        return UINavigationController(rootViewController: movieVC)
    }
    
    private func createWatchLaterVC() -> UINavigationController{
        let watchLaterVC = WatchLaterVC()
        watchLaterVC.title = "Watch later"
        watchLaterVC.tabBarItem = UITabBarItem(title: "Watch Later", image: UIImage(named: "icon-popcorn"), tag: 1)
        return UINavigationController(rootViewController: watchLaterVC)
    }
    
}
