//
//  MatchesViewModel.swift
//  FootballFixtures
//
//  Created by Babatunde Jimoh on 02/09/2021.
//

import Foundation


class MatchesViewModel {
    
    func fetchMatches() {
        let fullUrl = Config.baseUrl() + "matches"
        NetworkService.fetch(with: fullUrl, method: "GET", type: Matches.self) { success, response in
            
            if success {
                print("someth")
                print("output is \(response)")
            }
        }
    }
}
