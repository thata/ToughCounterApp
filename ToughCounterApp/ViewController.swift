//
//  ViewController.swift
//  ToughCounterApp
//
//  Created by Takashi Hatakeyama on 2015/09/29.
//  Copyright © 2015年 esminc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadWebPage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadWebPage() {
        let url:NSURL? = NSURL(string: "https://tough-counter.herokuapp.com/")
        let request:NSURLRequest = NSURLRequest(URL: url!)
        if let _webView = self.webView {
            _webView.loadRequest(request)
        }
    }
}

