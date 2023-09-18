//
//  PreviewProvider.swift
//  ThreadsUI
//
//  Created by shikhar on 19/09/23.
//

import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Shikhar Sharma", email: "shikharsharma2203@gmail.com", username: "shikhar2203")
}
