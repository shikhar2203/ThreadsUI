//
//  ExploreVIewModel.swift
//  ThreadsUI
//
//  Created by shikhar on 18/09/23.
//

import Foundation

class ExploreVIewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
