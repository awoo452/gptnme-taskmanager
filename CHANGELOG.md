## [0.0.0] – Unreleased

### Added
- **Rails App Setup**
  - Initialized new Rails 7 application using PostgreSQL (`rails new . --database=postgresql`)
  - Configured database and ran initial migration

- **Database**
  - Created `tasks` table with SMART-related fields:
    - `task_name`, `description`, `specific`, `measurable`, `achievable`, `relevant`, `time_bound`
    - `start_date`, `due_date`, `completion_date`, `status`, `priority`

- **Controller**
  - Implemented `TasksController` with full CRUD actions:
    - `index`, `show`, `new`, `create`, `edit`, `update`
  - Added strong parameters for secure field handling
  - Defined manual (non-resourceful) routes for all actions

- **Views**
  - `index.html.erb` — displays all tasks with links to individual task pages
  - `show.html.erb` — shows task details with navigation links
  - `new.html.erb` and `edit.html.erb` — render shared `_form.html.erb` partial
  - `_form.html.erb` — includes minimal fields (`task_name`, `description`, `priority`, `status`) for task creation and updates

- **Seeds**
  - Added 4 sample SMART-style tasks in `db/seeds.rb` for testing and initial data population