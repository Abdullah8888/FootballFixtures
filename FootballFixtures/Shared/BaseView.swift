//
//  BaseView.swift
//  FootballFixtures
//
//  Created by Babatunde Jimoh on 02/09/2021.
//

import Foundation
import UIKit

open class BaseView: UIView {

    open func setup(){
        if #available(iOS 13.0, *) {
            backgroundColor = .systemBackground
        } else {
            backgroundColor = .white
        }
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    open override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


open class ScrollableView: BaseView {
    
    public let scrollView = UIScrollView()
    
    open override func setup() {
        super.setup()
        addSubview(scrollView)
        scrollView.fillSuperview()
        scrollView.showsVerticalScrollIndicator = false
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        self.layoutIfNeeded()
        scrollView.updateContentView()
    }
    
}
public extension UIScrollView {
    func updateContentView(_ offset: CGFloat = 50) {
        contentSize.height = (subviews.sorted(by: { $0.frame.maxY < $1.frame.maxY }).last?.frame.maxY ?? contentSize.height) + offset
    }
}
