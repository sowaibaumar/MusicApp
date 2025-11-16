//
//  HomeView.swift
//  MusicApp
//
//  Created by Sowaiba Umar on 12/11/25.
//

import SwiftUI

struct HomeView: View {
    @Binding var selectedTab: Tab

    var body: some View {
        NavigationStack {
            ZStack {
                // Background if needed later
                Color.clear.ignoresSafeArea()

                VStack {
                    Spacer()

                    // Slight right bias while staying centered visually
                    HStack {
                        Spacer(minLength: 20) // increase to push more to the right
                        VStack(spacing: 40) {
                            Text("Welcome to MusicApp")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)

                            Button {
                                selectedTab = .songs
                            } label: {
                                Text("Go to Song List")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 270)
                                    .background(Color.brown)
                                    .cornerRadius(12)
                            }
                            .padding(.bottom, 12)
                        }
                        .frame(maxWidth: .infinity) // keep centered within available space
                        Spacer() // balances layout, but left spacer is slightly larger
                    }
                    .padding(.horizontal)

                    Spacer()
                }
            }
            // Remove the title entirely
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // No principal title item
            }
            .padding() // general padding for the home screen
        }
    }
}

#Preview {
    // For preview, provide a constant binding
    HomeView(selectedTab: .constant(.home))
}
