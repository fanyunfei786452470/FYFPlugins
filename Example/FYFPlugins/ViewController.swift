//
//  ViewController.swift
//  FYFPlugins
//
//  Created by 786452470@qq.com on 03/22/2022.
//  Copyright (c) 2022 786452470@qq.com. All rights reserved.
//

import UIKit
import FYFWebController
import SnapKit


class ViewController: UIViewController {

    var webViewController: FYFWebViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let htmlButton = UIButton()
        htmlButton.setTitle("原生文件", for: .normal)
        htmlButton.setTitleColor(.black, for: .normal)
        htmlButton.addTarget(self, action: #selector(htmlClick), for: .touchUpInside)
        self.view.addSubview(htmlButton)
        htmlButton.snp.makeConstraints { make in
            make.centerX.equalTo(self.view)
            make.top.equalTo(self.view).offset(300)
            make.size.equalTo(CGSize(width: 80, height: 30))
        }
        
        let vc = ViewController.init()
        print(vc)
        print(vc.self)
        print(type(of: vc))
        
        print("----------------------")
        
        let vcClass: ViewController.Type = ViewController.self
        print(vcClass)
        print(vcClass.self)
        print(type(of: vcClass))
        
        print("----------------------")
        
        print(Self.self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func htmlClick() {
        
        let webVC: FYFWebViewController = FYFWebViewController.init(webViewUrl: "https://luna.gtjaqh.com/news-static/html/2021/0825/af7c33e841a0e3bc02cabf66b590e2e5.html")
        webVC.isUserNativeNavBar = true
        webVC.showShareItem = true
        self.navigationController?.pushViewController(webVC, animated: true)
    }
}
