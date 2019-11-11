//
//  GrapariReport.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 05/11/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import SwiftUI

struct GrapariReport: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("No ID, Name, Waktu", destination: GrapariReportDetail())
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Grapari Report", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct GrapariReport_Previews: PreviewProvider {
    static var previews: some View {
        GrapariReport()
    }
}
