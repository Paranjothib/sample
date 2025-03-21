//
//  SwiftUI_SampleAppApp.swift
//  SwiftUI_SampleApp
//
//  Created by Arya Anil Macbook Pro on 2/26/25.
//

import SwiftUI
import Firebase

@main
struct SwiftUI_SampleAppApp: App {
    
    @StateObject private var authService = AuthService()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
                .environmentObject(authService)
        }
    }
}
