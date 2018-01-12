//
//  ViewController.swift
//  NonStoryboardApp
//
//  Created by Florian Schmidt on 11.01.18.
//  Copyright © 2018 elmland.blog. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    fileprivate lazy var webView: WKWebView = {
        let w = WKWebView()
        w.translatesAutoresizingMaskIntoConstraints = false
        return w
    }()
    
    fileprivate lazy var infoLabel: UILabel = {
        let l = UILabel()
        
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "No Storyboard"
        l.font = UIFont.systemFont(ofSize: 17, weight: .black)
        l.textAlignment = .center
        
        return l
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.load(URLRequest(url: URL(string: "https://elmland.blog/2018/01/12/xcode-project-without-storyboard/")!))
        
        customizeView()
    }
    
    private func customizeView(){
        view.backgroundColor = .white
        
        view.addSubview(infoLabel)
        view.addSubview(webView)
        
        infoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        infoLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        webView.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 20).isActive = true
        webView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        webView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        webView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
    }
}

