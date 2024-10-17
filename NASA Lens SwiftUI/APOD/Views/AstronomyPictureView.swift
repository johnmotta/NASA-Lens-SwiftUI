//
//  AstronomyPictureView.swift
//  NASA Lens SwiftUI
//
//  Created by John Motta on 17/10/24.
//

import SwiftUI

struct AstronomyPictureView: View {
    @StateObject var viewModel = AstronomyPictureViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.astronomyPicture?.title ?? "")
                .font(.title)
                .bold()
            AsyncImage(url: URL(string: viewModel.astronomyPicture?.url ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
            ScrollView {
                Text(viewModel.astronomyPicture?.explanation ?? "")
                    .padding()
            }
            
            Spacer()
        }
        .onAppear {
            viewModel.fetchData()
        }
    }
}

#Preview {
    AstronomyPictureView()
}
