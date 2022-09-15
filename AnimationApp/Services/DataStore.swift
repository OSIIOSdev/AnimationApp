import SpringAnimation
import Foundation

class DataStore {
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    let force = round(Double.random(in: 1...3) * 100) / 100
    let duration = round(Double.random(in: 1...3) * 100) / 100
    let delay = round(Double.random(in: 0...1) * 100) / 100

    private init() {}
}
