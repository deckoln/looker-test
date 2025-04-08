project_name: "du-testx-dev"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
remote_dependency: develop {
  url: "https://github.com/deckoln/looker-test"
  ref: "main"
  # override_constant: connection {
  #   value: "importing_project_connection"
  # }
}
