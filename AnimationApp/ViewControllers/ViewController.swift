import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var animatedView: UIView!
    @IBOutlet var changeButton: UIButton!
    @IBOutlet var animationLabel: UILabel!
    
    let animations = Animation.getAnimatedViews()
    let animation = Animation(preset: "",
                              curve: "",
                              force: 1,
                              duration: 1,
                              delay: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        changeButton.setTitle("Current animation:  \(String(describing: animations.first?.preset))", for: .normal)
        
        animationLabel.text = animation.animationDescription
        
    }
}

