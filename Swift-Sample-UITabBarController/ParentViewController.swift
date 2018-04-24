//
//  ParentViewController.swift
//  Swift-Sample-UITabBarController
//
//  Created by A10 Lab Inc. 003 on 2018/04/20.
//  Copyright © 2018年 A10 Lab Inc. 003. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {

    let titleName: String

    let color: UIColor

    let pushButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("push", for: UIControlState())
        button.setTitleColor(.blue, for: UIControlState())
        button.backgroundColor = .white
        button.layer.cornerRadius = 5
        return button
    }()

    init(title: String, color: UIColor) {
        self.titleName = title
        self.color = color
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color
        navigationItem.title = titleName
        pushButton.addTarget(self, action: #selector(self.onPushTapped), for: .touchUpInside)

        view.addSubview(pushButton)
        pushButton.translatesAutoresizingMaskIntoConstraints = false
        pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pushButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        pushButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        pushButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

    @objc func onPushTapped(_ sender: UIButton) {
        let title = titleName + "+child"
        navigationController?.pushViewController(ChildViewController(title: title, color: .cyan), animated: true)
    }
}
