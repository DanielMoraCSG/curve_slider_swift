//
//  MoneyHomeView.swift
//  sliderCocoaPod
//
//  Created by Daniel Mora Osorio on 19/11/16.
//  Copyright © 2016 CodecMedia. All rights reserved.
//

import UIKit

class MoneyHomeView: UIView {

    private var __innerProgress: CGFloat = 0.0
    
    var progress: CGFloat{
        set (newProgress) {
            if newProgress >= 1.0 {
                __innerProgress = 1
            }else if newProgress < 0.0 {
                __innerProgress = 0
            }else{
                __innerProgress = newProgress
            }
            setNeedsDisplay()
        }
        get {
            return __innerProgress
        }
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // La funcion provista por drawHomeMoneySlider instancia 2 funciones:
        // 1: Funcion anonima y sin valores llamada: "drawHomeMoneySlider()"
        // 2: funcion anonima con valores como se ve en la siguiente linea y se describe:
        // drawHomeMoneySlider(frame: <puntos de asignación o medidas>, resizing: <modo ó simplificación de ajuste en pantalla, aplica los mismo que .default, .aspectFit..>, amount2: <Int>,totalAmount2: <String>)
        StyleSliderCurve.drawHomeMoneySlider(frame: bounds, resizing: StyleSliderCurve.ResizingBehavior.center, amount2: progress, totalAmount2: NSString(format: "%.f", progress * 100) as String)
    }

}
