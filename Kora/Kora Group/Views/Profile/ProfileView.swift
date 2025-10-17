//
//  ProfileView.swift
//  
//
//  Created by Alex Mansour on 10/17/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Profile")
                .font(.largeTitle.bold())
                .foregroundColor(.fitGreen)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.fitBackground)
    }
}
