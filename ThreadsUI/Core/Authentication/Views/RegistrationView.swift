//
//  RegistrationView.swift
//  ThreadsUI
//
//  Created by shikhar on 03/09/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack{
            
            Spacer()
            
            Image("threads-app-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack{
                TextField("Enter your email", text: $email)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your fullname", text: $fullname)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your username", text: $username)
                    .modifier(ThreadsTextFieldModifier())
                
                Button(action: {
                
                }, label: {
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width:352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                })
                .padding(.vertical)
                
                Spacer()
                
                Divider()
                
                Button(action: {
                    dismiss()
                }, label: {
                    HStack(spacing: 3){
                        Text("Already have an account?")
                        
                        Text("Sign In")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .foregroundColor(.black)
                })
                .padding(.vertical, 16)
                
            }
        }
    }
}

#Preview {
    RegistrationView()
}
