//
//  MarsRoverViewModel.swift
//  NASA Lens SwiftUI
//
//  Created by John Motta on 17/10/24.
//

import Foundation

class MarsRoverViewModel: ObservableObject {
    @Published var marsRover: [MarsRoverPhoto]?
    
    func fetchData() {
        ServiceManager.shared.fetchData { result in
            switch result {
            case .success(let marsRover):
                DispatchQueue.main.async {
                    self.marsRover = marsRover
                }
            case .failure(let failure):
                print(failure)
            }
        }
    }
}
