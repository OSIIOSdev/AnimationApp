import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    let force = Double.random(in: 1...3)
    let duration = Double.random(in: 1...3)
    let delay = Double.random(in: 0...1)
    
    private init() {}
}
