//
//  SetUpBodyViewExt.swift
//  DesignProject
//
//  Created by Pavel Burdukovskii on 02/06/2018.
//  Copyright © 2018 Pavel Burdukovskii. All rights reserved.
//
//
import Foundation
import UIKit
extension ViewController {
    private func setUpContainerView() {
        authorLabel = UILabel()
        dateLabel = UILabel()
        likesLabel = UILabel()

        authorLabel.text = "by Jonn Pereira"
        authorLabel.textColor = .black
        authorLabel.backgroundColor = .clear
        authorLabel.font = UIFont.systemFont(ofSize: 5)

        dateLabel.text = "February 28, 2015"
        dateLabel.textColor = .black
        dateLabel.backgroundColor = .clear
        dateLabel.font = UIFont.systemFont(ofSize: 5)

        likesLabel.text = "\u{2665} 324 likes"
        likesLabel.textColor = .black
        likesLabel.backgroundColor = .clear
        likesLabel.font = UIFont.systemFont(ofSize: 5)

        containerADL = UIStackView(arrangedSubviews: [authorLabel,dateLabel,likesLabel])
        containerADL.translatesAutoresizingMaskIntoConstraints = false
        bodyView.addSubview(containerADL)
        containerADL.axis = .horizontal
        containerADL.distribution = .equalSpacing
        containerADL.alignment = .center
        containerADL.spacing = 1
        containerADL.centerXAnchor.constraint(equalTo: bodyView.centerXAnchor).isActive = true
        containerADL.heightAnchor.constraint(equalToConstant: 20).isActive = true
        containerADL.widthAnchor.constraint(equalTo: bodyView.widthAnchor, constant: -270).isActive = true
        containerADL.topAnchor.constraint(equalTo: blogPostLabel.bottomAnchor, constant: 5).isActive = true
    }

    private func setUpWallImage() {
        wallImage = UIImageView(image: #imageLiteral(resourceName: "wall"))
        bodyView.addSubview(wallImage)
        wallImage.translatesAutoresizingMaskIntoConstraints = false
        wallImage.topAnchor.constraint(equalTo: containerADL.bottomAnchor, constant: 5).isActive = true
        wallImage.widthAnchor.constraint(equalTo: bodyView.widthAnchor, constant: -120).isActive = true
        wallImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
        wallImage.centerXAnchor.constraint(equalTo: bodyView.centerXAnchor).isActive = true
    }

    private func setUpFirstTextView() {
        firstText = UITextView()
        bodyView.addSubview(firstText)
        firstText.translatesAutoresizingMaskIntoConstraints = false
        firstText.topAnchor.constraint(equalTo: wallImage.bottomAnchor, constant: 5).isActive = true
        firstText.centerXAnchor.constraint(equalTo: wallImage.centerXAnchor).isActive = true
        firstText.widthAnchor.constraint(equalTo: bodyView.widthAnchor, constant: -150).isActive = true
        firstText.isEditable = false
        firstText.isSelectable = false
        firstText.isScrollEnabled = false
        firstText.heightAnchor.constraint(equalToConstant: 50).isActive = true
        firstText.font = UIFont.systemFont(ofSize: 8)
        firstText.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        firstText.textColor = .black
        firstText.textAlignment = .left
        firstText.backgroundColor = .clear
    }

    private func setUpSecondTextView() {
        secondText = UITextView()
        bodyView.addSubview(secondText)
        secondText.translatesAutoresizingMaskIntoConstraints = false
        secondText.topAnchor.constraint(equalTo: firstText.bottomAnchor, constant: -2).isActive = true
        secondText.centerXAnchor.constraint(equalTo: wallImage.centerXAnchor).isActive = true
        secondText.widthAnchor.constraint(equalTo: bodyView.widthAnchor, constant: -150).isActive = true
        secondText.isEditable = false
        secondText.isSelectable = false
        secondText.isScrollEnabled = false
        secondText.heightAnchor.constraint(equalToConstant: 45).isActive = true
        secondText.font = UIFont.systemFont(ofSize: 8)
        secondText.text = "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        secondText.textColor = .black
        secondText.textAlignment = .left
        secondText.backgroundColor = .clear
    }

    private func setUpThridTextView() {
        thridText = UITextView()
        bodyView.addSubview(thridText)
        thridText.translatesAutoresizingMaskIntoConstraints = false
        thridText.topAnchor.constraint(equalTo: secondText.bottomAnchor, constant: 2).isActive = true
        thridText.centerXAnchor.constraint(equalTo: bodyView.centerXAnchor).isActive = true
        thridText.widthAnchor.constraint(equalTo: wallImage.widthAnchor, constant: 0).isActive = true
        thridText.heightAnchor.constraint(equalToConstant: 45).isActive = true
        thridText.isEditable = false
        thridText.isSelectable = false
        thridText.isScrollEnabled = false
        thridText.layer.borderWidth = 1
        thridText.layer.borderColor = UIColor.black.cgColor
        thridText.textColor = .black
        thridText.backgroundColor = .clear
        thridText.text = "Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo."
        thridText.font = thridText.font?.boldItalic
    }

    fileprivate func setUpHeadingTitle() {
        headingTitle = UILabel()
        bodyView.addSubview(headingTitle)
        headingTitle.translatesAutoresizingMaskIntoConstraints = false
        headingTitle.leftAnchor.constraint(equalTo: secondText.leftAnchor, constant : 5).isActive = true
        headingTitle.rightAnchor.constraint(equalTo: bodyView.rightAnchor).isActive = true
        headingTitle.topAnchor.constraint(equalTo: thridText.bottomAnchor, constant: 5).isActive = true
        headingTitle.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
        headingTitle.text = "THIS IS A HEADING"
        headingTitle.textColor = .black
        headingTitle.font = UIFont.boldSystemFont(ofSize: 8)
        headingTitle.backgroundColor = .clear
    }
    private func setUpFourthTextView(){
        fourthText = UITextView()
        bodyView.addSubview(fourthText)
        fourthText.translatesAutoresizingMaskIntoConstraints = false
        fourthText.topAnchor.constraint(equalTo: headingTitle.bottomAnchor, constant: -2).isActive = true
        fourthText.centerXAnchor.constraint(equalTo: wallImage.centerXAnchor).isActive = true
        fourthText.widthAnchor.constraint(equalTo: bodyView.widthAnchor, constant: -150).isActive = true
        fourthText.isEditable = false
        fourthText.isSelectable = false
        fourthText.isScrollEnabled = false
        fourthText.heightAnchor.constraint(equalToConstant: 45).isActive = true
        fourthText.font = UIFont.systemFont(ofSize: 8)
        fourthText.text = "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        fourthText.textColor = .black
        fourthText.textAlignment = .left
        fourthText.backgroundColor = .clear
    }
    private func setUpFifthTextView(){
        fifthText = UITextView()
        bodyView.addSubview(fifthText)
        fifthText.translatesAutoresizingMaskIntoConstraints = false
        fifthText.topAnchor.constraint(equalTo: fourthText.bottomAnchor, constant: -2).isActive = true
        fifthText.centerXAnchor.constraint(equalTo: wallImage.centerXAnchor).isActive = true
        fifthText.widthAnchor.constraint(equalTo: bodyView.widthAnchor, constant: -150).isActive = true
        fifthText.isEditable = false
        fifthText.isSelectable = false
        fifthText.isScrollEnabled = false
        fifthText.heightAnchor.constraint(equalToConstant: 45).isActive = true
        fifthText.font = UIFont.systemFont(ofSize: 8)
        fifthText.text = "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        fifthText.textColor = .black
        fifthText.textAlignment = .left
        fifthText.backgroundColor = .clear
    }
    fileprivate func setUpCommentLabel() {
        commetLabel = UILabel()
        bodyView.addSubview(commetLabel)
        commetLabel.translatesAutoresizingMaskIntoConstraints = false
        commetLabel.topAnchor.constraint(equalTo: fifthText.bottomAnchor, constant: 3).isActive = true
        commetLabel.centerXAnchor.constraint(equalTo: bodyView.centerXAnchor).isActive = true
        commetLabel.leftAnchor.constraint(equalTo: bodyView.leftAnchor).isActive = true
        commetLabel.rightAnchor.constraint(equalTo: bodyView.rightAnchor).isActive = true
        commetLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        commetLabel.text = "LEAVE A COMMENT"
        commetLabel.backgroundColor = .clear
        commetLabel.textAlignment = .center
        commetLabel.textColor = .black
        commetLabel.font = UIFont.systemFont(ofSize: 8)
    }
    
    fileprivate func setUpTextFields() {
        nameField = UITextField()
        emailField = UITextField()
        webSiteField = UITextField()
        containerNEwS = UIStackView(arrangedSubviews: [nameField, emailField, webSiteField])
        bodyView.addSubview(containerNEwS)
        nameField.placeholder = "Name"
        nameField.textAlignment = .left
        nameField.font = UIFont.systemFont(ofSize: 6)
        nameField.layer.borderWidth = 1.2
        nameField.layer.borderColor = UIColor.lightGray.cgColor
        
        emailField.placeholder = "Email"
        emailField.textAlignment = .left
        emailField.font = UIFont.systemFont(ofSize: 6)
        emailField.layer.borderWidth = 1.2
        emailField.layer.borderColor = UIColor.lightGray.cgColor
        
        webSiteField.placeholder = "WebSite"
        webSiteField.textAlignment = .left
        webSiteField.font = UIFont.systemFont(ofSize: 6)
        webSiteField.layer.borderWidth = 1.2
        webSiteField.layer.borderColor = UIColor.lightGray.cgColor
        
        containerNEwS.translatesAutoresizingMaskIntoConstraints = false
        containerNEwS.centerXAnchor.constraint(equalTo: bodyView.centerXAnchor).isActive = true
        containerNEwS.widthAnchor.constraint(equalTo: bodyView.widthAnchor, constant: -150).isActive = true
        containerNEwS.topAnchor.constraint(equalTo: commetLabel.bottomAnchor, constant: 3).isActive = true
        containerNEwS.spacing = 4
        containerNEwS.axis = .horizontal
        containerNEwS.distribution = .fillEqually
        
        messageField = UITextField()
        bodyView.addSubview(messageField)
        messageField.placeholder = "Message"
        messageField.textAlignment = .left
        messageField.layer.borderWidth = 1.2
        messageField.sizeToFit()
        messageField.layer.borderColor = UIColor.lightGray.cgColor
        messageField.font = UIFont.systemFont(ofSize: 6)
        messageField.translatesAutoresizingMaskIntoConstraints = false
        messageField.topAnchor.constraint(equalTo: containerNEwS.bottomAnchor, constant: 4).isActive = true
        messageField.centerXAnchor.constraint(equalTo: bodyView.centerXAnchor).isActive = true
        messageField.widthAnchor.constraint(equalTo: containerNEwS.widthAnchor).isActive = true
        messageField.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    fileprivate func setUpSendButton(){
        sendMessageButton = UIButton(type: .custom)
        bodyView.addSubview(sendMessageButton)
        sendMessageButton.translatesAutoresizingMaskIntoConstraints = false
        sendMessageButton.topAnchor.constraint(equalTo: messageField.bottomAnchor, constant: 3).isActive = true
        sendMessageButton.centerXAnchor.constraint(equalTo: bodyView.centerXAnchor).isActive = true
        sendMessageButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        sendMessageButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        sendMessageButton.setTitle("SEND MESSAGE", for: .normal)
        sendMessageButton.backgroundColor = .black
        sendMessageButton.titleLabel?.font = UIFont.systemFont(ofSize: 8)
        sendMessageButton.titleLabel?.textColor = .white
    }
    func setUpBodyView(){
        bodyView = UIView()
        view.addSubview(bodyView)
        bodyView.translatesAutoresizingMaskIntoConstraints = false
        bodyView.backgroundColor = UIColor(red: 230, green: 230, blue: 230, alpha: 1)
        bodyView.layer.opacity = 0.9
        bodyView.topAnchor.constraint(equalTo: headView.bottomAnchor).isActive = true
        bodyView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bodyView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        bodyView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

        blogPostLabel = UILabel()
        bodyView.addSubview(blogPostLabel)
        blogPostLabel.translatesAutoresizingMaskIntoConstraints = false
        blogPostLabel.backgroundColor = .clear
        blogPostLabel.textColor = .black
        blogPostLabel.textAlignment = .center
        blogPostLabel.text = "I AM A BLOG POST WITH AN AWESOME IMAGE"
        blogPostLabel.font = UIFont.boldSystemFont(ofSize: 10)
        blogPostLabel.centerXAnchor.constraint(equalTo: bodyView.centerXAnchor).isActive = true
        blogPostLabel.topAnchor.constraint(equalTo: bodyView.topAnchor, constant: 20).isActive = true
        blogPostLabel.widthAnchor.constraint(equalTo: bodyView.widthAnchor, constant: -10).isActive = true
        blogPostLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true

        setUpContainerView()
        setUpWallImage()
        setUpFirstTextView()
        setUpSecondTextView()
        setUpThridTextView()
        setUpHeadingTitle()
        setUpFourthTextView()
        setUpFifthTextView()
        setUpCommentLabel()
        setUpTextFields()
        setUpSendButton()
       
        
    }
}

