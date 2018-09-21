//
//  ViewController.swift
//  languageChangeSample
//
//  Created by 安井春輝 on 9/20/30 H.
//  Copyright © 30 Heisei haruki yasui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(mainView)
        mainView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        mainView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        mainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
        mainView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
    }
    
    let mainView: UIView = {
        let view = UIView()
        //autolayoutが自動で入るのをfalseにして、コードでautolayoutができるようにする
        view.translatesAutoresizingMaskIntoConstraints = false
        //orange色をbackgroudColorとして設定
        view.backgroundColor = UIColor(red:254/255, green:227/255, blue:160/255, alpha:1)
        view.layer.cornerRadius = 30
        return view
    }()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

