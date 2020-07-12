# SmallBusinessWebApp
This is a simple template for a web application for small businesses who have no technological fucntionality


## Summary

I have a friend who runs a small plumbing business in his spare time. He travels from place to place fixing and servicing commercial units. Like many small independent business owners he uses only paper files for all of his business needs. He enlisted me to create a solution so that he could access his paper files in some fashion while he was on the road working. Using his paper records I created a csv file and built him a web app with R shiny. The app is simple but greatly improved his business capabilities and made life a lot easier while he was working. He can search through the commercial units he services using a search bar or drop down menu, select what one he wants and then tables populate with all the information he needs. He can access it through his laptop or smartphone simply by clicking a link. This project I have shared is a watered down version that demonstrates the basic concept of the web application that can be applied to a lot of other small or family owned businesses. Making a simple web based application can make life easier for the large group of independent small businesses who use only paper records. It can be private, easy to use, and give them much more functionality. Use this template and help out a friend of your own, or make a web app for your own small business.

*Any business names used in this app and their address or fake information is completely fictional I made up the names because it is a plumbing business and I used some fictional resturant names as clients as well. This app is meant to be a template for users to create their own dashboard that populates tables*

#### Check out the fake app here: https://codylittleshinyapps.shinyapps.io/bps_beta_application/?_ga=2.146823031.1357925776.1594587412-795905115.1592606190

### Data Collection and Preperation

The hardest thing about paper only small businesses is that you are going to need to take the time to do tedious data entry. For this template I used a couple of basic csv files with three fake businesses. It would be easier and more efficent to use just one file and draw all information from it but I split them up so anyone can see how this can be done from a basic high level. The csv files are in the repository with names like 'fakebizpriminfo'. 

### Web Application Development 

I used R shiny to create the web app. It is a very simple and easy to use web application method for those without strong Java or HTML backgrounds. Essentially R shiny runs off a function that takes two inputs; a user interface, and a server side. This front end/back end development may be new for many R programmers who only use the software language for statistics but it is easy to learn in an hour or two and can lead to some really cool things. If you want to see all the cool dashboards you can make using R shiny click this link: https://shiny.rstudio.com/gallery/

### Web Hosting and Access

I hosted and shared this basic template app on R shiny free hosting servers. R shiny allows you to host for free using their servers for a specific number of usage hours (something like 25). For a free service it actually is great because it automatically scales to the level of web traffic the application recieves. More than one user can interact with the app and it doesn't effect other concurrent users. For more information check out this resource: https://shiny.rstudio.com/deploy/

### Conclusion

If you want to practice R syntax for things other than statistics, or have a friend who has a small business this template code from R and this fake app can be really useful. It is simple, but for paper only businesses having web access to their information in a private and secure way could make their lives so much easier. 

