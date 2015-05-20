//
//  DetailViewController.swift
//  Project7WhitehousePetitions
//
//  Created by Henry on 5/18/15.
//  Copyright (c) 2015 Henry. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    var webView: WKWebView!
    //Contains the dictionary of data
    var detailItem: [String: String]!
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
        if let body = detailItem["body"] {
            var html = "<html>"
            html += "<head>"
            html += "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"
            html += "<style> body{ font-size: 150%; } </style>"
            html += "</head>"
            html += "<body>"
            html += body
            html += "</body>"
            html += "</html>"
            //Everything needed to show the page, passed in to the web view's loadHTMLString() method so that it gets loaded.
            webView.loadHTMLString(html, baseURL: nil)
        }
    }

}

