//
//  SignInView.swift
//  IIQLogin
//
//  Created by Sree Sai Raghava Dandu on 18/09/21.
//

import SwiftUI

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    @EnvironmentObject var viewModel: AppViewModel
    var body: some View {
        VStack{
            HStack {
                Image("IIQ")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                Text("IntersectIQ")
                    .font(.title.bold())
            }
            VStack{
                TextField("Email", text: $email)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                
                SecureField("Password", text: $password)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                Button(action: {
                    
                    guard !email.isEmpty, !password.isEmpty else {
                        return
                    }
                    viewModel.signIn(email: email, password: password)
                    
                }, label: {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .cornerRadius(10)
                        .background(Color.blue)
                })
                NavigationLink("Create Account", destination: SignUpView())
                    .padding()
            }
            .padding()
            Spacer()
        }
        .navigationTitle("Sign In")
    }
}
