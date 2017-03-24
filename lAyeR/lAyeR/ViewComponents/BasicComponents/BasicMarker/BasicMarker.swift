//
//  BasicMarker.swift
//  lAyeR
//
//  Created by Yang Zhuohan on 3/12/17.
//  Copyright © 2017 nus.cs3217.layer. All rights reserved.
//

import UIKit

/**
 A class that is used to define a marker to be displayed on the screen
 */
class BasicMarker: UIView {
    
    private(set) var icon: MarkerIcon!
    private(set) var info: MarkerInfo!

    /// Initialization
    /// - Parameters:
    ///     - frame: the frame of the marker
    ///     - icon: the icon of the marker
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeElements()
        prepareDisplay()
    }
    
    /// Initializes the marker elements
    /// - Parameter icon: the icon image of the marker
    private func initializeElements() {
        initIcon()
        initInfo()
    }
    
    /// Initializes the icon of the marker
    /// - Parameter iconImage: the icon image
    private func initIcon() {
        let newIcon = MarkerIcon(marker: self)
        self.icon = newIcon
    }
    
    /// Initializes the marker info
    private func initInfo() {
        let newInfo = MarkerInfo(marker: self)
        self.info = newInfo
    }
    
    /// Prepares the marker for display. i.e. add them
    /// all into subview
    private func prepareDisplay() {
        self.addSubview(self.icon)
        self.addSubview(self.info)
    }
    
    /// Sets the distance displayed on the marker
    /// - Parameter distance: the distance to be displayed
    func setDistance(_ distance: CGFloat) {
        self.info.distance = distance
    }
    
    /// Sets the icon image displayed on the marker
    /// - Parameter iconImage: the icon image to be displayed
    func setIconImage(_ iconImage: UIImageView) {
        self.icon.icon = iconImage
    }
    
    required init?(coder aDecoder: NSCoder) {
        //fatalError("init(coder:) has not been implemented")
        super.init(coder: aDecoder)
    }
    
    /// Calculates the gap of between maker icon and marker label
    var markerGap: CGFloat {
        return self.frame.height * markerGapPercent
    }

}
