//
//  ViewController.swift
//  WebKitProject
//
//  Created by Usuário Convidado on 20/08/2018.
//  Copyright © 2018 Usuário Convidado. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var myWebKit: WKWebView!
    @IBOutlet weak var myLoader: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myWebKit.navigationDelegate = self
        
        myLoader.startAnimating()
        
        let url = URL(string: "https://google.com")
        let request = URLRequest(url: url!)
        myWebKit.load(request)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myLoader.stopAnimating()
        myLoader.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

