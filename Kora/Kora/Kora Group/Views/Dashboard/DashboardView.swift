//
//  DashboardView.swift
//  
//
//  Created by Alex Mansour on 10/17/25.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("🏋️‍♂️ Dashboard")
                    .font(.title)
                    .foregroundColor(.fitGreen)

                NavigationLink("Go to Profile") {
                    ProfileView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.fitBackground)
            .navigationTitle("Kora")
        }
    }
}
