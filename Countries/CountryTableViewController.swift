//
//  CountryTableViewController.swift
//  Countries
//
//  Created by n on 29.09.2022.
//

import UIKit

class CountryTableViewController: UITableViewController {
    let data = CountryLoader().countries

//MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Countries"
    }

//MARK: - numberOfRowsInSection
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
//MARK: - cellForRowAt
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row].name
        cell.textLabel?.font = UIFont(name: "Avenir Next", size: 20)
        return cell
    }
//MARK: - didSelectRowAt
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.text = data[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
