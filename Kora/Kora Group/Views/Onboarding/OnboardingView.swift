//
//  OnboardingView.swift
//  
//
//  Created by Alex Mansour on 10/17/25.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to FitFlow")
                .font(.largeTitle.bold())
                .foregroundColor(.fitGreen)

            Text("Your fitness journey starts here.")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)

            Button("Get Started") {
                hasCompletedOnboarding = true
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

