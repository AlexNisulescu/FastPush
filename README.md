# Bash script for fast pushing to git repo

## Table of contents
  * [Index](#index)
  * [Introduction](#introduction)
  * [Requirements](#requirements)
  * [How to use it](#how-to-use-it)
  * [Contributors](#contributors)


## Introduction

This script was created from the need to simplify the way I push to my Git Repos.
It was coded in a way that it will do all the work for you. You can run it with or without and arguments.

## Requirements

The only requirement is to have *git* installed.

## How to use it
Syntax:

    fp [-m|s|h]

The options are:

    m - The message that you want to commit
    s - Option present if you want to sign the commit message
    h - prints the help menu

Some examples of running it are:

    fp -m "Commit message" -s --> Will commit with the specified message and sign the commit
    fp                        --> Will commit with the default message and it will not sign the commit
    fp -s                     --> Will commit with the default message and it will sign the commit

I recommend adding this script to /usr/local/bin/ in order to be easily accessed form anywhere.

## Contributors
Creator: Alexandru Nișulescu

Contact: alex.nisulescu1998@gmail.com

Linkedin: https://www.linkedin.com/in/alex-nisulescu-45822b178/

You can [Buy me a coffee](https://www.buymeacoffee.com/alexnisuleXu)
