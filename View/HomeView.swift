//
//  HomeView.swift
//  fetchingDataWithAlamofire
//
//  Created by Dogancan turgut on 19.11.2025.
//

import SwiftUI
import Alamofire

struct HomeView: View {
    
    @StateObject var vM = ViewModel()
    
    var body: some View {
        NavigationStack {
            List(vM.users) { user in
                HStack(spacing: 20) {
                    Text("\(user.id)")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundStyle(Color.gray)
                    
                    VStack(alignment: .leading) {
                        Text("\(user.name)")
                            .font(.system(size: 16))
                            .fontWeight(.medium)
                            .foregroundStyle(Color.primary)
                        Text("\(user.email)")
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                            .foregroundStyle(Color.secondary)
                    }
                }
            }
        }
        .onAppear{
            vM.loadUsers()
        }
        .navigationTitle("Users")
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
