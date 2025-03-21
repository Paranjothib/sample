//
//  GoogleSignIn.swift
//  SwiftUI_SampleApp
//
//  Created by Arya Anil Macbook Pro on 2/26/25.
//

import GoogleSignIn
import FirebaseAuth

class GoogleSignInManager {

    static let shared = GoogleSignInManager()

    typealias GoogleAuthResult = (GIDGoogleUser?, Error?) -> Void

    private init() {}

    @MainActor
    func signInWithGoogle() async throws -> GIDGoogleUser? {

        if GIDSignIn.sharedInstance.hasPreviousSignIn() {
            return try await GIDSignIn.sharedInstance.restorePreviousSignIn()
        } else {

            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return nil }
            guard let rootViewController = windowScene.windows.first?.rootViewController else { return nil }

            let result = try await GIDSignIn.sharedInstance.signIn(withPresenting: rootViewController)
            return result.user
        }
    }
    
    func signOutFromGoogle() {
        GIDSignIn.sharedInstance.signOut()
    }
}
