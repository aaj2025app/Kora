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

            VStack(spacing: 48) {
                Spacer()

                // Logo with subtle drop shadow
                VStack(spacing: 16) {
                    Image("FitFlowLogo") // make sure this name matches your Assets
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .shadow(color: Color.black.opacity(0.08), radius: 20, x: 0, y: 10)

                    Text("Kora")
                        .font(.system(size: 42, weight: .heavy))
                        .foregroundColor(.fitGreen)
                        .shadow(color: Color.black.opacity(0.05), radius: 10, x: 0, y: 4)
                }

                Spacer()

                // "Get Started" button with blurred shadow halo
                Button(action: {
                    hasCompletedOnboarding = true
                }) {
                    Text("Get Started")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.vertical, 18)
                        .padding(.horizontal, 90)
                        .background(Color.fitGreen)
                        .cornerRadius(25)
                        .shadow(color: Color.black.opacity(0.12), radius: 30, x: 0, y: 15)
                        .shadow(color: Color.black.opacity(0.04), radius: 60, x: 0, y: 30)
                }

                Spacer()
            }
            .padding(.vertical, 60)
        }
    }
}
