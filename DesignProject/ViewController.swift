//
//  ViewController.swift
//  DesignProject
//
//  Created by Pavel Burdukovskii on 02/06/2018.
//  Copyright © 2018 Pavel Burdukovskii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    @IBOutlet weak var headView: UIView!
//
//    @IBOutlet weak var titleLabel: UILabel!
//
//    @IBOutlet weak var subTitleLabel: UILabel!
//
//    @IBOutlet weak var ilanImage: UIImageView!
//
//    @IBOutlet weak var bodyView: UIView!
//
//    @IBOutlet weak var titleBodyLabel: UILabel!
//
//    @IBOutlet weak var authorLabel: UILabel!
//
//    @IBOutlet weak var dateLabel: UILabel!
//
//    @IBOutlet weak var likesLabel: UILabel!
//
//    @IBOutlet weak var imageBody: UIImageView!
//
//    @IBOutlet weak var firstText: UITextView!
//
//    @IBOutlet weak var secondText: UITextView!
//
//    @IBOutlet weak var thridText: UITextView!
//
//    @IBOutlet weak var fourthText: UITextView!
//
//    @IBOutlet weak var headingLabel: UILabel!
//
//    @IBOutlet weak var fifthText: UITextView!
//
//    @IBOutlet weak var liveacommentLabel: UILabel!
//
//    @IBOutlet weak var nameField: UITextField!
//
//    @IBOutlet weak var webfield: UITextField!
//
//    @IBOutlet weak var emailField: UITextField!
//
//    @IBOutlet weak var messageField: UITextField!
//
//    @IBOutlet weak var sendButton: UIButton!
    
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

