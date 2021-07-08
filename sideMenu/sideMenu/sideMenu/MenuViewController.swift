import UIKit

enum MenuType: Int {
    case home
    case books
    case store
    case careers
    case dollar
    case sign
    case newsletter
}

class MenuViewController: UITableViewController {

    var didMenuTapped: ((MenuType) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else {
            return
        }
        print(menuType)
        
        dismiss(animated: true, completion: { [weak self] in
            self?.didMenuTapped?(menuType)
        })
    }
}
