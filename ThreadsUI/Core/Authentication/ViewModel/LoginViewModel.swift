//
//  LoginViewModel.swift
//  ThreadsUI
//
//  Created by shikhar on 07/09/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
     
    @MainActor
    func loginUser() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
