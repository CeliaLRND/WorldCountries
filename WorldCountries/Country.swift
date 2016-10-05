//
//  Country.swift
//  WorldCountries
//
//  Created by MAC on 05/10/2016.
//  Copyright © 2016 MAC. All rights reserved.
//

import UIKit
import Alamofire

class Country {
    var _name: String!
    var _capital: String!
    var _region: String!
    var _currency: String!
    var _timezone: String!
    var _population: Int!
    
    
    var name: String! {
        if _name == nil {
            _name = ""
        }
        return _name
    }

    var capital: String! {
        if _capital == nil {
            _capital = ""
        }
        return _capital
    }
    
    var region: String! {
        if _region == nil {
            _region = ""
        }
        return _region
    }
    
    var currency: String! {
        if _currency == nil {
            _currency = ""
        }
        return _currency
    }
    var timezone: String! {
        if _timezone == nil {
            _timezone = ""
        }
        return _timezone
    }
    
    var population: Int! {
        if _population == nil {
            _population = 0
        }
        return _population
    }
    
    init (countryDict:   Dictionary<String, AnyObject>) {
        
        
        if let name = countryDict["name"] as? String {
            self._name = name
        }
        
        print(name)
        
        if let capital = countryDict["capital"] as? String {
            self._capital = capital
        }
        
        if let region = countryDict["region"] as? String {
            self._region = region
        }
        
        
        if let population = countryDict["population"] as? Int {
            self._population = population
        }
        
        
        if let timezones = countryDict["timezone"] as? Array<String> {
            let timezone = timezones[0]
            self._timezone = timezone
        }
        
        
        if let currency = countryDict["region"] as? Array<String> {
            self._currency = currency[0]
        }
     /*   if currency.count > 1 {
            for x in 1..<currency.count {
                if let name = currency[x]
                self._currency += "?\(currency)"
            }
        }*/
        
    }

}




    /////// MODEL







  /*  func downloadWeatherDetails(completed: @escaping DownloadComplete){
        //Alamofire download
        Alamofire.request(CURRENT_WEATHER_URL as! URLRequestConvertible).responseJSON { response in
            let result = response.result
            
            //Si la valeur retournée par result.value as? Dictionary<String, AnyObject> n’est pas nil alors, créer une nouvelle constante appelée dict et lui attribuer la valeur du champs "name" du tableau
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let name = dict["name"] as? String{
                    self._cityName = name.capitalized
                    print(self._cityName)
                }
                
                
                
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                        print(self._weatherType)
                    }
                }
                
                
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    if let temp = main["temp"] as? Double {
                        self._currentTemp = Double(round(temp - 273.15))
                        print(self._currentTemp)                    }
                }
                
            }
            completed()
        }
 

    
/////// MODEL
    */


/*  func downloadCountriesInfo(completed: @escaping DownloadComplete) {
 
 Alamofire.request(URL_COUNTRY).responseJSON { response in
 let result = response.result
 print("Request: \(result.value)")
 
 
 }
 completed()
 
 }*/
