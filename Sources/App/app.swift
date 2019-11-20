import YouClap

/// Creates an instance of Application. This is called from main.swift in the run target.
public func app(_ env: Environment) throws -> Application {
    print("environment name: \(env.name)")
    env.loadFile()

    let (config, services) = try configure(env)
    return try Application(config: config,
                           environment: env,
                           services: services)
}
