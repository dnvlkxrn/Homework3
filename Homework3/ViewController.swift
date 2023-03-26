//
//  ViewController.swift
//  Homework3
//
//  Created by Danila Kornev on 26.03.2023.
//

import UIKit

final class ViewController: UIViewController {

    
    @IBOutlet var palette: UIView!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    @IBOutlet var redColorValueLabel: UILabel!
    @IBOutlet var greenColorValueLabel: UILabel!
    @IBOutlet var blueColorValueLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        palette.backgroundColor = UIColor(red: CGFloat(redColorSlider.value), green: CGFloat(greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: 1)
        
        
    }

    @IBAction func redColorSliderAction() {
        redColorValueLabel.text = redColorSlider.value.formatted(.number.precision(.fractionLength(2)))
        setPaletteColor()
        
        
    }
    
    @IBAction func greenColorSliderAction() {
        greenColorValueLabel.text = greenColorSlider.value.formatted(.number.precision(.fractionLength(2)))
        
        setPaletteColor()
    }
    
    @IBAction func blueColorSliderAction() {
        blueColorValueLabel.text = blueColorSlider.value.formatted(.number.precision(.fractionLength(2)))
        
        setPaletteColor()
    }
    private func setPaletteColor () {
        palette.backgroundColor = UIColor(red: CGFloat(redColorSlider.value), green: CGFloat(greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: 1)
    }
}

