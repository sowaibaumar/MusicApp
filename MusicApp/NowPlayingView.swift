//
//  NowPlayingView.swift
//  MusicApp
//
//  Created by Sowaiba Umar on 13/11/25.
//

import SwiftUI

struct NowPlayingView: View {

    @State private var isPlaying = false
    @State private var progress: Double = 0.3   // fake progress bar

    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            // Album cover centered horizontally
            HStack{
                Spacer()
                Image("just the two of us")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 260)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                Spacer()
            }

            // Song info
            VStack(spacing: 20) {
                Text("Just the Two of Us")
                    .font(.title)
                    .fontWeight(.bold)

                Text("Bill Withers")
                    .foregroundColor(.gray)
            }
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, alignment: .center)

            // Fake progress bar
            Slider(value: $progress)
                .tint(.brown)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .center)

            // Play / Pause button
            Button(action: {
                isPlaying.toggle()
            }) {
                Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.brown)
            }
            .frame(maxWidth: .infinity, alignment: .center)

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding()
    }
}

#Preview {
    NowPlayingView()
}
