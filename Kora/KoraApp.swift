//
//  KoraApp.swift
//  Kora
//
//  Created by Joaquin vigil on 10/16/25.
//

import SwiftUI

@main
struct KoraApp: App {
    // Two stored preferences (they survive app restarts)
    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding = false
    @AppStorage("isLoggedIn") private var isLoggedIn = false

    init() {
        // Forces the app to always appear in light mode
        UIView.appearance().overrideUserInterfaceStyle = .light
    }

    var body: some Scene {
        WindowGroup {
            if !hasCompletedOnboarding {
                OnboardingView()     // first-time users
            } else if !isLoggedIn {
                LoginView()          // returning users who haven’t logged in yet
            } else {
                DashboardView()      // everyone else
            }
        }
    }
}

