//
//  User.swift
//  ThreadsUI
//
//  Created by shikhar on 08/09/23.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
