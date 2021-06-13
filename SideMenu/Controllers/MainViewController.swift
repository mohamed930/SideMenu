//
//  MainViewController.swift
//  SideMenu
//
//  Created by Mohamed Ali on 12/06/2021.
//

import UIKit

class MainViewController: UIViewController {
    
//    @IBOutlet weak var SideMenuLeading: NSLayoutConstraint!
//    @IBOutlet weak var BackgroundSideMenu: UIView!
    @IBOutlet weak var SideMenuView: UIView!
    @IBOutlet weak var SideMenuLeading: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        LoadPage()
    }
    
    private func LoadPage() {
        SideMenuLeading.constant = 412
        SideMenuView.isHidden = true
    }
    
    @IBAction func SideMenuButton (_ sender:Any) {
        ShowMenu()
    }
    
    private func ShowMenu() {
        print("Side Menu Presented")
        SideMenuView.isHidden = false
        SideMenuLeading.constant = 108
    }


}

