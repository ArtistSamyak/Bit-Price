//
//  ViewController.swift
//  Bit Rate
//
//  Created by Samyak Pawar on 10/07/20.
//  Copyright © 2020 ArtistSamyak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // array of all currencies
    let allCurrencies = ["USD","AUD","BRL","CAD","CHF","CLP","CNY","DKK","EUR","GBP","HKD","INR","ISK","JPY","KRW","NZD","PLN","RUB","SEK","SGD","THB","TRY","TWD"]
    // array of their respective bitcoin rates currently empty.
    var allPrices = ["","","","","","","","","","","","","","","","","","","","","","",""]
    
    
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        GetAllPrices()
        
    }
    // Function to make an API request and get all the rates.
    func GetAllPrices(){
        //URL
        let url = URL(string: "https://blockchain.info/ticker")
        
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: url!) { (data, urlResponce, error) in
            let decoder = JSONDecoder()
            let decodedData = try! decoder.decode( DataPrice.self  , from: data!)
            //rates stored in the array.
            self.allPrices[0] = String(decodedData.USD.last)
            self.allPrices[1] = String(decodedData.AUD.last)
            self.allPrices[2] = String(decodedData.BRL.last)
            self.allPrices[3] = String(decodedData.CAD.last)
            self.allPrices[4] = String(decodedData.CHF.last)
            self.allPrices[5] = String(decodedData.CLP.last)
            self.allPrices[6] = String(decodedData.CNY.last)
            self.allPrices[7] = String(decodedData.DKK.last)
            self.allPrices[8] = String(decodedData.EUR.last)
            self.allPrices[9] = String(decodedData.GBP.last)
            self.allPrices[10] = String(decodedData.HKD.last)
            self.allPrices[11] = String(decodedData.INR.last)
            self.allPrices[12] = String(decodedData.ISK.last)
            self.allPrices[13] = String(decodedData.JPY.last)
            self.allPrices[14] = String(decodedData.KRW.last)
            self.allPrices[15] = String(decodedData.NZD.last)
            self.allPrices[16] = String(decodedData.PLN.last)
            self.allPrices[17] = String(decodedData.RUB.last)
            self.allPrices[18] = String(decodedData.SEK.last)
            self.allPrices[19] = String(decodedData.SGD.last)
            self.allPrices[20] = String(decodedData.THB.last)
            self.allPrices[21] = String(decodedData.TRY.last)
            self.allPrices[22] = String(decodedData.TWD.last)
        }
        
        task.resume()
    }


}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return allCurrencies.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return allCurrencies[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        DispatchQueue.main.async {
            self.price.text = self.allPrices[row] + "  " + self.allCurrencies[row]
        }
        
    }
    
    
}

