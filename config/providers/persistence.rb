Hanami.app.register_provider :persistence, namespace: true do
  prepare do
    require "rom"

    config = ROM::Configuration.new(
      :sql,
      ENV.fetch("DATABASE_URL")
    )

    register "config", config
    register "db", config.gateways[:default].connection
  end

  start do
    config = target["persistence.config"]

    config.auto_registration(
      target.root.join("lib/cookbook/persistence"),
      namespace: "Cookbook::Persistence"
    )

    register "rom", ROM.container(config)
  end
end
