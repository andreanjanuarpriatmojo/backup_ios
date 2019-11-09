//
//  GrapariItem.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 05/11/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import SwiftUI

struct GrapariItem: Codable, Equatable, Identifiable {
    var id: UUID
    //site
    var site: Int
    //server
    var router: Int
    var remarkRouter: String
    var switcH: Int
    var remarkSwitch: String
    var wlc: Int
    var remarkWlc: String
    var accessPoint: Int
    var remarkAccessPoint: String
    //ups
    var unitUps: Int
    var remarkUnitUps: String
    var grounding: Int
    var remarkGrounding: String
    //ruangan server
    var fingerprint: Int
    var remarkFingerprint: String
    var cctv: Int
    var remarkCctv: String
    var temperature: Int
    var remarkTemperature: String
    var humidity: Int
    var remarkHumidity: String
    var kebersihan: Int
    var remarkKebersihan: String
    var kerapihan: Int
    var remarkKerapihan: String
    //user experience
    var izone: Int
    var downloadIzone: String
    var uploadIzone: String
    var latencyIzone: String
    var tws: Int
    var downloadTws: String
    var uploadTws: String
    var latencyTws: String
    var corporate: Int
    var downloadCorporate: String
    var uploadCorporate: String
    var latencyCorporate: String
    //pelayanan
    var myq: Int
    var remarkMyq: String
    var mygrapari: Int
    var remarkMygrapari: String
    var printer: Int
    var remarkPrinter: String
}

#if DEBUG
let example = GrapariItem(id: UUID(), site: 1, router: 0, remarkRouter: "Test - Example", switcH: 0, remarkSwitch: "Test - Example", wlc: 0, remarkWlc: "Test - Example", accessPoint: 0, remarkAccessPoint: "Test - Example", unitUps: 0, remarkUnitUps: "Test - Example", grounding: 0, remarkGrounding: "Test - Example", fingerprint: 0, remarkFingerprint: "Test - Example", cctv: 0, remarkCctv: "Test - Example", temperature: 0, remarkTemperature: "Test - Example", humidity: 0, remarkHumidity: "Test - Example", kebersihan: 0, remarkKebersihan: "Test - Example", kerapihan: 0, remarkKerapihan: "Test - Example", izone: 0, downloadIzone: "Test - Example", uploadIzone: "Test - Example", latencyIzone: "Test - Example", tws: 0, downloadTws: "Test - Example", uploadTws: "Test - Example", latencyTws: "Test - Example", corporate: 0, downloadCorporate: "Test - Example", uploadCorporate: "Test - Example", latencyCorporate: "Test - Example", myq: 0, remarkMyq: "Test - Example", mygrapari: 0, remarkMygrapari: "Test - Example", printer: 0, remarkPrinter: "Test - Example")
#endif
