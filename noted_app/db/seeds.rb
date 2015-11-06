# DELETES/////////////////////////////////////////////////////////////////////////////
User.delete_all
Note.delete_all

# USERS/////////////////////////////////////////////////////////////////////////////



# NOTES/////////////////////////////////////////////////////////////////////////////
notes = Note.create([
  {
    keyword: "hello",
    content: "HELLO WORLD!",
    subject_name: "demo",
    published_by: "delete@delete.com",
  },
  {
    keyword: "life",
    content: "Number42",
    subject_name: "demo",
    published_by: "hitchhiker@galaxyguide.com",
  },
  {
    keyword: "test",
    content: "This is a TEST",
    subject_name: "demo",
    published_by: "katie@is.me",
  },
  {
    keyword: "dolphins",
    content: "they tried to warn us",
    subject_name: "demo",
    published_by: "hitchhiker@galaxyguide.com",
  }
])
