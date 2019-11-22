//
//  GrapariReportDetail.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 05/11/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import SwiftUI

struct GrapariReportDetail: View {
    var item: Grapari.Item
    var body: some View {
        List {
            Section(header: Text("General").bold()) {
                HStack() {
                    Text("Site")
                        .bold()
                    Spacer()
                    Text(item.site)
                }
                HStack() {
                    Text("Input By")
                        .bold()
                    Spacer()
                    Text(item.input_by)
                }
                HStack() {
                    Text("Timestamp")
                        .bold()
                    Spacer()
                    Text(item.timestamp)
                }
            }
            Section(header: Text("Server").bold()) {
                HStack {
                    Text("Router")
                        .bold()
                    Spacer()
                    Text(item.router_status)
                }
                Text(item.router_remark)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                HStack {
                    Text("Switch")
                        .bold()
                    Spacer()
                    Text(item.switch_status)
                }
                Text(item.switch_remark)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                HStack {
                    Text("WLC")
                        .bold()
                    Spacer()
                    Text(item.wlc_status)
                }
                Text(item.wlc_remark)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                HStack {
                    Text("Access Point")
                        .bold()
                    Spacer()
                    Text(item.access_point_status)
                }
                Text(item.access_point_remark)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
            }
            Section(header: Text("UPS").bold()) {
                HStack {
                    Text("Unit UPS")
                        .bold()
                    Spacer()
                    Text(item.unit_ups_status)
                }
                Text(item.unit_ups_remark)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                HStack {
                    Text("Grounding")
                        .bold()
                    Spacer()
                    Text(item.grounding_status)
                }
                Text(item.grounding_remark)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
            }
            Section(header: Text("Ruangan Server").bold()) {
                Group {
                    HStack {
                        Text("Fingerprint")
                            .bold()
                        Spacer()
                        Text(item.fingerprint_status)
                    }
                    Text(item.fingerprint_remark)
                        .padding(.leading, 5)
                        .padding(.trailing, 5)
                    HStack {
                        Text("CCTV")
                            .bold()
                        Spacer()
                        Text(item.cctv_status)
                    }
                    Text(item.cctv_remark)
                        .padding(.leading, 5)
                        .padding(.trailing, 5)
                    HStack {
                        Text("Temperature")
                            .bold()
                        Spacer()
                        Text(item.temperature_status)
                    }
                    Text(item.temperature_remark)
                        .padding(.leading, 5)
                        .padding(.trailing, 5)
                }
                Group {
                    HStack {
                        Text("Humidity")
                            .bold()
                        Spacer()
                        Text(item.humidity_status)
                    }
                    Text(item.humidity_remark)
                        .padding(.leading, 5)
                        .padding(.trailing, 5)
                    HStack {
                        Text("Kebersihan")
                            .bold()
                        Spacer()
                        Text(item.kebersihan_status)
                    }
                    Text(item.kebersihan_remark)
                        .padding(.leading, 5)
                        .padding(.trailing, 5)
                    HStack {
                        Text("Kerapihan")
                            .bold()
                        Spacer()
                        Text(item.kerapihan_status)
                    }
                    Text(item.kerapihan_remark)
                        .padding(.leading, 5)
                        .padding(.trailing, 5)
                }
            }
            Section(header: Text("User Experience").bold()) {
                Group {
                    HStack {
                        Text("izone")
                            .bold()
                        Spacer()
                        Text(item.izone_status)
                    }
                    HStack {
                        Text("Download")
                            .padding(.leading, 5)
                        Spacer()
                        Text(item.izone_download)
                            .padding(.trailing, 5)
                    }
                    HStack {
                        Text("Upload")
                            .padding(.leading, 5)
                        Spacer()
                        Text(item.izone_upload)
                            .padding(.trailing, 5)
                    }
                    HStack {
                        Text("Latency")
                            .padding(.leading, 5)
                        Spacer()
                        Text(item.izone_latency)
                            .padding(.trailing, 5)
                    }
                }
                Group {
                    HStack {
                        Text("tws.byod")
                            .bold()
                        Spacer()
                        Text(item.tws_status)
                    }
                    HStack {
                        Text("Download")
                            .padding(.leading, 5)
                        Spacer()
                        Text(item.tws_download)
                            .padding(.trailing, 5)
                    }
                    HStack {
                        Text("Upload")
                            .padding(.leading, 5)
                        Spacer()
                        Text(item.tws_upload)
                            .padding(.trailing, 5)
                    }
                    HStack {
                        Text("Latency")
                            .padding(.leading, 5)
                        Spacer()
                        Text(item.tws_latency)
                            .padding(.trailing, 5)
                    }
                }
                Group {
                    HStack {
                        Text("coorporate network")
                            .bold()
                        Spacer()
                        Text(item.corporate_status)
                    }
                    HStack {
                        Text("Download")
                            .padding(.leading, 5)
                        Spacer()
                        Text(item.corporate_download)
                            .padding(.trailing, 5)
                    }
                    HStack {
                        Text("Upload")
                            .padding(.leading, 5)
                        Spacer()
                        Text(item.corporate_upload)
                            .padding(.trailing, 5)
                    }
                    HStack {
                        Text("Latency")
                            .padding(.leading, 5)
                        Spacer()
                        Text(item.corporate_latency)
                            .padding(.trailing, 5)
                    }
                }
            }
            Section(header: Text("Pelayanan").bold()) {
                HStack {
                    Text("MyQ")
                        .bold()
                    Spacer()
                    Text(item.myq_status)
                }
                Text(item.myq_remark)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                HStack {
                    Text("MyGrapari")
                        .bold()
                    Spacer()
                    Text(item.mygrapari_status)
                }
                Text(item.mygrapari_remark)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                HStack {
                    Text("Printer")
                        .bold()
                    Spacer()
                    Text(item.printer_status)
                }
                Text(item.printer_remark)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
            }
        }.navigationBarTitle("Grapari Detail")
    }
}

//struct GrapariReportDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        GrapariReportDetail()
//    }
//}
