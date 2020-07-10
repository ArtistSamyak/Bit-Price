//
//  DataPrice.swift
//  Bit Rate
//
//  Created by Samyak Pawar on 10/07/20.
//  Copyright © 2020 ArtistSamyak. All rights reserved.
//

import Foundation

struct DataPrice: Codable {
    let USD : Currency
    let AUD : Currency
    let BRL : Currency
    let CAD : Currency
    let CHF : Currency
    let CLP : Currency
    let CNY : Currency
    let DKK : Currency
    let EUR : Currency
    let GBP : Currency
    let HKD : Currency
    let INR : Currency
    let ISK : Currency
    let JPY : Currency
    let KRW : Currency
    let NZD : Currency
    let PLN : Currency
    let RUB : Currency
    let SEK : Currency
    let SGD : Currency
    let THB : Currency
    let TRY : Currency
    let TWD : Currency

}

struct Currency: Codable {
    let last : Double
    
}
