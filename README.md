
# Web App Directory Structure

We have a directory structure similar to this in the web app.


app/
 - index.scss  - Contains site variables
 - vendor.scss - Contains 3rd party imports, e.g from bower

 - pagename - An example top level page, e.g account/files/login
   - pagename.scss
   - pagename.html

 components/ - All reusable components

 - person/ - e.g a Person components, could be a div with profile picture etc
   - person.scss
   - person.html

 - file-summary/ - e.g Could be a common file-summary component
   - file-summary.html
   - file-summary.scss
   - file-summary.js  - could be an angular controller

 - nav/
    - nav.html
    - nav.scss

 - template/
    - page.html - our main inner view for logged in users
    - page-public.html - main inner view for pages which don't require login (i.e might not contain user nav)


We have a main index.html which includes styles scripts and so on.. This includes one of the component/template files.
So in the case of the file list, we may use the page.html layout which could include header, footer and page content.

## User logged in
index.html -> Renders page.html -> page.html renders header footer and content -> content would be app/pagename/*


## User logged out

In the case of the login page, where we may only want to include login form, we could render the login page inside page-public.html

index.html -> Renders page-public.html -> page-public.html renders content -> content would be app/pagename/*


