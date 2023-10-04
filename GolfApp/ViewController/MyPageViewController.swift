//
//  MyPageViewController.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/09/07.
//

import UIKit

class MyPageViewController: UIViewController {
    
    @IBAction func lightButton(_ sender: Any) {
        view.window?.overrideUserInterfaceStyle = .light
        modeSetting = .light
    }
    
    @IBAction func darkButton(_ sender: Any) {
        view.window?.overrideUserInterfaceStyle = .dark
        modeSetting = .dark
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
