//
//  BaseTableViewCell.swift
//  FootballFixtures
//
//  Created by Babatunde Jimoh on 02/09/2021.
//

import Foundation
import UIKit

open class BaseTableViewCell: UITableViewCell{
    
    open func setup(){
        selectionStyle = .none
    }
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
