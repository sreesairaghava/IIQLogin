//
//  AppviewModel.swift
//  IIQLogin
//
//  Created by Sree Sai Raghava Dandu on 18/09/21.
//

import SwiftUI
import FirebaseAuth

class AppViewModel: ObservableObject{
    var auth = Auth.auth()
    let country: [Country] = Bundle.main.decode("country.json")
    @Published var signedIn: Bool = false
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    func signIn(email: String, password: String){
        auth.signIn(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else {
                return
            }
            //Success
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
    }
    
    func signUp(email: String, password: String){
        auth.createUser(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else {
                return
            }
            //Success
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
    }
    
    func signOut(){
        try? auth.signOut()
        self.signedIn = false
    }
}
