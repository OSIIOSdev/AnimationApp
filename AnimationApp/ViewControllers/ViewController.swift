import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var animatedView: UIView!
    @IBOutlet var changeButton: UIButton!
    @IBOutlet var animationLabel: UILabel!
    
    let properties = AnimationSettings.getAnimatedViews()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Private methods
    @IBAction func buttonPressed() {
        changeButton.setTitle(properties.preset, for: .normal)
    }
    
}

