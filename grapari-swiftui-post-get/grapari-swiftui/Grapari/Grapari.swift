//
//  Grapari.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 04/11/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import Combine
import SwiftUI

class Grapari: ObservableObject {
    
    func getGrapari() {
        let url = URL(string: "http://127.0.0.1/iosapps/api/grapari")
        let session = URLSession(configuration: .default)
        session.dataTask(with: url!) { (data, _, _) in
            do {
                let fetch = try JSONDecoder().decode([Item].self, from: data!)
                DispatchQueue.main.async {
                    self.data = fetch
                }
            }
            catch {
                print(error)
            }
        }.resume()
    }
    
    //json
    @Published var data = [Item]()
    //site
    @Published var site = 0
    //server
    @Published var router = 0
    @Published var remarkRouter = ""
    @Published var switcH = 0
    @Published var remarkSwitch = ""
    @Published var wlc = 0
    @Published var remarkWlc = ""
    @Published var accessPoint = 0
    @Published var remarkAccessPoint = ""
    //ups
    @Published var unitUps = 0
    @Published var remarkUnitUps = ""
    @Published var grounding = 0
    @Published var remarkGrounding = ""
    //ruangan server
    @Published var fingerprint = 0
    @Published var remarkFingerprint = ""
    @Published var cctv = 0
    @Published var remarkCctv = ""
    @Published var temperature = 0
    @Published var remarkTemperature = ""
    @Published var humidity = 0
    @Published var remarkHumidity = ""
    @Published var kebersihan = 0
    @Published var remarkKebersihan = ""
    @Published var kerapihan = 0
    @Published var remarkKerapihan = ""
    //user experience
    @Published var izone = 0
    @Published var downloadIzone = ""
    @Published var uploadIzone = ""
    @Published var latencyIzone = ""
    @Published var tws = 0
    @Published var downloadTws = ""
    @Published var uploadTws = ""
    @Published var latencyTws = ""
    @Published var corporate = 0
    @Published var downloadCorporate = ""
    @Published var uploadCorporate = ""
    @Published var latencyCorporate = ""
    //pelayanan
    @Published var myq = 0
    @Published var remarkMyq = ""
    @Published var mygrapari = 0
    @Published var remarkMygrapari = ""
    @Published var printer = 0
    @Published var remarkPrinter = ""
    
    var isValid: Bool {
        if remarkRouter.isEmpty || remarkSwitch.isEmpty || remarkWlc.isEmpty || remarkAccessPoint.isEmpty || remarkUnitUps.isEmpty || remarkGrounding.isEmpty || remarkFingerprint.isEmpty || remarkCctv.isEmpty || remarkTemperature.isEmpty || remarkHumidity.isEmpty || remarkKebersihan.isEmpty || remarkKerapihan.isEmpty || downloadIzone.isEmpty || uploadIzone.isEmpty || latencyIzone.isEmpty || downloadTws.isEmpty || uploadTws.isEmpty || latencyTws.isEmpty || downloadCorporate.isEmpty || uploadCorporate.isEmpty || latencyCorporate.isEmpty || remarkMyq.isEmpty || remarkMygrapari.isEmpty || remarkPrinter.isEmpty {
            return false
        }
        return true
    }
    
    func resetAll() {
        //site
        site = 0
        //server
        router = 0
        remarkRouter = ""
        switcH = 0
        remarkSwitch = ""
        wlc = 0
        remarkWlc = ""
        accessPoint = 0
        remarkAccessPoint = ""
        //ups
        unitUps = 0
        remarkUnitUps = ""
        grounding = 0
        remarkGrounding = ""
        //ruangan server
        fingerprint = 0
        remarkFingerprint = ""
        cctv = 0
        remarkCctv = ""
        temperature = 0
        remarkTemperature = ""
        humidity = 0
        remarkHumidity = ""
        kebersihan = 0
        remarkKebersihan = ""
        kerapihan = 0
        remarkKerapihan = ""
        //user experience
        izone = 0
        downloadIzone = ""
        uploadIzone = ""
        latencyIzone = ""
        tws = 0
        downloadTws = ""
        uploadTws = ""
        latencyTws = ""
        corporate = 0
        downloadCorporate = ""
        uploadCorporate = ""
        latencyCorporate = ""
        //pelayanan
        myq = 0
        remarkMyq = ""
        mygrapari = 0
        remarkMygrapari = ""
        printer = 0
        remarkPrinter = ""
    }
    
    struct Item: Identifiable, Decodable {
        var id: String
        //site
        var site: String
        //server
        var router_status: String
        var router_remark: String
        var switch_status: String
        var switch_remark: String
        var wlc_status: String
        var wlc_remark: String
        var access_point_status: String
        var access_point_remark: String
        //ups
        var unit_ups_status: String
        var unit_ups_remark: String
        var grounding_status: String
        var grounding_remark: String
        //ruangan server
        var fingerprint_status: String
        var fingerprint_remark: String
        var cctv_status: String
        var cctv_remark: String
        var temperature_status: String
        var temperature_remark: String
        var humidity_status: String
        var humidity_remark: String
        var kebersihan_status: String
        var kebersihan_remark: String
        var kerapihan_status: String
        var kerapihan_remark: String
        //user experience
        var izone_status: String
        var izone_download: String
        var izone_upload: String
        var izone_latency: String
        var tws_status: String
        var tws_download: String
        var tws_upload: String
        var tws_latency: String
        var corporate_status: String
        var corporate_download: String
        var corporate_upload: String
        var corporate_latency: String
        //pelayanan
        var myq_status: String
        var myq_remark: String
        var mygrapari_status: String
        var mygrapari_remark: String
        var printer_status: String
        var printer_remark: String
        //lain-lain
        var input_by: String
        var timestamp: String
    }
    
}


