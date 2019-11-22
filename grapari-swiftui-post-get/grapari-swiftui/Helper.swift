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
    
    
    func download<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()

        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }

        return loaded
    }
    
}
