//
//  ViewController.swift
//  Homework3
//
//  Created by Danila Kornev on 26.03.2023.
//

import UIKit

final class ViewController: UIViewController {

    
    @IBOutlet private var palette: UIView!
    
    @IBOutlet private var redColorSlider: UISlider!
    @IBOutlet private var greenColorSlider: UISlider!
    @IBOutlet private var blueColorSlider: UISlider!
    
    @IBOutlet private var redColorValueLabel: UILabel!
    @IBOutlet private var greenColorValueLabel: UILabel!
    @IBOutlet private var blueColorValueLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        redColorValueLabel.text = redColorSlider.value.formatted(
            .number.precision(.fractionLength(2))
        )
        greenColorValueLabel.text = greenColorSlider.value.formatted(
            .number.precision(.fractionLength(2))
        )
        blueColorValueLabel.text = blueColorSlider.value.formatted(
            .number.precision(.fractionLength(2))
        )
        
        setPaletteColor()
        
        palette.layer.cornerRadius = 10
        
    }

    @IBAction private func redColorSliderAction() {
        redColorValueLabel.text = redColorSlider.value.formatted(
            .number.precision(.fractionLength(2))
        )
        
        setPaletteColor()
        
        
    }
    
    @IBAction private func greenColorSliderAction() {
        greenColorValueLabel.text = greenColorSlider.value.formatted(
            .number.precision(.fractionLength(2))
        )
        
        setPaletteColor()
    }
    
    @IBAction private func blueColorSliderAction() {
        blueColorValueLabel.text = blueColorSlider.value.formatted(
            .number.precision(.fractionLength(2))
        )
        
        setPaletteColor()
    }
    
    private func setPaletteColor () {
        palette.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1)
    }
}

