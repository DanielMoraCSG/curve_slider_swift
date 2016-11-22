//
//  SliderCurveView.swift
//  sliderCocoaPod
//
//  Created by Daniel Mora Osorio on 19/11/16.
//  Copyright © 2016 CodecMedia. All rights reserved.
//

import UIKit

class SliderCurveView: UIView {
    
    // Esta variable inicializa el slider del CGGraphics de PaintCode
    private var __innerProgress: CGFloat = 0.0
    
    // Esta variable calcula y asigna por metodo Set y Get (Valores de instancia en otra clase)
    // los valores del slider en base al CGGraphics
    var progress: CGFloat{
        // Metodo Set
        // Optenemos como variable newProgress -> que es como si fuera "Progress"
        set (newProgress) {
            // Verificamos que la variable sea menor o igual a 1 (El slider solo llega a 1)
            if newProgress >= 1.0 {
                // Si es mayor por algun motivo se pondrá en 1
                __innerProgress = 1
            }else if newProgress < 0.0 {
                // Si es menor a 0 por algun motivo se pondrá en 0
                __innerProgress = 0
            }else{
                // Si cumple las pasadas condiciones pondrá el valor del slider en
                // su correspondiente segun la regla (x * 100) segun se desee el valor resultante dividido por 1
                __innerProgress = newProgress
            }
            // Obligatoriamente se requiere esta funcion debido a que
            // refresca el display correspondiente en base a los graficos.
            setNeedsDisplay()
        }
        // Metodo Get
        get {
            // Si requieren el valor de progress el valor que regresa seria el del
            // valor al momento de la consulta.
            return __innerProgress
        }
    }

    override func draw(_ rect: CGRect) {
        // La funcion provista por StyleSliderCurve instancia 2 funciones:
        // 1: Funcion anonima y sin valores llamada: "drawAmountSliderDonate()"
        // 2: funcion anonima con valores como se ve en la siguiente linea y se describe:
        // drawAmountSliderDonate(frame: <puntos de asignación o medidas>, resizing: <modo ó simplificación de ajuste en pantalla, aplica los mismo que .default, .aspectFit..>, amount: <Int>,totalAmoun: <String>)
         StyleSliderCurve.drawAmountSliderDonate(frame: bounds, resizing: StyleSliderCurve.ResizingBehavior.center, amount: progress, totalAmount: NSString(format: "%.f", progress * 100) as String)
    }
 

}
