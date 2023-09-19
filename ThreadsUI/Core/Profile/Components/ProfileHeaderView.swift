//
//  ProfileHeaderView.swift
//  ThreadsUI
//
//  Created by shikhar on 20/09/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User?
    
    init(user: User?){
        self.user = user
    }
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 12) {
                // fullname and username
                VStack(alignment: .leading, spacing: 4){
                    Text(user?.fullname ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(user?.username ?? "")
                        .font(.subheadline)
                    
                }
                
                if let bio = user?.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                Text("200 followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            CircularProfileImageView()
        }
        .padding(.bottom)
    }
}

#Preview {
    ProfileHeaderView(user: DeveloperPreview.shared.user)
}
