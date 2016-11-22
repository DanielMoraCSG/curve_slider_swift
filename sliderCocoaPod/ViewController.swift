//
//  ViewController.swift
//  sliderCocoaPod
//
//  Created by Daniel Mora Osorio on 18/11/16.
//  Copyright © 2016 CodecMedia. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var SliderCurveView: SliderCurveView!
    
    @IBOutlet weak var SliderTimeHome: TimeHomeView!
    
    @IBOutlet weak var SliderMoneyHome: MoneyHomeView!

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var slider2: UISlider!
    
    @IBOutlet weak var slider3: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: El elemento UISlider lo pones en transparente
        // Escala el slider
        slider.sizeThatFits(CGSize(width: 50, height: 50))
        // Cambia el color de la linea de recorrido a blanco con alpha de 0 (Transparente)
        slider.thumbTintColor = UIColor.white.withAlphaComponent(0)
        // Cambia el color de la linea de avance a blanco con alpha de 0 (Transparente)
        slider.tintColor = UIColor.white.withAlphaComponent(0)
        // Cambia el color del slider a blanco con alpha de 0 (Transparente)
        slider.backgroundColor = UIColor.white.withAlphaComponent(0)
        // Cambia el color del punto minimo (La bola de la izquierda) a blanco con alpha de 0 (Transparente)
        slider.maximumTrackTintColor = UIColor.white.withAlphaComponent(0)
        // Cambia el color del punto maximo (La bola de la derecha) a blanco con alpha de 0 (Transparente)
        slider.minimumTrackTintColor = UIColor.white.withAlphaComponent(0)
        
        slider2.sizeThatFits(CGSize(width: 50, height: 50))
        slider2.thumbTintColor = UIColor.white.withAlphaComponent(0)
        slider2.tintColor = UIColor.white.withAlphaComponent(0)
        slider2.backgroundColor = UIColor.white.withAlphaComponent(0)
        slider2.maximumTrackTintColor = UIColor.white.withAlphaComponent(0)
        slider2.minimumTrackTintColor = UIColor.white.withAlphaComponent(0)
        
        slider3.sizeThatFits(CGSize(width: 50, height: 50))
        slider3.thumbTintColor = UIColor.white.withAlphaComponent(0)
        slider3.tintColor = UIColor.white.withAlphaComponent(0)
        slider3.backgroundColor = UIColor.white.withAlphaComponent(0)
        slider3.maximumTrackTintColor = UIColor.white.withAlphaComponent(0)
        slider3.minimumTrackTintColor = UIColor.white.withAlphaComponent(0)
        
        // MARK: Inicializa el slider en valores predeterminado.
        positionSliderAutomatic()
    }
    
    // Esta funcion asigna los slider en determinado valor
    // Si desean posicionar los slider con respecto a su configuración
    // utilicen esta función
    func positionSliderAutomatic(){
        // Asigna el progress del slider en el valor que le asigne a slider.value
        SliderCurveView.progress = CGFloat(slider.value)
        SliderTimeHome.progress = CGFloat(slider2.value)
        SliderMoneyHome.progress = CGFloat(slider3.value)
    }
    
    
    // Esta función desencadena el movimiento del slider
    @IBAction func sliderMoved(_ sender: Any) {
        print("El valor es: \(slider.value)")
        SliderCurveView.progress = CGFloat(slider.value)
        SliderTimeHome.progress = CGFloat(slider2.value)
        SliderMoneyHome.progress = CGFloat(slider3.value)
    }
    
    

}

