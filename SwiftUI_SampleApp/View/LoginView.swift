//
//  LoginView.swift
//  SwiftUI_SampleApp
//
//  Created by Arya Anil Macbook Pro on 2/26/25.
//

import SwiftUI
import AuthenticationServices
import Firebase
import CryptoKit
import FirebaseAuth

struct LoginView: View {
    
    @EnvironmentObject var authService: AuthService
    @State private var showCreateAccountView: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                Spacer()
                    .frame(height: 100)
                VStack {
                    Image("Image section- Welcome")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipped()
                        .padding()
                    
                    Text("Welcome, let's get you earning cashback now!")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding()
                    
                    Text("Sign up quickly via social media")
                        .font(.subheadline)
                    
                    HStack {
                        Button(action: {
                            authService.startSignInWithAppleFlow()
                        }, label: {
                            Image("apple")
                        })
                        
                        Button(action: {}, label: {
                            Image("facebookIcon")
                        })
                        Button(action: {}, label: {
                            Image("twitterIcon")
                        })
                        Button(action: {}, label: {
                            Image("googleIcon")
                        })
                    }
                    .padding()
                }
                
                Spacer()
                
                VStack {
                    Button(action: {showCreateAccountView = true}, label: {
                        Text("Or continue to login")
                    })
                    .padding(.horizontal, 95)
                    .padding(.vertical, 12)
                    .font(.callout)
                    .foregroundStyle(.white)
                    .background(Color("Color"))
                    .cornerRadius(12)
                    
                    NavigationLink("", destination: CreateAccountView(), isActive: $showCreateAccountView)
                    
                    HStack {
                        Text("Already have an account?")
                            .font(.callout)
                            .fontWeight(.light)
                        
                        Button(action: {}, label: {
                            Text("Login here")
                                .font(.callout)
                                .underline()
                                .padding(.vertical, 10)
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
