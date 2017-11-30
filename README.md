# Photos-on-Rails
A photo sharing service created in Ruby on Rails. Live demo at:

[http://photos-on-rails.herokuapp.com/](http://photos-on-rails.herokuapp.com/)

![Photos-on-Rails Screenshot](https://raw.githubusercontent.com/danmcquade/photos-on-rails/master/preview.png "Photos-on-Rails Screenshot")

## Technologies used
Photos-on-Rails was created using Ruby on Rails. The app utilizes Amazon S3 for cloud-based storage of uploaded photos.

## Approach Taken / Features
The initial approach taken when creating the app was to start simple, creating just the basic required functionality, and then gradually add features along the way. The first step was to come up with an ERD in order to visualize how the data would be structured. Once this was in place, the basic functionality of the app was built out.

- Basic register/login functionality
- Having a main gallery on the front page of the app
- A 'Browse' page featuring various photos from users
- A user gallery, showing all photos from a specific user
- A showcase page for viewing individual images
- The ability to upload, edit and delete photos
- Comparing the buttons pressed to the generated solution
- Keeping track of the score

With these basics in place, more advanced features were then added to improve and enhance the functionality of the site. Some of these advanced features which were implemented later in the development process included:

- Storing uploads to S3 on AWS
- Adding the ability to comment on photos
- Adding the ability to edit and delete comments
- Creating a 'favorites' feature using a many-to-many model
