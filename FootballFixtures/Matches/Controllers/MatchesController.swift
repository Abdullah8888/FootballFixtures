//
//  MatchesController.swift
//  FootballFixtures
//
//  Created by Babatunde Jimoh on 01/09/2021.
//

import Foundation
import UIKit

class MatchesController: BaseController {
    
    var mathesView = MatchesView()
    var viewModel = MatchesViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setuNavBarWithTitle(with: "Today's Fixtures")
        mathesView.setNavBarState = { [weak self] isHidden in
            self?.setNavBarState(isHidden: isHidden)
        }
        viewModel.fetchMatches()
    }
    
    override func loadView() {
        view = mathesView
        //navigationController?.hidesBarsOnSwipe = true
    }
    
}



