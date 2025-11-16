//
//  MainTabView.swift
//  MusicApp
//
//  Created by Sowaiba Umar on 12/11/25.
//

import SwiftUI

enum Tab: Hashable {
    case home
    case songs
}

struct MainTabView: View {
    @State private var selectedTab: Tab = .home

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(Tab.home)

            NavigationStack {
                SongListView()
            }
            .tabItem {
                Image(systemName: "music.note.list")
                Text("Songs")
            }
            .tag(Tab.songs)
        }
    }
}

#Preview {
    MainTabView()
}
