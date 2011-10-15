# Super simple [Nanoc](http://nanoc.stoneship.org/) template

In order to start working on it, navigate to the containing folder then run

    bundle install
    
After everything has installed, run

    bundle exec nanoc aco
    
in order to start the development server. Every time you'll request the url (default's `localhost:3000`) the contents will be processed and put in the `output` folder.

Supports `coffeescript` on top of the default [nanoc filters](http://nanoc.stoneship.org/docs/4-basic-concepts/#filters).