//
//  DetailViewController.swift
//  Countries
//
//  Created by n on 29.09.2022.
//

import UIKit

class DetailViewController: UIViewController {
    var text: Country?
    var countries = [String]()
    @IBOutlet var detailText: UITextView!
    @IBOutlet var image: UIImageView!
    
//MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        title = text?.name ?? "Unknown"
        navigationItem.largeTitleDisplayMode = .never
        detailText.isEditable = false
        detailText.text = String(text!.info)
        
        countries += ["South Korea", "Morocco", "Norway", "Canada", "Poland", "USA", "UAE", "France", "Spain", "Japan"]
        
        for i in countries.enumerated() {
            if title == i.element {
                image.image = UIImage(named: countries[i.offset])
            }
        }
        image.layer.borderColor = UIColor(white: 0, alpha: 0.3).cgColor
        image.layer.borderWidth = 1
        image.layer.cornerRadius = 10
    }

//MARK: - viewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
//MARK: - viewWillDisappear
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
