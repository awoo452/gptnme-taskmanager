Task.create!([
  {
    task_name: "Write MVP Documentation",
    description: "Draft the initial README outlining core objectives and future roadmap for GPTnMe.",
    specific: "Outline the project goals and how each app connects.",
    measurable: "Complete a one-page README with all six app summaries.",
    achievable: "Use ChatGPT and prior notes to summarize key features.",
    relevant: "Establishes clarity for future development phases.",
    time_bound: "Finish within 2 hours.",
    start_date: Date.today,
    due_date: Date.today + 1,
    completion_date: nil,
    status: 0,
    priority: 8
  },
  {
    task_name: "Build SMART Task Model",
    description: "Generate Rails model and migration for Task with all SMART attributes.",
    specific: "Include Specific, Measurable, Achievable, Relevant, and Time-bound fields.",
    measurable: "Model migration runs successfully and table exists in Postgres.",
    achievable: "Run `rails db:migrate` without errors.",
    relevant: "Foundation for all future functionality.",
    time_bound: "Complete today.",
    start_date: Date.today,
    due_date: Date.today,
    completion_date: Date.today,
    status: 3,
    priority: 10
  },
  {
    task_name: "Deploy App to Heroku",
    description: "Push initial Rails build to Heroku and verify public accessibility.",
    specific: "Ensure `/tasks` route displays seeded tasks.",
    measurable: "App loads without error on Heroku URL.",
    achievable: "Heroku Postgres configured and migrated.",
    relevant: "Core deployment setup for the GPTnMe series.",
    time_bound: "Deploy within the next 24 hours.",
    start_date: Date.today,
    due_date: Date.today + 1,
    completion_date: nil,
    status: 1,
    priority: 9
  },
  {
    task_name: "Design Future App Map",
    description: "Draft a visual map showing how the six applications will connect.",
    specific: "Include arrows or relationships between Task Manager, Calendar, Blog, Gallery, etc.",
    measurable: "Diagram complete and exported to /docs folder.",
    achievable: "Use Lucidchart or draw.io to mock connections.",
    relevant: "Clarifies long-term architectural planning.",
    time_bound: "Complete by end of week.",
    start_date: Date.today,
    due_date: Date.today + 5,
    completion_date: nil,
    status: 0,
    priority: 7
  }
])

puts "✅ Seeded #{Task.count} tasks successfully."