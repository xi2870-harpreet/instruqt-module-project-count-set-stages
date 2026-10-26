resource "network" "main" {
  subnet = "10.0.202.0/24"
}

resource "container" "mongodb" {
  image {
    name = "europe-west1-docker.pkg.dev/curriculum-labs/prod/mongodb-image:v0.8.0"
  }

  entrypoint = ["/bin/bash"]
  command    = ["-c", "sleep infinity"]

  environment = {}

  resources {
    cpu    = 1000
    memory = 1024
  }

  network {
    id = resource.network.main.meta.id
  }
}
