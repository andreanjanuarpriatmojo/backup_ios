//
//  ReportView.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 31/10/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import SwiftUI

struct ReportView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Grapari", destination: GrapariReport())
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Report", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
