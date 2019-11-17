//
//  Helper.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 16/11/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import Foundation
import UIKit

extension Bundle {
    func upload (alamat: String, data: String) {
        let url = URL(string: alamat)
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        let postString = data
        request.httpBody = postString.data(using: .utf8)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
         guard let data = data, error == nil else {
            print("error=\(String(describing: error))")
             return
         }
         if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {
             print("statusCode should be 200, but is \(httpStatus.statusCode)")
            print("response = \(String(describing: response))")
         }

         let responseString = String(data: data, encoding: .utf8)
            print("responseString = \(String(describing: responseString))")
        }
        task.resume()
    }
}
