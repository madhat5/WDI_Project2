David M. - Project2
------
App ticket: https://github.com/madhat5/wdi_lettuce_students/blob/master/projects/project2_prompt.md
Project link: https://github.com/madhat5/WDI_Project2

<quote>


REQUIREMENTS:
(--o-- open)
(--x-- complete)

- 1. Have at least 2 models (more if they make sense):
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
LAYOUT
------

<app layout>

- Frameworks used (goals):
    - Rails
    - Devise (user authentification)
    - Bootstrap (user inter)

- Pages:
    - Homepage

------

- Homepage
  - lists users and,
  - lists all users' posts (or only most recent from each)
  - (login)

- User profile
  - lists profile and,
  - lists all user's posts

Database tables:

- Users
  - Name
  - Animal kind
  - Img

- Posts
  - title
  - content

- Profiles
  - post.id
  - user.id



------
SCRIPT TRACK
------
(--o-- open)
(--x-- complete)

- Update README

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

- User log-in/out

- Extras?




------
BUG TRACK
------

- Seed
    - 

- Migrate
    - 

- Seed
    - 



























