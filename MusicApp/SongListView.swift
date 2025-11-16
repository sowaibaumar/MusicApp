//
//  SongListView.swift
//  MusicApp
//
//  Created by Sowaiba Umar on 13/11/25.
//

import SwiftUI

struct SongListView: View {
    var body: some View {
        List {
            NavigationLink(destination: NowPlayingView()) {
                HStack {
                    Image(systemName: "music.note")
                        .foregroundColor(.brown)
                    Text("Just The Two of Us - Bill Withers")
                }
            }
        }
        .navigationTitle("Song List")
    }
}

#Preview {
    SongListView()
}
