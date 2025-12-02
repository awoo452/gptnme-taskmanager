## [0.0.0] – Unreleased (12/1/2025)

Added
- SimpleCalendar integrated as a standalone calendar app under /calendar.
- CalendarController with index (monthly) and day views.
- Calendar routes added: /calendar and /calendar/day.
- Navigation link for Calendar added to layout.

Updated
- application.css cleaned up and fixed (removed flex layout, simplified styling).
- Task views now render correctly with the cleaned-up CSS.

Fixed
- Calendar no longer breaks layout or pushes nav bar off alignment.
- Route ordering issues causing /calendar to fall into tasks#show.

## [0.0.0] – Unreleased

### Added
- **TasksController#complete**
  - New `complete` action to mark a task as completed
  - Sets `status` to `3`
- **Routes**
  - Added `patch "tasks/:id/complete"` for the complete action
- **Views**
  - Added “Complete Task” button on `show.html.erb`
  - Added global navigation via `_navbar.html.erb` included in `application.html.erb`
- **Form**
  - Added status dropdown selector in `_form.html.erb` to replace numeric input

### Changed
- **TasksController**
  - Updated to support complete action logic
- **show.html.erb**
  - Now displays edit, delete, and complete buttons

### Notes
- **Standardized Status Codes:**
  - `0` = Not Started  
  - `1` = In Progress  
  - `2` = On Hold  
  - `3` = Completed

## [0.0.0] – Unreleased

### Changed
- database.yml
    - Make it work for heroku

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