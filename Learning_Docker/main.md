

<h1>Today I decided to fill in learning Docker in my free time</h1>

Whatever I will be documenting here will be my thoughts, struggles and fixes of various problems that I will encounter while going through : <br> </br>
https://www.geeksforgeeks.org/30-days-of-docker/

# 30 Days of Docker: A Complete Guide For Beginners

# DAY 1

Topics Covered:

    Introduction to Docker
    Features of Docker
    Docker Architecture
    Docker Installation on Various Platforms

Yep starting of with shortcut `F11` for better reading and more convinience, also [ ! ] Reminder for myself to drag&drop the Topics covered each thay,just because.. I feel like it..


First simple example :
You can find inside the current folder.
Had to tweak a bit the commands since on Windows, faced simple error since my file was named docker rather than Dockerfile

`docker build -t python-test`

So `-t` option lets me define the name of my image

`docker run python-test`

I can see the output of the print function from python

Next step is pushing my image into `Docker Hub` which is cloud based repository for storing and pulling images as from what I have read, it is open source and quite used by DevOps guys.
But before going there and making registration. I will want to stop the currect container (just in case if work pops up)

`docker ps`
This will show me the running containers, I am interested in <b>Container ID & Name</b>

Strange after running the command I wasn't able to find any running containers I even decided to open with privileged access CMD to check there, yet nothing.
If something did poped up, I would have used this command

`docker stop <container-id or container-name>
`