# DCvsMarvel
​
TECHNOLOGIES USED
​
Our front-end consists of HTML and CSS.
​
Our back-end consists of Ruby on Rails.  Rails populates the welcome page.  AngularJS is used to dynamically alter states for the other views.  Additionally, angularJS is used to add the movie show views.
​
APPROACH TAKEN
​
Our goal for creating this application was to create a database of superhero movies published by Marvel and DC.  From a user standpoint, the user would be able to view all movies my Marvel and all movies by DC.   Users can view a show page for each movie, where a synopsis and information on actors and directors can be found.  Each movie show page also has an index column on the side with links to all other movies made my the same publisher that published the movie on the current show page.  Additionally, there is an option for the user to edit information in the current movie listing or remove the listing entirely.
​
In the beginning, we built a rails back-end to provide an index page and then attempted to integrate angularJS to supply the remaining views.  However, this was challenging; our group had a difficult time pinpointing which html view made the most sense to discontinue the rails back-end and start the angularJS functionality.  As a result, we spent an entire day building a homepage powered by angularJS even though we had already created and routed that page in rails.  
​
After consulting with our instructors, we decided to shift strategy and focus on establishing full CRUD functionality for our app in rails.  Once that objective was achieved, we focused on implementing angularJS.
​
INSTALLATION INSTRUCTIONS
​
-Go to https://github.com/Robizzy27/DCvsMarvel, fork and clone repository.
-Open terminal and change root directory to /DCvsMarvel.
-In command line, type "atom ." to open entire directory in atom.
-In command line, type "heroku open" to open web application on Heroku server.
​
UNSOLVED PROBLEMS
​
-Creating new directors, publishers, or actors.
​
One of the limitations of this application is the number of directors, publishers, and actors available for each new movie.  In the current iteration of DCvsMarvel, each new movie added must be directed by the existing directors and published by the existing publishers in our database.  
​
One way to implement this feature would be to add links on our main page to "add director", "add publisher", or even "add actor".  The information from these forms would be added to our database so that each new director, publisher, and actor would have their own unique identifier.  Given the relationships between directors and movies (has many), publishers and movies (has many), and movies and actors (many to many), it would be possible to implement CRUD functionality to classes besides movies.
​
Another option would be to remove dropdown menus for director and publisher and have any new entry automatically get added to the database.
​
​
​
-Implementing AngularJS
​
The major obstacle we encountered involved implementing angularJS on top of the existing rails routes.  
​
First, we had a difficult time deciding which routes rails should control and which routes angularJS should control.  At first, we tried to imitate the Shangri-angula exercise and have rails providing the datebase and the index page and angularJS providing all of the routes from that rails index page.  However, the mixture of rails and angularJS routes was confusing.  After much discussion and consultation, we decided to focus on applying angularJS just to the movie show pages.
​
Second, when we were implementing angularJS for the movie show pages, we ran into another issue. When accessing the movies show page, we could not get any objects on the page to load.   We tried tweaking our movies.js file and tested some of the HTML on the show page.  Eventually, we were able to get the angularJS movie show page objects to appear after you refresh the rails movie show page.  In the developer console, the angularJS show controller function does not appear until the user refreshes the page. We tried console.log-ing several areas in our movies.js file, but we could not solve this issue.
