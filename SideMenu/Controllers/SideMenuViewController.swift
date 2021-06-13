//
//  SideMenuViewController.swift
//  SideMenu
//
//  Created by Mohamed Ali on 13/06/2021.
//

import UIKit

class SideMenuViewController: UIViewController {
    
    @IBOutlet weak var BackgoundView: UIView!
    @IBOutlet weak var ProfileImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    private func setupView() {
        
        BackgoundView.layer.cornerRadius = 40
        BackgoundView.clipsToBounds = true
        
        ProfileImage.layer.cornerRadius = ProfileImage.bounds.width / 2
        ProfileImage.clipsToBounds = true
        
    }

}
