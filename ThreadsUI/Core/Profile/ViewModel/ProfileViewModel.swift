//
//  ProfileViewModel.swift
//  ThreadsUI
//
//  Created by shikhar on 08/09/23.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
//            print("DEBUG: User in view model from combine is \(user)")
        }.store(in: &cancellables)
    }
}
