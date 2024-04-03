terraform {
  cloud {
    organization = "about-user-api"

    workspaces {
      name = "about-user-api"
    }
  }
}