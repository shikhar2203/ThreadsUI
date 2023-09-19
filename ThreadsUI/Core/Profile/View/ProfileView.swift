//
//  ProfileView.swift
//  ThreadsUI
//
//  Created by shikhar on 04/09/23.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            // bio and stats
            VStack {
                ProfileHeaderView(user: user)
                
                Button(action: {
                    
                }, label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                })
                
                //user content list view
                
                UserContentListView()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal)
    }
}


#Preview {
    ProfileView(user: DeveloperPreview.shared.user)
}
