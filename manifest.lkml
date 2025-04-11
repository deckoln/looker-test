project_name: "du-test"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
local_dependency: {
  project: "pj_dashboard_develop"
  override_constant: connection_name {
    value: "dashboard_develop"
  }
  override_constant: gen_api_backend_url {
    value: "http://localhost:5000"
  }
}
