//
//  UIView + Ext.swift
//  GHFollowers
//
//  Created by Всеволод Буртик on 22.07.2024.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
    
    func pinToAdges(of superview: UIView){
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([topAnchor.constraint(equalTo: superview.topAnchor),
                                     leadingAnchor.constraint(equalTo: superview.leadingAnchor),
                                     trailingAnchor.constraint(equalTo: superview.trailingAnchor),
                                     bottomAnchor.constraint(equalTo: superview.bottomAnchor)])
    }
}
