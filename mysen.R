#install.packages('devtools')
#require('devtools')
#install_github('mananshah99/sentR')
#require('sentR')


positive <- c('happy', 'well-off', 'good', 'happiness')
negative <- c('sad', 'bad', 'miserable', 'terrible')

# Words to test sentiment
test <- c('I could not actively participate because i did not know any language that well and could not learn much because i was too interested and involved in WebDev..the seniors were always there for help though..thank you', 'The questions and the material given to us were very good. Looking forward to learn more advanced concepts','It would help if all the tasks were given out at once, so that we could do them at our own pace. The content was really well written, especially the bit manipulation part',"Just one thing, the answer to the Task sets were not posted on the group but I'm thinking they were preparing for the WCS. Other than that, great experience" )
          

# 1. Simple Summation
out <- classify.aggregate(test, positive, negative)
out

# 2. Naive Bayes
out <- classify.naivebayes(test)
out


# Words to test sentiment
test1 <- c("A lot was left on us to learn it by ourselves. No doubt I took it very positively but then the dissatisfying point of teaching. A little more 'IECSE created' resources should have been provided rather than links to many blogs. Overall, I made good use of time. The seniors responded to the silliest doubts too. I actually learned a few things that I was doing wrong till now. I tried to learn AppDev a lot of times but for the first time I understood what I did. Also, I knew nothing about git and now I love it. ", "It was a good experience and it gave me an objective to start working","The tutorials for task 2 and 3 we were given were really boring and.... Heavy. Like, made me yawn and really didnt inspire any urgency to complete the task asap.", "I really enjoyed the tasks and never expected to learn so much in such a short amount of time..a big thank you to all the seniors who helped me out in this project..really looking forward to interact with more ManComm and WC members!Can't wait for more activities and events! ", " Would have preferred a bit more of reading material before the tasks", "i m very satisfied", "Thanks for helping out whenever I faced difficulties")

# 1. Simple Summation
out1 <- classify.aggregate(test1, positive, negative)
out1

# 2. Naive Bayes
out1 <- classify.naivebayes(test1)
out1
 