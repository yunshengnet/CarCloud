//
//  BaseTabbarViewController.swift
//  CarCloud
//
//  Created by 谷丰 on 2023/2/8.
//

import UIKit

class BaseTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let head = HeadVC()
        let OneNav = BaseNavigationController(rootViewController: head)
        self .CreatNav(nav: OneNav, imagename: "house", selectimagename: "home")
        let center = CenterVC()
        let TwoNav = BaseNavigationController(rootViewController: center)
        self .CreatNav(nav: TwoNav, imagename: "发布", selectimagename: "发布")
        let myself = MySelfVC()
        let ThrNav = BaseNavigationController(rootViewController: myself)
        self .CreatNav(nav: ThrNav, imagename: "person", selectimagename: "person-fill")
        viewControllers  = [OneNav,TwoNav,ThrNav]
        
      
        // Do any additional setup after loading the view.
    }
    
    func CreatNav(nav : BaseNavigationController , imagename : String , selectimagename : String){
        
        nav.tabBarItem.title = ""
        nav.tabBarItem.image = UIImage(named: imagename)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        nav.tabBarItem.selectedImage = UIImage(named: selectimagename)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
