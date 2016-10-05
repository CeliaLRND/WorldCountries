//
//  ViewController.swift
//  WorldCountries
//
//  Created by MAC on 05/10/2016.
//  Copyright © 2016 MAC. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!

    
    
    var country: Country!
    var countries: [Country] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
      
    }




    
    func downloadCountriesInfo(completed: @escaping DownloadComplete) {
        //download pour tableview
        Alamofire.request(URL_COUNTRY).responseJSON { response in
            let result = response.result
            
            if let dict = result.value as? [Dictionary<String, AnyObject>] {
                for obj in dict {
                    let country = Country(countryDict: obj)
                    self.countries.append(country)
                    print(obj)
                }
                self.tableView.reloadData()
            }
            
            
        }
        completed()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath) as? CountryCell
 
        {
            let country = countries[indexPath.row]
            cell.configureCell(country: country)
            
            print(country)
            return cell
            
            
        } else {
            return CountryCell()
        }


    }
    
}


