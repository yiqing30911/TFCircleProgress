//
//  ViewController.swift
//  TFCircleProgress
//
//  Created by 方涛 on 05/27/2020.
//  Copyright (c) 2020 方涛. All rights reserved.
//

import UIKit
import SnapKit
import TFCircleProgress

class ViewController: UIViewController {
    
    lazy var progressView: CircleProgressView = {
        let view = CircleProgressView.init(frame: CGRect.zero)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(progressView)

        progressView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.height.equalTo(200.0)
        }

        progressView.lineWidth = 8.0
        progressView.trackColor = UIColor.lightGray
        progressView.progressColor = UIColor.red
        progressView.setProgress(1.0, animated: true, withDuration: 90)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

