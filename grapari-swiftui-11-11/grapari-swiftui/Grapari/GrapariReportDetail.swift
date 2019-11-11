//
//  GrapariReportDetail.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 05/11/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import SwiftUI

struct GrapariReportDetail: View {
    var body: some View {
        List {
            Section(header: Text("Site")) {
                Text("Site")
            }
            Section(header: Text("Server")) {
                Text("Router")
                Text("Switch")
                Text("WLC")
                Text("Access Point")
            }
            Section(header: Text("UPS")) {
                Text("Unit UPS")
                Text("Grounding")
            }
            Section(header: Text("Ruangan Server")) {
                Text("Fingerprint")
                Text("CCTV")
                Text("Temperature")
                Text("Humidity")
                Text("Kebersihan")
                Text("Kerapihan")
            }
            Section(header: Text("User Experience")) {
                Text("izone")
                Text("tws.byod")
                Text("coorporate network")
            }
            Section(header: Text("Pelayanan")) {
                Text("MyQ")
                Text("MyGrapari")
                Text("Printer")
            }
        }
    }
}

struct GrapariReportDetail_Previews: PreviewProvider {
    static var previews: some View {
        GrapariReportDetail()
    }
}
