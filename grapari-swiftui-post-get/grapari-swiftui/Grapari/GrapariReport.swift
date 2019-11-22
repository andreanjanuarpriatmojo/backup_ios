//
//  GrapariReport.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 05/11/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import SwiftUI

struct GrapariReport: View {
    
    @ObservedObject var grapari = Grapari()

    init() {
        grapari.getGrapari()
    }
    
    var body: some View {
        List(grapari.data) { item in
            NavigationLink(destination: GrapariReportDetail(item: item)) {
                HStack {
                    Text(item.site)
                    Spacer()
                    Text(item.timestamp)
                        .font(.caption)
                }
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Grapari Report", displayMode: .inline)
    }
}

struct GrapariReport_Previews: PreviewProvider {
    static var previews: some View {
        GrapariReport()
    }
}
