import Vapor

protocol Controller {}

protocol RouterController: Controller {
    func setupRoutes(with router: Router)
}
