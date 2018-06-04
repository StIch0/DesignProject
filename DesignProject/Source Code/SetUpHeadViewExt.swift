////
////  SetUpHeadViewExt.swift
////  DesignProject
////
////  Created by Pavel Burdukovskii on 02/06/2018.
////  Copyright © 2018 Pavel Burdukovskii. All rights reserved.
////
//
import Foundation
import  UIKit
extension ViewController {
     func setUpHeadView(){
        //setup head view
        headView = UIView()
        view.addSubview(headView)
        headView.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1)
        headView.layer.opacity = 0.8
        //anable autolayout
        headView.translatesAutoresizingMaskIntoConstraints = false
        //setup constrait for headView
        headView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        headView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        headView.topAnchor.constraint(equalTo: view.topAnchor, constant: 65).isActive = true
        headView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        //setup preferens for headViewLabel
        headLabelTextUp = UILabel()
        headLabelTextDown = UILabel()
        headLabelTextUp.backgroundColor = .black
        headLabelTextDown.backgroundColor = .clear
        headLabelTextUp.textColor = .white
        headLabelTextDown.textColor = .black
        headLabelTextUp.textAlignment = .center
        headLabelTextDown.textAlignment = .left
        headLabelTextUp.text = "NEWS ABOUT LIAN"
        headLabelTextDown.text = "LATEST NEWS & INSIGHTS"
        headLabelTextDown.font = UIFont.systemFont(ofSize: 10)
        headLabelTextUp.font = UIFont.systemFont(ofSize: 18)
        headLabelTextUp.translatesAutoresizingMaskIntoConstraints = false
        headLabelTextDown.translatesAutoresizingMaskIntoConstraints = false

        //setup text label
        headView.addSubview(headLabelTextUp)
        headView.addSubview(headLabelTextDown)

        headLabelTextUp.leftAnchor.constraint(equalTo: headView.leftAnchor, constant: 30).isActive = true
        headLabelTextUp.rightAnchor.constraint(equalTo: headView.centerXAnchor).isActive = true
        headLabelTextUp.topAnchor.constraint(equalTo: headView.topAnchor, constant : 40).isActive = true
        headLabelTextUp.bottomAnchor.constraint(equalTo: headView.centerYAnchor).isActive = true

        headLabelTextDown.leftAnchor.constraint(equalTo: headView.leftAnchor, constant: 30).isActive = true
        headLabelTextDown.rightAnchor.constraint(equalTo: headView.centerXAnchor).isActive = true
        headLabelTextDown.bottomAnchor.constraint(equalTo: headView.bottomAnchor, constant: -20).isActive = true
        headLabelTextDown.topAnchor.constraint(equalTo: headLabelTextUp.bottomAnchor, constant : 10).isActive = true

        //setup image
        headImage = UIImageView(image: #imageLiteral(resourceName: "lian"))
        headView.addSubview(headImage)
        headImage.translatesAutoresizingMaskIntoConstraints = false
        headImage.rightAnchor.constraint(equalTo: headView.rightAnchor, constant: -50).isActive = true
        headImage.leftAnchor.constraint(equalTo: headView.centerXAnchor, constant: 20).isActive = true
        headImage.topAnchor.constraint(equalTo: headView.topAnchor).isActive = true
        headImage.bottomAnchor.constraint(equalTo: headView.bottomAnchor).isActive = true
    }
}

