//
//  MovieAlertVC.swift
//  MovieList
//
//  Created by Alexander Totsky on 08.05.2021.
//

import UIKit

class MovieAlertVC: UIViewController {
    
    let containerView = AlertContainerView()
    let titleLabel = MovieTitleLabel(fontSize: 26, textColor: .black)
    let messageLabel = MovieBodyLabel(frame: .zero)
    let actionButton = MovieButton(backgroundColor: .systemRed, title: "OK")
    
    var alertTitle: String?
    var alertMessage: String?
    var alertButtonTitle: String?
    
    let padding: CGFloat = 20
    
    init(title: String, message: String, buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.alertMessage = message
        self.alertButtonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(containerView)
        view.backgroundColor = UIColor.black.withAlphaComponent(0.75)
        containerView.addSubviews(titleLabel, messageLabel, actionButton)
        
        configureContainerView()
        configureTitleLabel()
        configureActionButton()
        configureMessageLabel()
    }
    
    private func configureContainerView() {
        NSLayoutConstraint.activate([
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 280),
            containerView.heightAnchor.constraint(equalToConstant: 230)
        ])
    }
    
    private func configureTitleLabel() {
        titleLabel.text = alertTitle ?? "Just awesome title :)"
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func configureActionButton() {
        actionButton.setTitle(alertButtonTitle, for: .normal)
        actionButton.addTarget(self, action: #selector(dismissAlert), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -padding),
            actionButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            actionButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func configureMessageLabel() {
        messageLabel.text = alertMessage ?? "Something went wrong..."
        
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: padding),
            messageLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            messageLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            messageLabel.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -10)
        ])
    }
    
    @objc private func dismissAlert() {
        dismiss(animated: true, completion: nil)
    }

}
