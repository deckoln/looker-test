application: dashboard-summarization {
  label: "Dashboard Insights Powered by Vertex AI"
  file: "dashboard_summarization_cloud_run.js"
  # url: "https://localhost:3000/dashboard_summarization.js"
  mount_points: {
    dashboard_vis: yes
    dashboard_tile: yes
    standalone: yes
  }
  entitlements: {
    local_storage: yes
    use_form_submit: yes
    core_api_methods: ["run_inline_query","run_query","all_lookml_models","dashboard","dashboard_dashboard_elements"]
    external_api_urls: [
      "https://dashboard-summarization-436666578289.asia-northeast1.run.app"
    ]
    scoped_user_attributes:["genai_client_secret"]
  }
}
