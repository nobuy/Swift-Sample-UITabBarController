//
//  RootTabBarViewController.swift
//  Swift-Sample-UITabBarController
//
//  Created by A10 Lab Inc. 003 on 2018/04/20.
//  Copyright © 2018年 A10 Lab Inc. 003. All rights reserved.
//

import UIKit

class RootTabBarViewController: UITabBarController {

    private lazy var historyVc = ViewController(title: "history", color: .blue)
    private lazy var bookmarksVc = ViewController(title: "bookmarks", color: .green)
    private lazy var contactsVc = ViewController(title: "contacts", color: .yellow)

    lazy var historyNvc = UINavigationController(rootViewController: self.historyVc)
    lazy var bookmarksNvc = UINavigationController(rootViewController: self.bookmarksVc)
    lazy var contactsNvc = UINavigationController(rootViewController: self.contactsVc)

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let historyTab = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        historyNvc.tabBarItem = historyTab
        let bookmarksTab = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        bookmarksNvc.tabBarItem = bookmarksTab
        let contactsTab = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
        contactsNvc.tabBarItem = contactsTab

        setViewControllers([historyNvc, bookmarksNvc, contactsNvc], animated: false)

        tabBar.isTranslucent = false
    }
}
