import UIKit

class ExperimentsViewController: UITableViewController {

    var experiments: [Experiment] = EXPERIMENTS

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigationBar()
    }

    func setUpNavigationBar(){
        self.title = "UIKit Playground"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "@cell")
        let text = experiments[indexPath.row].title
        cell.textLabel?.text = text
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.experiments.count
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let experiment = experiments[indexPath.row]
        navigationController?.pushViewController(experiment.viewController, animated: true)
    }
}
