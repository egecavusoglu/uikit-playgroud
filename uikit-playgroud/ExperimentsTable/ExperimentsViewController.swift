import UIKit

class ExperimentsViewController: UITableViewController {

    private enum Cell {
        static let plain = "plain"
    }

    var experiments: [Experiment] = EXPERIMENTS

    // MARK: - Init

    init() {
        super.init(style: .insetGrouped)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View Controller

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UIKit Playground"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: Cell.plain)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.plain) else { return UITableViewCell() }
        var contentConfiguration = UIListContentConfiguration.valueCell()
        contentConfiguration.text = experiments[indexPath.row].title
        contentConfiguration.textProperties.color = .systemBlue
        cell.contentConfiguration = contentConfiguration
        cell.accessoryType = .disclosureIndicator
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
