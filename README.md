#PinHeads

![PinHeads image](http://i.imgur.com/hd6k9zj.png)

or:

Gettin' Cruddy with it

![CRUD comics image](https://s-media-cache-ak0.pinimg.com/564x/ea/f6/5a/eaf65ab5a26f369cf566ab0eacf59709.jpg)

----
-----
-----


PinHeads is a web based user board for Pinball enthusiasts.  It features user-based classified ad postings as well as current pinball news and rumors posted by users. In later updates it will also include a user curated database of pinball machines, featuring PAPA tutorial videos and user high scores.

--

#Technologies Used:

This application is built using Ruby on Rails technology to make a CRUD user database driven site. This was done using the following technologies which will be explained in greater detail below:

* HTML5
* SCSS
* Bootstrap
* Ruby
* Ruby on Rails
* Ruby Gems
* Heroku
* Amazon Web Services S3
* Paperclip
* ImageMagick
* bcrypt

----
* HTML5, SCSS, Ruby, Ruby on Rails:
To take this a fully functional web-based app that would allow for database information to be interacted with using 
	* Create
	* Read
	* Update
	* Destroy 
	functionality this app was built on a Rails framework with web implementation using HTML styled with SCSS. Bootstrap is a CSS gem that allows for easy manipulation of HTML elements for visual elements.
	
* Ruby Gems were used to allow additional functionality of the app by giving shortcuts to greater functionality within the app. These included:
*bcrypt; for the ability to safely encrypt user passwords, Imagemagick; for the ability to easily deliver images in uniform sizes ranging from thumbnail to full resolution, and *Paperclip which allows for the easy uploading and retrieval of user images to the amazon web services cloud for delivery to the app.

* Heroku is a free web hosting service that allows for the easy launch and testing of web apps for developers.

* Amazon Web Services and S3 hosting are Amazon.com's cloud based storage solution for developers and web services companies, allowing for easy access to server space and online web hosting for database assets.

----

#Design Approach:
When setting out to build this site I wanted to create an interactive experience for the user that would take pinball database websites into the modern era. Currently the offerings available for the pinball community are all either incredibly cluttered like [Pinside](https://pinside.com/) or look and feel like they were made in the 90's like [the internet pinball database](http://www.ipdb.com). I wanted to create a user experience that gave the functionality of a crud site with the accessablity of a bootstrap and rails app to bring this element of pinball into the modern age.

Front page wireframe layout:
![Wireframe front page](https://trello-attachments.s3.amazonaws.com/56c8cdfd8791da825dcd6f25/3264x2448/41fe9232eb5d99dd99861691267846af/IMG_4990.JPG)

Classifieds wireframe layout:
![classified wireframe](https://trello-attachments.s3.amazonaws.com/56c8ce13dcfc9e3ae94dc6d3/3264x2448/8cc25f51bd8b466edc55012b67e4ad8d/IMG_4991.JPG)

Reference page wireframe layout, unfortunately, due to time constraints this page was ice boxed and will be released in forthcoming updates:
![references page wireframe](https://trello-attachments.s3.amazonaws.com/56c8ce08ad704eb8d37b63a9/3264x2448/25434083d89149df73011805709b6943/IMG_4992.JPG)

ERB relational diagrams were created to express the relationships between all of the models at play in this application. The models included in this release of the app include: Users, Classifieds, Rumors(formerly News), and Sessions (not pictured). A user relates to classified and rumors in a one to many relationship.  When references is released it will relate to users in a many to many relationship which will be joined by a High Scores Model.
![ERB wireframe](https://trello-attachments.s3.amazonaws.com/56c9003aaa04f9edbc57b164/3264x2448/9a857bfa2463c91c49684d91b1e7f274/IMG_4993.JPG)

---

#Installation instructions:

For immediate use simply open your web browser to [https://floating-tor-54345.herokuapp.com/](https://floating-tor-54345.herokuapp.com/)

Sign up to create a new user and start posting!

For installation onto a local host or to play with the open source code, fork the git repository available at [https://github.com/cameragadget/project2_app](https://github.com/cameragadget/project2_app)

The Paperclip gem is already installed in the gemfile but you will want to install ImageMagick by running

`$ sudo install ImageMagick`

This will give your app ImageMagick capabilities allowing you to easily resize images by simply calling "small, medium, large, etc" instead of specific pixel widths.

Now that ImageMagick is installed, simply follow the [Paperclip quick start tutorial](https://github.com/thoughtbot/paperclip/wiki/Quick-Start) to get started.

Now that your Paperclip is up and running you need to set up your Heroku account for free hosting: install [Heroku Toolbelt](https://toolbelt.heroku.com/)
Now that you've installed Toolbelt set up your Heroku account and follow instructions on [Heroku Dev Center](https://devcenter.heroku.com).

Now we need to set up an account with [Amazon Web Services](https://aws.amazon.com/s3/) Follow instructions for setting up a free S3 account.

Now that you're set up you need to get your AWS keys from your AWS user page.

Make a new file called .env in your rails app. add your bucket name and AWS keys to this file. Go into .gitignore at add .env to this file.  
IF YOU DON'T DO THIS PEOPLE WILL START RUNNING SPAM SERVERS OFF YOUR YOUR HOSTING AND COST YOU THOUSANDS OF DOLLARS!!!

Now follow the instructions on [paperclip's tutorials](https://devcenter.heroku.com/articles/paperclip-s3) for linking your S3 account to your Heroku account.

Now git add, git commit, git push heroku master, and you're ready to go!!

-----

#Blockers and Unsolved problems:

Following feedback from my last project I elected to put equal focus on design/styling as I put into my back end functionality. As a result, many elements were left in the ice box.

##Omissions and future updates:

* Resource page including specific machine photos, manufacturing information, PAPA tutorials, maintenance tips, and user high scores will be added at later updates.
* Search feature for classifieds
* index page of all posts made by a single user
* ability to delete photos
* Improvements in the general UI and styling.

------

User Stories, wireframes, and ERB diagram avaialble at:
[https://trello.com/b/Gmq3EqaH/project-2-pinheads](https://trello.com/b/Gmq3EqaH/project-2-pinheads)

Full project available at:
[https://github.com/cameragadget/project2_app](https://github.com/cameragadget/project2_app)

Hosted version avaialbe at:
[https://floating-tor-54345.herokuapp.com/](https://floating-tor-54345.herokuapp.com/)