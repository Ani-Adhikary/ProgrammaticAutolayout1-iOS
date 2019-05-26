//
//  ViewController.swift
//  StarterAppUsingStoryBoards
//
//  Created by Ani Adhikary on 18/03/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var font = UIFont(name: "Avenir", size: 22)
    var labelFont = UIFont(name: "AvenirNext-DemiBold", size: 36.0)
    
    var imageView = UIImageView()
    var label = UILabel()
    var backButton = UIButton(type: .system)
    var orderButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        layoutViews()
    }
    
    func addViews() {
        addImageView()
        addLabel()
        addBackButton()
    }
    
    func addLabel() {
        label.text = "Geru and Tilu sleeping"
        label.font = labelFont
        label.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.textAlignment = .left
        //label.frame = CGRect(x: 20, y: 310, width: 400, height: 40)
        view.addSubview(label)
    }
    
    func addBackButton() {
        backButton.setTitle("Show some Love", for: .normal)
        backButton.titleLabel?.font = font
        backButton.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        backButton.backgroundColor = #colorLiteral(red: 0.476841867, green: 0.5048075914, blue: 1, alpha: 1)
        backButton.addTarget(self, action: #selector(backButton(_:)), for: .touchUpInside)
        backButton.frame = CGRect(x: 170, y: view.frame.height - 150, width: 200, height: 40)
        //backButton.frame = CGRect(x: 170, y: 150, width: 150, height: 40)
        view.addSubview(backButton)
    }
    
    func addImageView() {
        let image = UIImage(named: "Geru2")
        imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFill
        //imageView.frame = CGRect(origin: CGPoint(x:0,y:0), size: CGSize(width: 300, height: 300))
        view.addSubview(imageView)
    }
    
    @IBAction func backButton(_ sender:UIButton){
        print("Back Button is clicked")
    }

    func layoutViews() {
        var constraints = [NSLayoutConstraint]()
        
        //MARK: Label Layout
        label.translatesAutoresizingMaskIntoConstraints = false
        //label.top = view.top + 40
        constraints += [NSLayoutConstraint.init(item: label, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 40.0)]
        //label.leading = view.leading
        constraints += [NSLayoutConstraint.init(item: label, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 0.0)]
        //label.trailing = view.trailing
        constraints += [NSLayoutConstraint.init(item: label, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: 0.0)]
        //label.height = 100
        constraints += [NSLayoutConstraint.init(item: label, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100.0)]
        
        ////////+++++++++++++++++++++++++++++++++++++++++++++++
        //This will display the imageView to full screen
        //MARK: imageview Layout
        imageView.translatesAutoresizingMaskIntoConstraints = false
        //imageView.top = view.top
        constraints += [NSLayoutConstraint.init(item: imageView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 0.0)]
        //imageView.leading = view.leading
        constraints += [NSLayoutConstraint.init(item: imageView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 0.0)]
        //imageView.trailing = view.trailing
        constraints += [NSLayoutConstraint.init(item: imageView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: 0.0)]
        //imageView.bottom = view.bottom
        constraints += [NSLayoutConstraint.init(item: imageView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: 0.0)]
        
        //MARK: orderButton Layout
        //orderButton.translatesAutoresizingMaskIntoConstraints = false
        //MARK: backButton Layout
        //backButton.translatesAutoresizingMaskIntoConstraints = false
        //backButton.leading = view.leading + 16
        //constraints += [NSLayoutConstraint.init(item: backButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 16)]
        
        view.addConstraints(constraints)
    }
}
