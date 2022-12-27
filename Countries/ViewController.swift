//
//  ViewController.swift
//  Countries
//
//  Created by n on 29.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let data = CountryLoader().countries
        print(data)
    }
}

