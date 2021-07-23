//
//  MoreViewController.swift
//  LostPage
//
//  Created by  Scholar on 7/22/21.
//

import UIKit

class MoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ShopBtn(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://lostpage.geniusmeister.repl.co/index.html")! as URL, options: [:], completionHandler: nil)
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
