//
//  ViewController.swift
//  LinkedIn_Profile
//
//  Created by Atdhe Boshnjaku on 2/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var bioAndActionView: UIView!
    @IBOutlet weak var locationAndConnectionsText: UILabel!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var connectButton: UIButton!
    @IBOutlet weak var highlightsView: UIView!
    @IBOutlet weak var highlightsProfileImage: UIView!
    @IBOutlet weak var navigationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Image radius, border, shadow?
        profileImage.layer.cornerRadius = profileImage.frame.height / 2
        profileImage.layer.borderWidth = 4
        profileImage.layer.borderColor = UIColor.white.cgColor
        profileImage.layer.shadowColor = UIColor.black.cgColor
        profileImage.layer.shadowOffset = CGSize(width: 3, height: 13)
        profileImage.layer.shadowOpacity = 1
        profileImage.layer.shadowRadius = 2
        
        // Bio view border, shadow
        bioAndActionView.layer.cornerRadius = 5
        bioAndActionView.layer.shadowColor = UIColor.lightGray.cgColor
        bioAndActionView.layer.shadowOffset = CGSize(width: 0, height: 3)
        bioAndActionView.layer.shadowOpacity = 0.5
        bioAndActionView.layer.shadowRadius = 2
        
        connectButton.layer.cornerRadius = 5
        
        highlightsView.layer.cornerRadius = 5
        
        highlightsProfileImage.layer.cornerRadius = highlightsProfileImage.frame.height / 2
        
        // Highlights view border, shadow
        highlightsView.layer.cornerRadius = 5
        highlightsView.layer.shadowColor = UIColor.lightGray.cgColor
        highlightsView.layer.shadowOffset = CGSize(width: 0, height: 3)
        highlightsView.layer.shadowOpacity = 0.5
        highlightsView.layer.shadowRadius = 2
        
        //
        navigationView.layer.shadowColor = UIColor.lightGray.cgColor
        navigationView.layer.shadowOffset = CGSize(width: 0, height: 0)
        navigationView.layer.shadowOpacity = 0.5
        navigationView.layer.shadowRadius = 2
        
        // Creating string with NSMutable in order to append an icon to it
        let stringWithImage = NSMutableAttributedString(string: "Syracuse University - New York Greater San Diego • 500+ ")
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(systemName: "person.2")?.withTintColor(.lightGray)
        let completeImageString = NSAttributedString(attachment: imageAttachment)
        stringWithImage.append(completeImageString)
        locationAndConnectionsText.attributedText = stringWithImage
        
        messageButton.layer.cornerRadius = 5
        messageButton.layer.borderWidth = 2
        messageButton.layer.borderColor = UIColor(red: 13.0/255.0, green: 138.0/255.0, blue: 206.0/255.0, alpha: 1.0).cgColor
        
    }


}

