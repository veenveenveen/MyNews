//
//  ViewController.swift
//  MyNews
//
//  Created by 黄启明 on 16/8/27.
//  Copyright © 2016年 huatengIOT. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        query()
    }

    func query() {
        let url = "https://v.juhe.cn/toutiao/index"
        Alamofire.request(.GET, url, parameters: ["key": "97564c8be33d813c207d878e8534699b", "type": "yule"], encoding: .URL, headers: nil).responseJSON {
            let v = $0.result.value
            let json = JSON(v!)
                print(json)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

