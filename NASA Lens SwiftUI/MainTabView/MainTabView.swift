//
//  MainTabView.swift
//  NASA Lens SwiftUI
//
//  Created by John Motta on 17/10/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Tab("Photo of the day", systemImage: "photo.artframe") {
                AstronomyPictureView()
            }
            
            Tab("Views of Mars", systemImage: "circle.grid.cross.fill") {
                MarsRoverView()
            }
            
            Tab("Near-Earth Asteroids", systemImage: "network") {
                EmptyView()
            }
        }
    }
}

#Preview {
    MainTabView()
}
