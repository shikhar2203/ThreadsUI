//
//  CircularProfileImageView.swift
//  ThreadsUI
//
//  Created by shikhar on 05/09/23.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("threads-app-icon")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
