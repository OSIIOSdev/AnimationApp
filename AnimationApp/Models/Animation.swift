import Foundation

struct Animation {
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

extension Animation {
     static func getAnimatedViews() -> [Animation] {
        let dataStore = DataStore.shared
         var animations: [Animation] = []
        
//        let presets = dataStore.presets.randomElement()
//        let curves = dataStore.curves.randomElement()
//        let force = dataStore.force
//        let duration = dataStore.duration
//        let delay = dataStore.delay
         
//         for _ in 0..<dataStore.presets.count {
//             for index in 0..<dataStore.curves.count {
         for (present, curve) in zip(dataStore.presets, dataStore.curves) {
             animations.append(Animation(preset: dataStore.presets[present].rawValue,
                                         curve: dataStore.curves[curve].rawValue,
                                         force: dataStore.force,
                                         duration: dataStore.duration,
                                         delay: dataStore.delay))
         }
                 
                 
         
         
         return animations
     }
}
