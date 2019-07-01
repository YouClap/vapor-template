import Vapor

/// Called before your application initializes.
public func configure(_ env: inout Environment) throws -> (Config, Services) {
    let config = Config.default()
    var services = Services.default()

    // Register middleware
    var middlewares = MiddlewareConfig() // Create _empty_ middleware config
    middlewares.use(ErrorMiddleware.self) // Catches errors and converts to HTTP response
    services.register(middlewares)

    services.register(Router.self) { container -> EngineRouter in
        let router = EngineRouter.default()
        try routes(router, container)
        return router
    }

    return (config, services)
}
