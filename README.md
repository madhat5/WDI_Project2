Note.ed - WDI Project2, David M.
------

App ticket: https://github.com/madhat5/wdi_lettuce_students/blob/master/projects/project2_prompt.md
Project link: https://github.com/madhat5/WDI_Project2


> "Tell me and I forget. Teach me and I remember. Involve me and I learn." Ben Franklin
> 
> "I am always doing that which I cannot do, in order that I may learn how to do it." Pablo Picasso


App Ticket, REQUIREMENTS:
(--o-- open)
(--x-- complete)

- 1. Have at least 2 models (more if they make sense): --o--
    > one representing someone using your application, 
    > and one that represents the main functional idea for your app

- 2. Include sign up/log in functionality, 
    > with encrypted passwords & an authorization flow
    > (DEVISE)

- 3. Have complete RESTful routes for at least one of your resources with GET, POST, PUT, PATCH, and DELETE

- 4. Utilize an ORM to create a database table structure and interact with your relationally-stored data

- 5. Include wireframes that you designed during the planning process

- 6. Have semantically clean HTML and CSS ()
    > (BOOTSTRAP)

- 7. Be deployed online and accessible to the public --o--
    > Include README


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
  - lists total number of user notes
    - "There are #x notes"
  - lists total number of user notes/subject as table:
    - subject | #x notes
  - Login <button>
    - redirects to login form (forms page)
  - Register <button>
    - redirects to register form (forms page)
        - use modals for buttons?

- User profile (login needed)
  - displays user name
    - change password <button>?
  - lists my_notes table (displays 4/time, scroll for more)
    - subject | keyword | date?
        - subject <link> 
            - redirects to subject profile
        - keyword <link>
            - changes text in display to actual notes
  - lists my_bookmarks
    - user | subject | keyword | date?
        - user <link> 
            - redirects to other users' profile 
        - subject <link> 
            - redirects to subject profile
        - keyword <link>
            - changes text in display to actual notes    

- User profiles (other)
  - lists notes table (displays 4/time, scroll for more)
    - subject | keyword | date?
        - subject <link> 
            - redirects to subject profile
        - keyword <link>
            - changes text in display to actual notes

- Subject profile (login needed)
  - lists a table
    - subject | keyword | user
        - user <link> 
            - redirects to other users' profile 
        - subject <link> 
            - redirects to subject profile
        - keyword <link>
            - changes text in display to actual notes   

- Login / Register
  - if login pass != login pass then redirect back to login (display wrong password?)
    - else redicret to User profile

Database tables:

- Users
  - name | password?

- Notes
  - 

- Subject
  - 

- Join tables:
  - 


------
SCRIPT TRACK
------
(--o-- open)
(--x-- complete)

- Update README

- (User log-in/out)

- (Bootstrap)

- App 
    - app setup (rails new name_app -d postgresql)
    - ensure dependencies (bundle install)

- Database 
    - database create/check (rake db:create / rails dbconsole)
    - model create (rails g model Name >> rails g controller names)
        - x#tables
    - update migration files (app/db/migrate)
    - create JoinTable migrate (rails g migration CreateJoinTable table_names1 table_names2) …by alpha...
    - schema migrate/test (rake db:migrate / rails dbconsole)

- Test
    - launch server (rails s)
    - update README

- Models(Seeds) 
    - models update (app/models/name.rb)
    - update seed.rb
    - import/test (rake db:seed / rails dbconsole)
    - model test (rails c >> Name.all)

- Routes
    - route test (rake routes)
    - route create (route.rb)

- Controller
    
    - controller create (touch app/names_controller.rb)
    - method writeup (per controller)
        - x7 (index, show, create, new, edit, update, delete)

- Views >>>>>>>>>>>>>(INDEX/SHOW ONLY to start)<<<<<<<<<<<<<<<<<
    - folder create (mkdir app/views/names)
    - views create (touch app/views/names/index.html.erb)
        - x5 (_form, show, new, edit)

- Test
    - launch server (rails s)
    - update README






------
BUG TRACK
------

- App_section
    - 



























