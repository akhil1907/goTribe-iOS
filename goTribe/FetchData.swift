//
//  Fetchdata.swift
//  goTribe
//
//  Created by Akhil Jain on 18/09/20.
//  Copyright © 2020 Akhil Jain. All rights reserved.
//

import Foundation

class FetchData{
    func performRequest(urlString : String){
        
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url, completionHandler: handle(data:urlResponse:error:))
            task.resume()
        }
    }
    
    func handle(data : Data?, urlResponse : URLResponse?, error : Error?){
        if error != nil{
            print(error!)
            return
        }
        else{
            if let safedata = data{
                let dataString = String(data: safedata, encoding: .utf8)
                print(dataString!)
            }
        }
    }
}
