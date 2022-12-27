//
//  CountryLoader.swift
//  Countries
//
//  Created by n on 29.09.2022.
//

import Foundation
public class CountryLoader {
    var countries = [Country]()
    
    init() {
        loadCountries()
    }
    
//MARK: - loadCountries
    func loadCountries() {
        if let fileLocation = Bundle.main.url(forResource: "data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJSON = try jsonDecoder.decode([Country].self, from: data)
                self.countries = dataFromJSON
            } catch {
                print(error)
            }
        }
    }
}
