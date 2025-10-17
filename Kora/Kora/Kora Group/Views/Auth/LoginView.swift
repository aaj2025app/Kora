//
//  LoginView.swift
//  
//
//  Created by Alex Mansour on 10/17/25.
//

import SwiftUI

struct LoginView: View {
    @AppStorage("isLoggedIn") private var isLoggedIn = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Login to Kora")
                .font(.largeTitle.bold())
                .foregroundColor(.fitGreen)

            Button("Continue") {
                isLoggedIn = true
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.fitGreen)
            .cornerRadius(10)
            .padding(.horizontal, 40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.fitBackground)
    }
}
