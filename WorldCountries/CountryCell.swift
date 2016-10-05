//
//  CountryCell.swift
//  WorldCountries
//
//  Created by MAC on 05/10/2016.
//  Copyright © 2016 MAC. All rights reserved.
//

import UIKit

class CountryCell: UITableViewCell {


    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var capitalLbl: UILabel!
    @IBOutlet weak var regionLbl: UILabel!
    @IBOutlet weak var timezoneLbl: UILabel!
    @IBOutlet weak var currencyLbl: UILabel!
    @IBOutlet weak var populationLbl: UILabel!
    
    
    func configureCell(country: Country) {
        nameLbl.text = country._name
        capitalLbl.text = country._capital
        regionLbl.text = country._region
        timezoneLbl.text = country._timezone
        currencyLbl.text = country._currency
        populationLbl.text = "\(country._population)"
    }
    


}
