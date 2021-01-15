//
//  UserManager.swift
//  MyBestList
//
//  Created by Narlei A Moreira on 14/01/21.
//

import FirebaseAuth
import Foundation

class UserManager {
    static func isLogged() -> Bool {
        return Auth.auth().currentUser != nil
    }
    
    static func createUser(email: String, password: String, onComplete: @escaping (_ success: Bool) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if authResult != nil {
                onComplete(true)
            } else {
                onComplete(false)
            }
        }
        
        var semaphore = DispatchSemaphore (value: 0)
    }
    
    static func login(email: String, password: String, onComplete: @escaping (_ success: Bool) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if authResult != nil {
                onComplete(true)
            } else {
                onComplete(false)
            }
        }
    }
    
    static func signOut() {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
}
