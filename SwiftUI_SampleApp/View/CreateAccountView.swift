//
//  CreateAccountView.swift
//  SwiftUI_SampleApp
//
//  Created by Arya Anil Macbook Pro on 2/26/25.
//

import SwiftUI

struct CreateAccountView: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var code: String = ""
    
    var body: some View {
        ZStack {
            Color(.clear)
            VStack(alignment: .center, spacing: 0) {
                Spacer()
                    .frame(height: 75)
                Image("Account Create")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                    .padding()
                
                Text("Alright! Let's create your account")
                    .font(.title)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding()
                
                TextField("Name*", text: $name)
                    .padding()
                    .frame(width: 340, height: 50)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: .gray.opacity(0.3), radius: 8, x: 0, y: 4)
                    .tint(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray, lineWidth: 0.05)
                    )
                    .padding()
                
                TextField("Email*", text: $email)
                    .padding()
                    .frame(width: 340, height: 50)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: .gray.opacity(0.3), radius: 8, x: 0, y: 4)
                    .tint(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray, lineWidth: 0.05)
                    )
                
                TextField("Referral code - Optional", text: $code)
                    .padding()
                    .frame(width: 340, height: 50)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: .gray.opacity(0.3), radius: 8, x: 0, y: 4)
                    .tint(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray, lineWidth: 0.05)
                    )
                    .padding()
                
                Spacer()
                
                VStack {
                    Button(action: {}) {
                        Text("Confirm")
                            .padding(.horizontal, 150)
                            .padding(.vertical, 12)
                            .font(.callout)
                    }
                    .foregroundStyle(.white)
                    .background(Color("Color"))
                    .cornerRadius(12)
                    
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
    CreateAccountView()
}
