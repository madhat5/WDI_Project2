Note.ed - WDI Project2, David M.
------
------

App ticket: https://github.com/madhat5/wdi_lettuce_students/blob/master/projects/project2_prompt.md
Project link: https://github.com/madhat5/WDI_Project2


> "Tell me and I forget. Teach me and I remember. Involve me and I learn." Ben Franklin
> 
> "I am always doing that which I cannot do, in order that I may learn how to do it." Pablo Picasso


App Ticket, REQUIREMENTS:
(--o-- open)
(--x-- complete)

- 1. Have at least 2 models (more if they make sense): --x--
    > one representing someone using your application, 
    > and one that represents the main functional idea for your app

- 2. Include sign up/log in functionality, --x--
    > with encrypted passwords & an authorization flow
    > (DEVISE)

- 3. Have complete RESTful routes for at least one of your resources with GET, POST, PUT, PATCH, and DELETE --o--

- 4. Utilize an ORM to create a database table structure and interact with your relationally-stored data --x--

- 5. Include wireframes that you designed during the planning process --x--
    > (README)

- 6. Have semantically clean HTML and CSS ()
    > (BOOTSTRAP)

- 7. Be deployed online and accessible to the public --o--
    > Include README


- Reference:
    - Week 5
        - day 4/5

    - Week 6
        - all

------
------
CONCEPT / LAYOUT
------

This app will alow users to:
    - Login,
    - Post classroom notes (by subject) to their profile,
    - View other users' classroom notes,
    - Bookmark other user's classroom notes


- Frameworks used (goals):
    - Rails
    - Devise (user authentification)
    - Bootstrap (user inter)


------

Pages:
    
    > define all mvp pages
        > all RESTfull routes?
    > define all actions/controllers/view associated with

- Homepage (no login needed for data display)
http://www.bootstrapzero.com/bootstrap-template/landing-page
  - lists total number of user notes
    - "There are #x notes"
  - lists total number of user notes/subject as table:
    - subject | #x notes
  - Login <button>
    - redirects to login form (forms page)
  - Register <button>
    - redirects to register form (forms page)
        - use modals for buttons?

- Login / Register (form)
  - if login pass != login pass then redirect back to login (display wrong password?)
    - else redicret to User profile

- User profile (login needed)
http://startbootstrap.com/template-overviews/heroic-features/
  - displays user name
    - change password <button>?
  - lists my_notes table (displays 4/time, scroll for more)
    - subject | keyword | date?
        - subject <link> 
            - redirects to subject profile
        - keyword <link>
            - changes text in display to actual notes
  - lists my_bookmarks
    - user | subject | keyword | date? | fk
        - user <link> 
            - redirects to other users' profile 
        - subject <link> 
            - redirects to subject profile
        - keyword <link>
            - changes text in display to actual notes    

- User profiles (other users)
http://startbootstrap.com/template-overviews/heroic-features/
  - lists notes table (displays 4/time, scroll for more)
    - subject | keyword | date? 
        - subject <link> 
            - redirects to subject profile
        - keyword <link>
            - changes text in display to actual notes

- Subject profile (login needed)
http://www.bootstrapzero.com/bootstrap-template/blog
  - lists a table
    - subject | keyword | user
        - user <link> 
            - redirects to other users' profile 
        - subject <link> 
            - redirects to subject profile
        - keyword <link>
            - changes text in display to actual notes   


Database tables:

- Users
  - Genereated by Devise
    - added user_name

- Notes
  - keyword | content | subject_name | published_by

- Join tables: (make modoel with boolean)
  - note | user
    - many to many (has_and_belongs_to_many)


------
SCRIPT TRACK
------
(--o-- open)
(--x-- complete)
(--ox-- ongoing)
(>> = command then command)
(=> write in file)

- Update README --ox--
    - https://gist.github.com/madhat5

- App --x--
    - app setup (rails new name_app -d postgresql)
    - ensure dependencies (bundle install)
    - add gems (devise, pry-rails)

- User authentification --o--
    - Devise (rails g devise:install)
    - Update enviromnment (config/environments/development.rb)
    - Update application view (app/views/layouts/application.html.erb)
    - user model generate (rails g devise user >> rake db:create >> rake db:migrate)
    - update aplication (app/views/layouts/application.html.erb)
    - force not logged redirect (app/controllers/application_controller.rb)
    - copy all views to application (rails g devise:views)
    - update routes (config/routes.rb)

- Database --x-- 
    - database create/check (rake db:create >> rails dbconsole)
    - model create (rails g model Name >> rails g controller names)
        - x#tables
    - update migration files (db/migrate)
    - create JoinTable migrate (rails g migration CreateJoinTable table_names1 table_names2) …by alpha…
    - schema migrate/test (rake db:migrate / rails dbconsole)

- Test --ox--
    - launch server (rails s)
    - update README

- Models(Seeds) --ox--
    - models update (app/models/name.rb)
    - update seed.rb
    - import/test (rake db:seed / rails dbconsole)
    - model test (rails c >> Name.all)

- Routes --x--
    - route test (rake routes)
    - route create (config/route.rb => resources :names)

- Controller --o--
    - method writeup (per controller)
        - up to x7 (index, show, create, new, edit, update, delete)

- Views --o--
    - INDEX/SHOW/CREATE only to start
    - folder create (mkdir app/views/names)
    - views create (touch app/views/names/index.html.erb)
        - x5 (_form, show, new, edit)
    - Bootstrap

- Test --ox--
    - launch server (rails s)
    - update README

- Extras
    - make Number42 user as sample notes

------
BUG TRACK
------

- Database
    bug: generated data before added user_name to users table.
    solution: cleared users table. ran rails dbconsole >> delete from users.
    source: http://www.postgresql.org/docs/8.2/static/dml-delete.html

- Test
    bug: uninitialized constant RegistrationsController
    solution: rails g controller registrations
    result:
      create  app/controllers/registrations_controller.rb
      invoke  erb
      create    app/views/registrations
      invoke  test_unit
      create    test/controllers/registrations_controller_test.rb
      invoke  helper
      create    app/helpers/registrations_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/registrations.coffee
      invoke    scss
      create      app/assets/stylesheets/registrations.scss




------
COMMENTS / QUESTIONS
------

- Seeding with devise, create all fields?

- take views from app/views/devise for custom registration views
    - update registrations controller


















