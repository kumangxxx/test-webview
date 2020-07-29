//
//  ViewController.swift
//  Bot WebView
//
//  Created by Rahadian Ahmad on 29/07/20.
//  Copyright © 2020 vouch.sg. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webview: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        webview?.navigationDelegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        print("did appear!")
        
        let url = URL(string:"https://google.com")
        let req = URLRequest(url: url!)
        let nav = webview?.load(req)
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("start")
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("fail")
    }


}

