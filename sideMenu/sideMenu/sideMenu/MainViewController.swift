import UIKit

class MainViewController: UIViewController {
    
    let transition = SlideInTransition()
    var topView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didSelectedMenuItem(_ sender: Any) {
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController else { return }
        viewController.didMenuTapped = { menuType in
            print(menuType)
            
            self.transitionToMainView(menuType)
        }
        viewController.modalPresentationStyle = .overCurrentContext
        viewController.transitioningDelegate = self
        present(viewController, animated: true)
    }
    
    func transitionToMainView(_ menuType: MenuType) {
        let title = String(describing: menuType)
        self.title = title
        topView?.removeFromSuperview()
        switch menuType {
        case .home:
            print(String(describing: menuType))
            let view = UIView()
            view.backgroundColor = .yellow
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.topView = view
        case .books:
            let view = UIView()
            view.backgroundColor = .gray
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.topView = view
        case .store:
            let view = UIView()
            view.backgroundColor = .blue
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.topView = view
        case .careers:
            let view = UIView()
            view.backgroundColor = .blue
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.topView = view
            
        case .dollar:
            let view = UIView()
            view.backgroundColor = .white
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.topView = view
            
        case .sign:
            let view = UIView()
            view.backgroundColor = .yellow
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.topView = view
            
        case .newsletter:
            let view = UIView()
            view.backgroundColor = .green
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.topView = view
        }
        
        
        }
        
    }


extension MainViewController: UIViewControllerTransitioningDelegate {
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = true
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = false
        return transition
    }
}
