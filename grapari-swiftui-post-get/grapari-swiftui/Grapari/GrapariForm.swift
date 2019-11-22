//
//  Grapari2View.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 04/11/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import SwiftUI

enum ActiveAlert {
    case success, error
}

struct GrapariForm: View {
    @EnvironmentObject var auth: Auth
    @ObservedObject var grapari = Grapari()
    @State private var showingAlert = false
    @State private var activeAlert: ActiveAlert = .success
    static let sites = ["Site 01", "Site 02", "Site 03", "Site 04", "Site 05"]
    static let status = ["OK", "NOT OK"]
    var body: some View {
        //ini
        Group {
            //ini
            Form {
                Section(header: Text("Site")) {
                    Group {
                        Picker("Site Available", selection: $grapari.site) {
                            ForEach(0 ..< Self.sites.count) {
                                Text(Self.sites[$0])
                            }
                        }
                    }
                }
                Section(header: Text("Server")) {
                    Group {
                        Text("Router")
                        Picker("Router", selection: $grapari.router) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for Router", text: $grapari.remarkRouter)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    Group {
                        Text("Switch")
                        Picker("Switch", selection: $grapari.switcH) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for Switch", text: $grapari.remarkSwitch)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    Group {
                        Text("WLC")
                        Picker("WLC", selection: $grapari.wlc) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for WLC", text: $grapari.remarkWlc)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    Group {
                        Text("Access Point")
                        Picker("Access Point", selection: $grapari.accessPoint) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for Access Point", text: $grapari.remarkAccessPoint)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                }
                Section(header: Text("UPS")) {
                    Group {
                        Text("Unit UPS")
                        Picker("Unit UPS", selection: $grapari.unitUps) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for Unit UPS", text: $grapari.remarkUnitUps)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    Group {
                        Text("Grounding")
                        Picker("Grounding", selection: $grapari.grounding) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for Grounding", text: $grapari.remarkGrounding)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                }
                Section(header: Text("Ruangan Server")) {
                    Group {
                        Text("Fingerprint")
                        Picker("Fingerprint", selection: $grapari.fingerprint) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for Fingerprint", text: $grapari.remarkFingerprint)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    Group {
                        Text("CCTV")
                        Picker("CCTV", selection: $grapari.cctv) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for CCTV", text: $grapari.remarkCctv)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    Group {
                        Text("Temperature")
                        Picker("Temperature", selection: $grapari.temperature) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for Temperature", text: $grapari.remarkTemperature)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    Group {
                        Text("Humidity")
                        Picker("Humidity", selection: $grapari.humidity) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for Humidity", text: $grapari.remarkHumidity)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    Group {
                        Text("Kebersihan")
                        Picker("Kebersihan", selection: $grapari.kebersihan) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for Kebersihan", text: $grapari.remarkKebersihan)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    Group {
                        Text("Kerapihan")
                        Picker("Kerapihan", selection: $grapari.kerapihan) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for Kerapihan", text: $grapari.remarkKerapihan)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                }
                Section(header: Text("User Experience")) {
                    Group {
                        Text("izone")
                        Picker("izone", selection: $grapari.izone) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        HStack {
                            TextField("Download", text: $grapari.downloadIzone)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
                            TextField("Upload", text: $grapari.uploadIzone)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
                            TextField("Latency", text: $grapari.latencyIzone)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
                        }
                    }
                    Group {
                        Text("tws.byod")
                        Picker("tws.byod", selection: $grapari.tws) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        HStack {
                            TextField("Download", text: $grapari.downloadTws)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
                            TextField("Upload", text: $grapari.uploadTws)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
                            TextField("Latency", text: $grapari.latencyTws)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
                        }
                    }
                    Group {
                        Text("corporate network")
                        Picker("corporate network", selection: $grapari.corporate) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        HStack {
                            TextField("Download", text: $grapari.downloadCorporate)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
                            TextField("Upload", text: $grapari.uploadCorporate)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
                            TextField("Latency", text: $grapari.latencyCorporate)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
                        }
                    }
                }
                Section(header: Text("Pelayanan")) {
                    Group {
                        Text("MyQ")
                        Picker("MyQ", selection: $grapari.myq) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for MyQ", text: $grapari.remarkMyq)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    Group {
                        Text("MyGrapari")
                        Picker("MyGrapari", selection: $grapari.mygrapari) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for MyGrapari", text: $grapari.remarkMygrapari)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    Group {
                        Text("Printer")
                        Picker("Printer", selection: $grapari.printer) {
                            ForEach(0 ..< Self.status.count) { index in
                                Text(Self.status[index]).tag(index)
                            }
                        }
                            .pickerStyle(SegmentedPickerStyle())
                        TextField("Remark for Printer", text: $grapari.remarkPrinter)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                }
                ZStack {
                    Color.blue
                    Button("Submit") {
                        if self.grapari.isValid == false {
                            self.activeAlert = .error
                        }
                        else {
                            //do upload db
                            Bundle.main.upload(alamat: "http://127.0.0.1/iosapps/api/grapari", data: "site=\(Self.sites[self.grapari.site])&router_status=\(Self.status[self.grapari.router])&router_remark=\(self.grapari.remarkRouter)&switch_status=\(Self.status[self.grapari.switcH])&switch_remark=\(self.grapari.remarkSwitch)&wlc_status=\(Self.status[self.grapari.wlc])&wlc_remark=\(self.grapari.remarkWlc)&access_point_status=\(Self.status[self.grapari.accessPoint])&access_point_remark=\(self.grapari.remarkAccessPoint)&unit_ups_status=\(Self.status[self.grapari.unitUps])&unit_ups_remark=\(self.grapari.remarkUnitUps)&grounding_status=\(Self.status[self.grapari.grounding])&grounding_remark=\(self.grapari.remarkGrounding)&fingerprint_status=\(Self.status[self.grapari.fingerprint])&fingerprint_remark=\(self.grapari.remarkFingerprint)&cctv_status=\(Self.status[self.grapari.cctv])&cctv_remark=\(self.grapari.remarkCctv)&temperature_status=\(Self.status[self.grapari.temperature])&temperature_remark=\(self.grapari.remarkTemperature)&humidity_status=\(Self.status[self.grapari.humidity])&humidity_remark=\(self.grapari.remarkHumidity)&kebersihan_status=\(Self.status[self.grapari.kebersihan])&kebersihan_remark=\(self.grapari.remarkKebersihan)&kerapihan_status=\(Self.status[self.grapari.kerapihan])&kerapihan_remark=\(self.grapari.remarkKerapihan)&izone_status=\(Self.status[self.grapari.izone])&izone_download=\(self.grapari.downloadIzone)&izone_upload=\(self.grapari.uploadIzone)&izone_latency=\(self.grapari.latencyIzone)&tws_status=\(Self.status[self.grapari.tws])&tws_download=\(self.grapari.downloadTws)&tws_upload=\(self.grapari.uploadTws)&tws_latency=\(self.grapari.latencyTws)&corporate_status=\(Self.status[self.grapari.corporate])&corporate_download=\(self.grapari.downloadCorporate)&corporate_upload=\(self.grapari.uploadCorporate)&corporate_latency=\(self.grapari.latencyCorporate)&myq_status=\(Self.status[self.grapari.myq])&myq_remark=\(self.grapari.remarkMyq)&mygrapari_status=\(Self.status[self.grapari.mygrapari])&mygrapari_remark=\(self.grapari.remarkMygrapari)&printer_status=\(Self.status[self.grapari.printer])&printer_remark=\(self.grapari.remarkPrinter)")
                            self.activeAlert = .success
                            self.grapari.resetAll()
                        }
                        self.showingAlert = true
                    }
                    .foregroundColor(.white)
                    .alert(isPresented: $showingAlert) {
                        switch activeAlert {
                            case .success:
                                return Alert(title: Text("Success!"), message: Text("Your data has been input!"), dismissButton: .default(Text("Got It!")))
                            case .error:
                                return Alert(title: Text("Warning!"), message: Text("Please Complete All Data!"), dismissButton: .default(Text("Got It!")))
                        }
                    }
                }
            }.navigationBarTitle("Grapari", displayMode: .inline)
        //ini
        }
        //ini
    }
}

struct GrapariForm_Previews: PreviewProvider {
    static var previews: some View {
        GrapariForm()
    }
}
