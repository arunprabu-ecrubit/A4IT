//
//  ViewControllerHome.swift
//  a4it
//
//  Created by user906979 on 11/10/17.
//  Copyright © 2017 ecrubit. All rights reserved.
//

import UIKit

class ViewControllerHome: UIViewController { 
    
    @IBOutlet weak var webViewHome: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let  url = URL(string: "https://a4it.uk/#header")
        webViewHome.loadRequest(URLRequest(url: url!))
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
