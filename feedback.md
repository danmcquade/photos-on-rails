# Project Feedback + Evaluation

Your feedback is based on the [Evaluation Rubric](https://git.generalassemb.ly/ga-wdi-exercises/project2/blob/master/evaluation.md) provided for this project.

## Technical Requirements:

> Did you deliver a project that met all the technical requirements? Given what the class has covered so far, did you build something that was reasonably complex?

Your Score: 3

**Notes:**
Your application meets all of the technical requirements. It's clear you worked really hard on it! Really great job integrating with S3 and AWS.

If you're looking for ideas for further features to implement:
* you could explore social log ins with Devise, like logging in with Facebook or Gmail
* Add tags/categories to photos
* Add the ability to search for photos
* Look in to SCSS and SASS for your styling

## Creativity/Interface:

> Is your user interface easy to use and understand? Does it make sense for the problem you're solving? Does your interface demonstrate creative design?

Your Score: 3

**Notes:**
Your user interface is very clean and well designed. I especially love the hover effects on the images. I would encourage you to spend some time on styling your form elements (buttons and inputs, etc) so that they're in line with the rest of your design.

Additionally, I recommend you look in to Sass/Scss for any future Rails development you do. Sass is a CSS preprocessor, so you can write in the Sass syntax (and it give you a bunch of additional functionality) and it will get compiled to CSS. Scss is a flavor of Sass that is closer to the CSS syntax. 

Some additional things you can consider:
* Make the site responsive by using media queries
* Look in to CSS Grid for your grid of images
* Use AJAX to add comments on the show page for an issue

## Code Quality:

> Did you follow code style guidance and best practices covered in class, such as spacing, modularity, and semantic naming? Did you comment your code?

Your Score: 3

**Notes:**
Your code quality is really high. You have some dead code in your `application_controller.rb` that you should delete. Additionally, it looks like you're using a lot of `<div>`s in your markup, instead of being more semantic with your markup.

I really like that you're using partials to break up your views and make them more modular. 

If Ruby is a language you're interested in continuing with, you're at the point where an advanced technical book would be a good next step. The ones I recommend are: Eloquent Ruby, Practical Object Oriented Design in Ruby, The Ruby Way or Advanced Rails. 

## Functionality:

> Does the scope of functionality you've built meet the minimum requirements? Do the core components of your application work without errors?

Your Score: 3

**Notes:**  
You have a lot of functionality that is well built and runs without errors. I've described some additional features you could build out above. I encourage you to build out an automated test suite next. We don't get the chance to spend a lot of time on testing in WDI unfortunately, but it is really powerful and an important skill. Rails makes it pretty easy to implement and provides a lot of conventions for your tests. Here are 3 links to get you started:

* [Rails Guides: Testing](http://guides.rubyonrails.org/testing.html)
* [How We Test Rails Applications](https://robots.thoughtbot.com/how-we-test-rails-applications)
* [Your Guide to Testing in Ruby on Rails 5](https://hackernoon.com/your-guide-to-testing-in-ruby-on-rails-5-c8bd122e38ad)

## Planning / Process / Submission:

> Is there clear evidence of planning? Is there adequate documentation?

Your Score: 2

**Notes:**
Your `readme` is really detailed and well written. I suggest adding a Setup Instructions section with details on how to set the project up locally, specifically mentioning setting it up to work with S3. Additionally, if you have the time, consider setting up a staging environment on production with local, staging and production environment variables.
