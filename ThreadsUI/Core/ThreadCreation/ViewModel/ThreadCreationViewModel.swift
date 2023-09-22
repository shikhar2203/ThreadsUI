//
//  ThreadCreationViewModel.swift
//  ThreadsUI
//
//  Created by shikhar on 23/09/23.
//

import Firebase

class ThreadCreationViewModel: ObservableObject {
    @Published var caption = ""
    
    func uploadThread() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let thread = Thread(ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        try await ThreadService.uploadThread(thread)
    }
}
