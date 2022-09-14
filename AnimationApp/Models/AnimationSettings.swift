
struct AnimationSettings {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var animationDescription: String {
        """
            preset: \(preset)
            curve: \(curve)
            force: \(force)
            duration: \(duration)
            delay: \(delay)
        """
    }
}

extension AnimationSettings {
     static func getAnimatedViews() -> AnimationSettings {
        let dataStore = DataStore.shared
        
        let presets = dataStore.presets.randomElement()
        let curves = dataStore.curves.randomElement()
        let force = dataStore.force
        let duration = dataStore.duration
        let delay = dataStore.delay
         
         return AnimationSettings(preset: presets?.rawValue ?? "", curve: curves?.rawValue ?? "", force: force,
                                  duration: duration, delay: delay)
     }
}
