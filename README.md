# Discography project Task

## Statement
You have been asked to implement a simple website to manage the database of Musical
records from a discography firm.
Rails developers must use the Ruby on Rails framework with gems at your will.
PHP developers must use the Laravel framework.
The project is divided in 3 blocks:

- Home page, menu to manage either artists or LPs.
    - Includes a report with the columns: LP (LP name), Artist (artist name), Songs
    (number of songs in the LP), Authors (comma-separated list of the authors of
    the songs in the LP).

- CRUD of artists with fields: name:string, description:text.
  - In the Artist show page: should appear the total number of LPs for the artist.
  - In the Artist show page: link to the list LPs that belong to the current artist.

- CRUD of LPs with fields: name:string, description:text.
  - Filter by artist name

### Models:
Artist, LP, Song, Author
Associations:
- Artist and LP is one to many, one Artist has many LPs, and one LP belongs to one
Artist.
- One LP has many songs
- One song belongs to many Authors and one Author has many Songs
Easy navigation throughout the application is a must (omnipresent menu).

Use sqlite3 as the database adapter. Seeds are required, at least 5 artists: use Rails seeds
or the equivalent seeds method if you are using a Php Laravel. For example:
Metallica “Black album”, with songs
- “My Friend of Misery” by Hetfield and Jason N.
- “Enter Sandman” by Hetfield
- “Unforgiven” by Hetfield and Hammett

Sepultura “Against”, with song “Hatred Aside” by Jason N.
Use of JavaScript, css3, some templates system, also will be appreciated.
Remember apart from a functional source code, it is important its organization, clarity, reuse,
optimization, testing, ...
Also, add a README file explaining the project installation process.
You must create a Github/GitLab/Bitbucket git repository and share the project with us.
If you have any question don’t hesitate to ask.

## Installation

### Sqlite3
- Create a sqlite file in the root of the project
  - Execute ```touch database/database.sqlite``` or ```New-Item -Path .\database\database.sqlite -ItemType File```

