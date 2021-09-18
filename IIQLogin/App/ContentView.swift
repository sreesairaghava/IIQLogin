//
//  ContentView.swift
//  IIQLogin
//
//  Created by Sree Sai Raghava Dandu on 18/09/21.
//

import SwiftUI

struct ContentView: View {

    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        NavigationView{
            if viewModel.signedIn {
                SignedInView(countries: viewModel.country)
                    .toolbar(content: {
                        Button(action: {
                            viewModel.signOut()
                        }, label: {
                            Text("SignOut")
                        })
                    })
            }
            else{
                SignInView()
            }
        }
        .onAppear{
            viewModel.signedIn = viewModel.isSignedIn
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
