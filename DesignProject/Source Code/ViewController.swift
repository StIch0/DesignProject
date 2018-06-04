//
//  ViewController.swift
//  DesignProject
//
//  Created by Pavel Burdukovskii on 02/06/2018.
//  Copyright © 2018 Pavel Burdukovskii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   // Head var
    var headView : UIView!
    var headLabelTextUp : UILabel!
    var headLabelTextDown : UILabel!
    var headImage : UIImageView!

    //Body var
    var bodyView: UIView!
    var blogPostLabel : UILabel!
    var containerADL : UIStackView!
    var authorLabel : UILabel!
    var dateLabel : UILabel!
    var likesLabel : UILabel!
    var wallImage : UIImageView!

    var firstText : UITextView!
    var secondText : UITextView!
    var thridText : UITextView!
    var headingTitle : UILabel!
    var fourthText: UITextView!
    var fifthText : UITextView!
    var commetLabel : UILabel!
    var containerNEwS : UIStackView!
    var nameField: UITextField!
    var emailField: UITextField!
    var webSiteField: UITextField!
    var messageField : UITextField!
    var sendMessageButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpHeadView()
        setUpBodyView()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

