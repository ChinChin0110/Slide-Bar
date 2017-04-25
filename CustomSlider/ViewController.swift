//
//  ViewController.swift
//  CustomSlider
//
//  Created by ChinChin on 2017/4/18.
//  Copyright © 2017年 Chin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let rangeSlider = RangeSlider()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(rangeSlider)
        
        rangeSlider.addTarget(self, action: #selector(rangeSliderValueChanged), for: .valueChanged)
        
        let delayInSeconds = 4.0
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            self.rangeSlider.trackHighlightTintColor = UIColor.red
            self.rangeSlider.curvaceousness = 0.0
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let margin: CGFloat = 20.0
        let width = view.bounds.width - 2.0 * margin
        rangeSlider.frame = CGRect(x: margin, y: margin + topLayoutGuide.length, width: width, height: 31.0)
    }
    
    func rangeSliderValueChanged(rangeSlider: RangeSlider) {
        print("Range slider value changed: (\(rangeSlider.lowerValue) \(rangeSlider.upperValue))")
    }
    
}

