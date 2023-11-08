//
//  ViewController.swift
//  SampleSDK
//
//  Created by Kazuki Kubo on 11/08/2023.
//  Copyright (c) 2023 Kazuki Kubo. All rights reserved.
//

import UIKit
import SampleSDK

class ViewController: UIViewController {
    
    private lazy var label: UILabel = {
        let l = UILabel()
        l.text = "View Controller."
        
        return l
    }()
    
    override func loadView() {
        super.loadView()
        
        setupViews()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        test()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func setupViews() {
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func test() {
        let sdk = Sample()
        sdk.echo()
    }
}

