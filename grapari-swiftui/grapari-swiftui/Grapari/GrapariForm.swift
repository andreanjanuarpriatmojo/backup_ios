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
    @ObservedObject var grapari = Grapari()
    @State private var showingAlert = false
    @State private var activeAlert: ActiveAlert = .success
    static let sites = ["Site 01", "Site 02", "Site 03", "Site 04", "Site 05"]
    static let status = ["OK", "NOT OK"]
    var body: some View {
        NavigationView {
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
                            TextField("Upload", text: $grapari.uploadIzone)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            TextField("Latency", text: $grapari.latencyIzone)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
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
                            TextField("Upload", text: $grapari.uploadTws)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            TextField("Latency", text: $grapari.latencyTws)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
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
                            TextField("Upload", text: $grapari.uploadCorporate)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            TextField("Latency", text: $grapari.latencyCorporate)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
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
                            print("\(Self.sites[self.grapari.site]) - \(Self.status[self.grapari.router]) - \(self.grapari.remarkRouter) - \(Self.status[self.grapari.switcH]) - \(self.grapari.remarkSwitch) - \(Self.status[self.grapari.wlc]) - \(self.grapari.remarkWlc) - \(Self.status[self.grapari.accessPoint]) - \(self.grapari.remarkAccessPoint) - \(Self.status[self.grapari.unitUps]) - \(self.grapari.remarkUnitUps) - \(Self.status[self.grapari.grounding]) - \(self.grapari.grounding) - \(Self.status[self.grapari.fingerprint]) - \(self.grapari.remarkFingerprint) - \(Self.status[self.grapari.cctv]) - \(self.grapari.remarkCctv) - \(Self.status[self.grapari.temperature]) - \(self.grapari.remarkTemperature) - \(Self.status[self.grapari.humidity]) - \(self.grapari.remarkHumidity) - \(Self.status[self.grapari.kebersihan]) - \(self.grapari.remarkKebersihan) - \(Self.status[self.grapari.kerapihan]) - \(self.grapari.remarkKerapihan) - \(Self.status[self.grapari.izone]) - \(self.grapari.downloadIzone) - \(self.grapari.uploadIzone) - \(self.grapari.latencyIzone) - \(Self.status[self.grapari.tws]) - \(self.grapari.downloadTws) - \(self.grapari.uploadTws) - \(self.grapari.latencyTws) - \(Self.status[self.grapari.corporate]) - \(self.grapari.downloadCorporate) - \(self.grapari.uploadCorporate) - \(self.grapari.latencyCorporate) - \(Self.status[self.grapari.myq]) - \(self.grapari.remarkMyq) - \(Self.status[self.grapari.mygrapari]) - \(self.grapari.remarkMygrapari) - \(Self.status[self.grapari.printer]) - \(self.grapari.remarkPrinter)")
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
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct GrapariForm_Previews: PreviewProvider {
    static var previews: some View {
        GrapariForm()
    }
}
