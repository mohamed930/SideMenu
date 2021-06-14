//
//  MainViewController.swift
//  SideMenu
//
//  Created by Mohamed Ali on 12/06/2021.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var BackgroundSideMenuLeading: NSLayoutConstraint!
    @IBOutlet weak var BackgroundSideMenu: UIView!
    @IBOutlet weak var SideMenuView: UIView!
    @IBOutlet weak var SideMenuLeading: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        LoadPage()
    }
    
    private func LoadPage() {
//        SideMenuLeading.constant = 412
//        SideMenuView.isHidden = true
        BackgroundSideMenu.isHidden = true
        BackgroundSideMenuLeading.constant = 414
    }
    
    @IBAction func SideMenuButton (_ sender:Any) {
        ShowMenu()
    }
    
    
    @IBAction func TapGeusterTapped(_ sender: Any) {
        HideMenu()
    }
    
    private func ShowMenu() {
        print("Side Menu Presented")
//        SideMenuView.isHidden = false
//        SideMenuLeading.constant = 108
        
        UIView.animate(withDuration: 0.2) {
            
            self.BackgroundSideMenu.isHidden = false
            self.BackgroundSideMenuLeading.constant = 0
            
            self.view.layoutIfNeeded()

        }

        
//        BackgroundSideMenu.isHidden = false
//        BackgroundSideMenuLeading.constant = 0
        //SideMenuLeading.constant = 88
    }
    
    private func HideMenu() {
        print("Side Menu Hidden")
        
        UIView.animate(withDuration: 0.3) {
            
            self.BackgroundSideMenuLeading.constant = 414
            
            self.view.layoutIfNeeded()

        }completion: { state in
            self.BackgroundSideMenu.isHidden = true
        }
        
        
        
    }
    
    


}

