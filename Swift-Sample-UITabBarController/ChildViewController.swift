//
//  ChildViewController.swift
//  Swift-Sample-UITabBarController
//
//  Created by A10 Lab Inc. 003 on 2018/04/20.
//  Copyright © 2018年 A10 Lab Inc. 003. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {

    let titleName: String

    let color: UIColor

    let popButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("pop", for: UIControlState())
        button.setTitleColor(.blue, for: UIControlState())
        button.backgroundColor = .white
        button.layer.cornerRadius = 5
        return button
    }()

    init(title: String, color: UIColor) {
        self.titleName = title
        self.color = color
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color
        //navigationController?.isNavigationBarHidden = true
        popButton.addTarget(self, action: #selector(self.onPopTapped), for: .touchUpInside)

        view.addSubview(popButton)
        popButton.translatesAutoresizingMaskIntoConstraints = false
        popButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        popButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        popButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        popButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

    @objc func onPopTapped(_ sender: UIButton) {
        navigationController?.isNavigationBarHidden = false
        navigationController?.popViewController(animated: true)
    }
}
