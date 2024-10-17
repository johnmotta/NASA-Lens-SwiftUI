//
//  MarsRoverView.swift
//  NASA Lens SwiftUI
//
//  Created by John Motta on 17/10/24.
//

import SwiftUI

struct MarsRoverView: View {
    @StateObject var viewModel = MarsRoverViewModel()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            Text("Views of Mars")
                .font(.title)
                .padding()
            
            ScrollView {
                if let marsRovers = viewModel.marsRover {
                    LazyVGrid(columns: columns) {
                        ForEach(marsRovers) { marsRover in
                            VStack {
                                MarsRoverImage(marsRover: marsRover)
                                
                                Text(marsRover.earthDate)
                                    .font(.caption)
                            }
                        }
                    }
                }
            }
        }
        .onAppear(perform: viewModel.fetchData)
    }
}

struct MarsRoverImage: View {
    let marsRover: MarsRoverPhoto?
    
    var body: some View {
        if let imageUrl = marsRover?.imgSrc.replacingOccurrences(of: "http://", with: "https://"),
           let url = URL(string: imageUrl) {
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .frame(width: 150, height: 150)
            } placeholder: {
                ProgressView()
            }
        } else {
            Text("No Image Available")
                .foregroundColor(.gray)
                .frame(width: 150, height: 150)
        }
    }
}

#Preview {
    MarsRoverView()
}
