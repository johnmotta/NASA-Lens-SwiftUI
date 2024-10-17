//
//  AstronomyPictureViewModel.swift
//  NASA Lens SwiftUI
//
//  Created by John Motta on 17/10/24.
//

import Foundation

class AstronomyPictureViewModel: ObservableObject {
    @Published var astronomyPicture: Apod?
    
    func fetchData() {
        ServiceManager.shared.fetchLoadAstronomyPictures { result in
            switch result {
            case .success(let apod):
                DispatchQueue.main.async {
                    self.astronomyPicture = apod
                }
            case .failure(let failure):
                print(failure)
            }
        }
    }
}
