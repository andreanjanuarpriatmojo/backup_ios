//
//  ChecklistView.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 31/10/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import SwiftUI

struct ChecklistView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Grapari", destination: GrapariForm())
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Checklist", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ChecklistView_Previews: PreviewProvider {
    static var previews: some View {
        ChecklistView()
    }
}
