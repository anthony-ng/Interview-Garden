# Release 3: Adding Votes

### Learning Competencies

- Understand how to responsibly modify a schema
- Understand how to map a complex and non-standard relationship onto Rails and ActiveRecord

### Summary

You already have your basic question and model resource functioning. Now comes to fun part: adding votes. Just like Stack Overflow, your app should allow visitors to upvote and downvote questions and answers.

There are multiple ways to implement this features, each with their own tradeoffs. Make a conscious decision about what you want to do, and be ready to defend them.

When adding new tables or new columns to your schema, you should not edit previous migrations. All changes should be implemented in new migrations.

## Features

- create question upvote links on question index page
- create question downvote links on question index page
- display question vote totals on question index page
- create answer upvote links on question show page
- create answer downvote links on question show page
- display answer vote totals on question show page
