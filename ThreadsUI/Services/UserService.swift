//
//  UserService.swift
//  ThreadsUI
//
//  Created by shikhar on 08/09/23.
//

import Firebase
import FirebaseFirestoreSwift

class UserService {
    @Published var currentUser: User?
    static let shared = UserService()
    
    init(){
        Task { try await fetchCurrentUser() }
    }
    
    @MainActor
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try snapshot.data(as: User.self)
        self.currentUser = user
        
        print("DEBUG: User is \(user)")
    }
    
    static func fetchUsers() async throws -> [User]{
        guard let currentuid = Auth.auth().currentUser?.uid else { return [] }
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        let users = snapshot.documents.compactMap({ try? $0.data(as: User.self) })
        return users.filter({ $0.id != currentuid })
        
    }
    
    static func fetchUser(withUid uid: String) async throws -> User {
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try snapshot.data(as: User.self)
    }
    
    func reset(){
        self.currentUser = nil
    }
    
    @MainActor
    func updateUserProfileImage(withImageUrl imageUrl: String) async throws {
        guard let currentuid = Auth.auth().currentUser?.uid else { return }
        try await Firestore.firestore().collection("users").document(currentuid).updateData([
            "profileImageUrl": imageUrl
        ])
        self.currentUser?.profileImageUrl = imageUrl
    }
}
