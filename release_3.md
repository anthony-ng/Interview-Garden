# Release 3: Adding Votes


### Learning Competencies

  - Understand how to responsibly modify a schema
  - Understand how to create polymorphic associations

### Summary

  You already have your basic question and model resource functioning. Now comes to fun part: adding votes. Just like Stack Overflow, your app should allow visitors to upvote and downvote questions and answers.

  To do this, however, you only need to add one extra table to your schema -- a votes table, which has relationships with the answer and question model. To implement this, you'll need to use [ActiveRecord's polymorphic associational interface](http://guides.rubyonrails.org/association_basics.html#polymorphic-associations).

  When adding new tables or new columns to your schema, you should not edit previous migrations. All changes should be implemented in new migrations.

## Features

  - create vote model and related associations
  - create question upvote links on question index page
  - create question downvote links on question index page
  - display question vote totals on question index page
  - create answer upvote links on question show page
  - create answer downvote links on question show page
  - display answer vote totals on question show page

