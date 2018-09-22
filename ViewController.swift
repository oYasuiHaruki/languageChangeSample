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
        setUpViews()
    }
    
    //ここにmainViewを書いていきます。
    let mainView: UIView = {
        let view = UIView()
        //autolayoutが自動で入るのをfalseにして、コードでautolayoutができるようにする
        view.translatesAutoresizingMaskIntoConstraints = false
        //orange色をbackgroudColorとして設定
        view.backgroundColor = UIColor(red:254/255, green:227/255, blue:160/255, alpha:1)
        view.layer.cornerRadius = 30
        return view
    }()
    
    //ここからLabelを記入していく
    let morningLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.blue
        //masksToBoundsをtrueにすることで、labelの角を丸めること(cornerRadius)ができるようになります。
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 20
        label.text = "Good morning"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = UIColor.white
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    let afternoonLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.yellow
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 20
        label.text = "Good afternoon"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    let eveningLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.red
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 20
        label.text = "Good evening"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = UIColor.white
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    func setUpViews() {
        self.view.addSubview(mainView)
        mainView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        //leadingAnchorはleftAnchorと同じです。(leadingは先端の意味)
        mainView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        mainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true
        //trailingAnchorはrightAnchorと同じです。(trailingは後端の意味)
        mainView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        
        mainView.addSubview(morningLabel)
        morningLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 100).isActive = true
        morningLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20).isActive = true
        morningLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20).isActive = true
        //heightAnchorを定義して、高さを固定する。
        morningLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        mainView.addSubview(afternoonLabel)
        afternoonLabel.topAnchor.constraint(equalTo: morningLabel.bottomAnchor, constant: 20).isActive = true
        afternoonLabel.leadingAnchor.constraint(equalTo: morningLabel.leadingAnchor).isActive = true
        afternoonLabel.trailingAnchor.constraint(equalTo: morningLabel.trailingAnchor).isActive = true
        afternoonLabel.heightAnchor.constraint(equalTo: morningLabel.heightAnchor).isActive = true
        
        mainView.addSubview(eveningLabel)
        eveningLabel.topAnchor.constraint(equalTo: afternoonLabel.bottomAnchor, constant: 20).isActive = true
        eveningLabel.leadingAnchor.constraint(equalTo: morningLabel.leadingAnchor).isActive = true
        eveningLabel.trailingAnchor.constraint(equalTo: morningLabel.trailingAnchor).isActive = true
        eveningLabel.heightAnchor.constraint(equalTo: morningLabel.heightAnchor).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

