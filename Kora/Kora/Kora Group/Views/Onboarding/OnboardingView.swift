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
        ZStack {
            Color.fitBackground.ignoresSafeArea()

            VStack(spacing: 32) {
                Spacer()

                // FitFlow Logo
                Image("FitFlowLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 140, height: 140)
                    .shadow(radius: 8)

                Text("Welcome to Kora")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundColor(.fitGreen)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)

                Text("Your fitness journey starts here.")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(.fitGray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)

                Spacer()

                Button(action: {
                    hasCompletedOnboarding = true
                }) {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.fitGreen)
                        .cornerRadius(12)
                        .shadow(radius: 4)
                        .padding(.horizontal, 40)
                }

                Spacer()
            }
        }
    }
}
