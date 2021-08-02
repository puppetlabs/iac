---
layout: page
title: Week 7
author: Disha-maker
categories:
  - team
  - basics
tags:
  - week 7
---

Hi, everyone

How are you all doing this week?

Well, this week has been the busiest so far in my placement journey with Puppet in their Belfast office.

I am sure you must be wondering what has kept me so busy?

So without wasting time, let's dig into the work I had done this week and also last week, shall we?

The week 7 started off with one to one with Norman on seeing how I got in the previous week 6 work. We have now started to use Lattice to set up agenda, action points for our 1:1s for every Monday :)

Check out lattice [here](https://lattice.com/).
A very good people management platform for companies 1:1 meetings.

I was told by Norman in the 1:1 sync up session that I will have to give a litmus demo next week.
I was also told that I will be given some pull requests (PR's) to work on once a 1:1 meeting is done with my mentor Daiana.
He also told me that when I am debugging code I should use a script command as it will record what commands I have been typing during a session of the terminal.

Now you must be wondering what a script command is in Unix/Linux commands...
Use this [link](https://www.tutorialspoint.com/unix_commands/script.htm) to find out more!

I was also told to start organising my 1:1 meetings with mentors and other team members to continue training as well as ask questions to mentors about anything.
During the 1:1 meeting with Norman on Monday 12th October 2020, I shared my September's monthly log and got that approved from him by using the Doc Sign App which was set up during the 1:1 session with him.
A quick session with Ciaran was done to get the pry set up done when practicing how to provision a machine and running tests for the litmus demo taking place next Monday 19th October 2020.

During the practice I noticed that some machines were failing to provision due to the incorrect token specified in the .fog file - this was why the token was failing to provision a machine with the abs. This issue was resolved with the help from Sheena and Ciaran, so many thanks to both of them for giving me their precious time.

On Tuesday 13th October, after finishing the session with Sheena and Ciaran, I worked with Daiana on getting some tips on how to prepare for my Litmus demo which was coming up in the following week. Now I am sure you must be wondering what is Litmus? What does it do etc etc?

Why not check this [link out](https://puppet.com/blog/litmus-new-module-acceptance-testing-tool/) to find out more information about Litmus.

The second part of the session with Daiana was on testing a pull request (pr) from the community, my first ticket was assigned to me (changing author name of supported modules to puppetlabs). A to-do-list was given by Daiana on what I learnt in part 2 of the meeting. Check out what I was working on in the to do list given below:-

Part 1:
1. Choose a PR from PR reviews report by accessing the Community Management Tool.
2. Clone the repo of the module locally using git clone command with the https address for example <git clone https address> taken from the repository by clicking on the green 'Code' button to copy the address into the terminal.
3. Change the branch in order to test the changes from the PR, using git checkout with the branch name, to go where the changes can be accessed
4. provision (choose what you want from provision list)
5. see if inventory file was created
6. cat inventory file
7. install agent using bundle exec rake 'litmus:install_agent (by default it will install puppet6 agent as I haven't specified what agent I want installed, so it will pick the latest version of puppet agent)
8. install module using bundle exec rake 'litmus:install_module'
9. run tests using bundle exec rake 'litmus:acceptance:parallel'
10. tear down using bundle exec rake litmus:tear_down
<br></br>

Part 2:
1. Choose one vm and provision only that vm
2. install agent using bundle exec rake 'litmus:install_agent
3. install module using bundle exec rake 'litmus:install_module'
4. run tests using bundle exec rake 'litmus:acceptance:parallel'
5. tear down using bundle exec rake litmus:tear_down
<br></br>

Part 3:
1. Use target host to run a specific test
<br></br>

Part 4: on the same PR from previous points
1. provision with release checks 5 using bundle exec rake 'litmus:provision_list[release_checks_5]'
2. install puppet 5 agent using bundle exec rake 'litmus:install_agent[puppet5]'
3. install module using this command:- bundle exec rake 'litmus:install_module'
4. run tests using bundle exec rake 'litmus:acceptance:parallel'
5. tear down using bundle exec rake litmus:tear_down
<br></br>

She also suggested to keep a word document on all the necessary commands used on a day-to-day basis when doing work, She felt having that document really reduces the stress to search for commands within the MAC OS terminal when working on a ticket/issue. I still have to put together a document which will include all the necessary commands... stay tuned for it!

On the same day I did a sync up session with Ciaran where we set up an agenda for the demo, the pry testing environment was done, a link to the litmus testing tool was given to help with the steps of how to do the provisioning of a machine with litmus and to run acceptance tests on the provisioned machine. He also suggested to create a video on litmus demo and share it on the YouTube Demos page, but this didn't happened during the litmus demo because when I asked Norman, he was like the demo on Litmus is quite informal, you don't really need to prepare anything very formal such as a presentation or a video. It is all about testing your understanding on Litmus, what it is, how does it work and how you can run acceptance tests using this tool for a provisioned machine.

A link to the Puppet's PowerPoint Presentation was also sent by Daniel and David Swan but it wasn't used for creating a presentation on Litmus demo as the demo itself was quite informal, as said by Norman previously.

Now you must be thinking how did I found the litmus demo myself, well the answer is that I was fully prepared for it, did lots and lots of practice, I was asked lots of questions by Norman during the demo session and I learnt some new commands during the session like script command, history command etc...

There be more information hopefully shared by Norman on the script command in the coming weeks, so keep your eye out for useful links etc!

On Wednesday 14th October 2020, I continued to work on the to do list given by Daiana on Tuesday within the slack channel, I really enjoyed doing it as it helped me debug errors by myself so thank you to Daiana for always helping me out when needed!

Later on that morning, I also attended the EMEA Food/Chat Session where the following topics were covered by the team :-

- Git bisect and conquer
- Luchi - How to SSH into Windows?

After the EMEA Food and Chat Session, I attended a session with Daiana where I was told to do a review/merge once the rubucop bug failure was fixed. This was done successfully.
I attended the Show and Tell Session from 2pm to 3:30pm.

I also informed Norman about my GP appointment on Friday and shared my plans for the QUB Graduate Recruitment and Placement Fair which will take place on Thursday 22nd October 2020 from 2pm-6pm.
I am really looking forward to the event!

I emailed QUB Careers for a 1:1 appointment for next week, regarding my September monthly log approved by Norman earlier in the week.

On Thursday 15th October 2020 I started off my morning by setting up some 1:1 meetings on Lattice and scheduled training sessions with Michael on Windows Powershell and DSC Builder for next week.

After doing that, I attended a short demo on releasing the puppetlabs-firewall module, where Daiana showed me the process once again. Daiana did the release stage of the process while she gave me the responsibility of doing the tag process for that module and raise a pr for review before mergeback took place in the final stage.

Once this was done, Daiana and I attended a session delivered by David Swan on Networking Modules. I really enjoyed that knowledge sharing session and plan to get some hands-on experience when I am free as I would love to explore what it will include, just out of curiosity!

I shared the training and show and tell session recordings on the shared Google Drive Space with the IAC Team.

During the second part of releasing a module with Daiana, I become familiar with some new git commands like 'git branch -a', 'git diff' and 'git log' to name a few!

I attended the stand-up session at 2pm that day as normal. This was where Norman strongly suggested that I should step back from the training and get real work done by looking at the Community PR's. Next month, It could be possible that I will be giving another demo to Norman on the Community Management Tool, so look out for the details in the upcoming blog updates!!

Once the standup was done, I did a sync up with Paula and Daiana on the Litmus demo, this was a very useful session prior to Monday 19th October 2020, as I was given the opportunity to show my mentors what I know and don't know, Paula and Daiana were a great help as always, so thank you very much, it made me quite confident for the upcoming demo on Monday.

I also attended the Big Picture Session and contacted Beth Glenfield about Events on the EEECS Student Sustainability Team Projects, the purpose of contacting her was to see if she would be interested to do a session on Gender and Equality, she volunteered to do it.

Finally its Friday!

Yayyyyyy!!!!!!

The morning started off by sharing some more recordings from the demos on the shared Google Drive space for the IAC Team.

I couldn't write the blog update that week as I wasn't well that day, so sorry for the delay, but I catched up on my pending blog updates now :)

I attended the Friday Wrap Up as usual, had a 1:1 with Caoimhe as I had some questions, don't remember exactly what they were, sorry again :)

I was invited to a zoom call by Ciaran and David Schmitt where they were trying to debug issues on Crontab and its configuration set up.

Thats all for now for the week 7 update, happy reading :)
