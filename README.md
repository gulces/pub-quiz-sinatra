# Pub Quiz
Few things in life can beat good times with friends - especially if it involves sharing a pint over a pub quiz! During these ✨unprecedented times✨ it can be a challenge to get loved ones together. That's why I brought the pub quiz to you! Anytime, anywhere - just grab your favourite beverage and settle in for some trivia fun.

<br>

## The Task
Create a prototype system for an online pub quiz. Users will be presented with questions and submit their answers. The system will calculate their score and present it to the user upon completion.

<br>

## How To Run
<br>

As this project is in Ruby, you need to make sure you have Ruby installed. You can run the command below, which should return the version of Ruby if you have it installed.
```
ruby -v
```
<br>
<br>

Create a new folder to clone the project in. For instance:
```
mkdir ~/$GITHUB_USERNAME/pub-quiz-sinatra
cd ~/$GITHUB_USERNAME/pub-quiz-sinatra
```
<br>
<br>

Clone the project repository.
```
git clone git@github.com:gulces/pub-quiz-sinatra.git
```
<br>
<br>

Make sure you have the [bundler](https://bundler.io/) gem installed.
```
gem install bundler
```
<br>
<details>
  <summary>    💡 Troubleshooting: If you run into any problems at this step refer here for a possible solution.</summary>
<br>
  
  ## Gem Installation Error

If you encounter the following error:

```
Fetching bundler-2.2.28.gem
ERROR:  While executing gem ... (Gem::FilePermissionError)
    You don't have write permissions for the /Library/Ruby/Gems/2.6.0 directory.
```
<br>

This might indicate that you don't have the necessary permissions to write to the directory where RubyGems is trying to install the bundler gem. This is a common issue when installing gems on a system-wide Ruby installation, and it typically requires administrator or superuser privileges.
<br>
<br>

Instead of modifying system directories, consider using a gem environment to manage your Ruby dependencies.
<br>
<br>

#### 1. Create and navigate to a directory for your gem environment

```
mkdir ~/my_ruby_gems
cd ~/my_ruby_gems
```
<br>

#### 2. Set the GEM_HOME and GEM_PATH environment variables to point to your new gem environment:

```
export GEM_HOME=$PWD
export GEM_PATH=$PWD
```
<br>

#### 3. You can now install gems, and they will be installed in the isolated environment without interfering with your system-wide Ruby installation or other gem environments.

```
gem install bundler
```
<br>
Remember that these environment variables are only set for the current terminal session. If you close the terminal or open a new one, you'll need to set these variables again if you want to work in the same isolated gem environment.
<br>
<br>
    
---

</details>
<br>
<br>

To install the dependencies, run this command in the root directory of the project:
```
bundle install
```
<br>
<br>

To run the project, enter this line in the terminal:
```
ruby app.rb
```
<br>

You can open your browser and go to [localhost:4567](localhost:4567) to start the pub quiz!
<br>
<br>

## My Solution
For this challenge, I chose the coding language I am most proficient in, which is Ruby. I considered making a Ruby on Rails project, but realised that the architecture provided by Rails might be overly complicated for the scope of the challenge and therefore be a hindrance rather than assistance. I revisited other frameworks I've learned about and though I never executed it previously, chose to opt for Sinatra; a DSL for creating web applications in Ruby. As it preserved a MVC pattern, I was able to apply my previous knowledge in structuring the project and achieved a more streamlined process than would be feasible with RoR.

<br>

## Reflection
I really enjoyed this challenge as it tested my ability to think outside the box. Though I've not worked with neither NodeJS nor Vue before, my understanding is that I probably could have come up with a more elegant and straightforward solution with these technologies. So, I had to think of how to meet the challenge specs with my current skillset, and ended up executing a framework I only knew about in theory, making this a great learning experience.

<br>

As far as my code, I tried to keep it as DRY as possible but I see room for improvement, particularly in the front-end. I would have liked to build more dynamic components that did not require so many small tweaks and could have structured my CSS selectors better. It also would have been very nice to include JavaScript as it's a language I really enjoy working with, however I sadly did not have the time to delve into it.

<br>

A shortcoming I realised I had as a developer was how much I got used to boilerplate code from my bootcamp experience. Our coding challenges during the bootcamp always came with a basic skeleton readily set up for us that we could simply build upon without too much effort. Though this was very time efficient in the context, I realised I need to improve in setting up projects from scratch so I have more freedom in creating things that I conjured up in my mind!

<br>

## Thank You
I would like to take this opportunity to thank you for including me in this process. It has been a great pleasure attempting this challenge and I appreciate the learning experience. I'm looking forward to elaborating on my execution and getting your insight about what I can improve on. Many thanks!
