
{{{  GIT

## setup
## creating a repository
## tracking change
## configure name, email, credentials
## commit messages


## setup

`git config --global user.name "name"`
`git config --global user.email "email"`

`git config --global user.helper cache`
`git config --global user.helper store`


## creating a repository

`git init`                  turn a folder into a git "repo"

`git remote add origin remote.git`
add remote.git as a remote repository with the alias "origin"

`git clone 'remote_repo'`
creates a copy of remote_repo locally, sets upstream to remote_repo

`git add filename`

`git commit -m message`     
commits staged files with message


## tracking change
`git status`


`git log`
shows commit history

`git diff 'file_name`
show differences between saved/unsaved versions of 'file_name'

`git push -u origin main`
tells git to track remote repository "origin/main" 
and use it for push,pull

`git diff origin/main main`
compare a modified local repo to the original remote

`git fetch`
downloads from a remote, but doesnt commit those changes

`git pull --ff-only`
git fetch and git "fast-forward merge" in one command

## commit messages

Good

    feat: improve performance with lazy load implementation for images
    chore: update npm dependency to latest version
    Fix bug preventing users from submitting the subscribe form
    Update incorrect client phone number within footer body per client request

Bad

    fixed bug on landing page
    Changed style
    oops
    I think I fixed it this time?
    empty commit messages


}}}
{{{  VIM

## search and replace

    :%s/foo/bar/g

## search for word under cursor

    * in normal mode

## word wrap

    gqj

## toggle fold

    CTRL-F

## look up documentation

    K in normal mode

## marks

    mj to create a mark
    J to cycle between marks

}}}
{{{  LUNARVIM

shortcut to edit config.lua
<leader> Lc

shortcut to search for text
<leader> st
}}}
{{{  APT

apt-get update
  gets updated package list for distro or 3rd party repos
  DOES NOT download or install


apt-get upgrade

}}}
{{{  MARKDOWN

### this is a header of size 3
**bold** and _italics_ are easy


paragraphs are created with 2  
spaces at the end  
of each line  

[inline links are easy](www.google.com)
[reference link][search]
[search]: www.google.com

![cat][URL_to_image.png]

> "block quotes are easy"
>
>   the easiest thing ever

* eggs
* milk
* pastry dough
 * flour
 * water

1. break the egg
2. pour a cup of milk
3. stir vigorously



}}}
{{{  PRY

```ruby
require 'pry'

binding.pry
```

binding.pry is a breakpoint
}}}
{{{  ZOOM
# installing zoom

(select mint 64-bit)[https://zoom.us/download?os=linux]
sudo apt install ./zoom_amd64.deb

# launching zoom

launch with dmenu

# testing your video

profile_picture.settings.video_tab

# exit
profile_picture.exit

}}}
{{{  PEDAC

PEDAC Template
==============

(Understand the) Problem
------------------------

Essential to understanding how to solve a problem. In order to be able to solve
a problem, you have to at least understand what the problem is and what it is
asking. Take some time to allow the problem to load into your brain.

**Don't rush this.**

First, identify the inputs and the outputs of the problem.

-  Inputs:
-  Output:

---

Check for Problem Domain: the Problem Domain is the area of expertise or
application that needs to be examined to solve a problem. Basically any
domain-specific terms or concepts that may be applicable.

It limits the scope of the problem.

For example, if the problem asks you to add up a set of multiples, you need to
make sure you know what multiples are.

Could one word have multiple meanings? etc

**Problem Domain:**

---

Check for Implicit Requirements. Are there requirements that are not explicitly
stated?

**Implicit Requirements:**

---

Some questions to ask the interviewer (or perhaps yourself) to better understand
the problem.

**Clarifying Questions:**

1.
2.
3.

---

A mental model is an explanation of someone's thought process about how
something works in the real world. Think of it as a summary of the "entire
problem" written in your own words.

It is your perspective of *what* the problem requires--not *how*. How is
implemented in the Algorithm section.

As a rule of thumb, you can keep the number of mental models to one if it fully,
and accurately, captures the requirements of the problem.

**Mental Model:**

---

Examples / Test Cases / Edge Cases
----------------------------------

The objective is to come up with examples that validate your understanding of
the problem, and confirm that you are working in the right direction. Typically
the confirmation will come from documentation of a process, or a person.

**Examples:**

-  Example 1
  -  Inputs:
  -  Output:
-  Example 2
  -  Inputs:
  -  Output:

---

**Test Cases:**

*Note: Rules for a specific problem are oftentimes an excellent place to find
test cases. If you're working with collections, it's a good idea to find test
cases that deal with zero, one or multiple elements in the collection. Try to
provide test cases that handle any edge cases you can find.*

Find test cases with the following conditions:

-  Zero (`0`)
-  Emptiness (`nil`, `null`, `""`, `[]`, `{}`)
-  Boundary conditions (where conditions change)
-  Repetition / duplication
-  Upper case / lower case
-  Data types

As well as the following failurs and bad inputs:

-  Raise exceptions / report errors
-  Special values (`nil`, `0`, `""`, surrogate pairs, char. encoding, special
   char.)

_Your Test Cases:_

-  Example 3
  -  Inputs:
  -  Output:

---

**Edge Cases:**

Edge cases are situations that occur along the "edge" of a specific problem.

For example: problems that involve iterating over numbers have edge cases that
are at both ends of the range. Typically can involve working with negative
numbers, 0, or extremely high values.

_Your Edge Cases:_

-  Example 4
  -  Inputs:
  -  Output:

---

Data Structure
--------------

Determine what data structures you will work with to convert the input to the
desired output.

The chief considerations here are your intended programming language and your
mental model.

Are you going to use arrays, hashes, etc? Your data structure will influence
your program.

---

Algorithm
---------

Start with your mental model if you have one. While you're still learning to
solve problems, it would be a good idea to consistently create mental models to
assist you.

Otherwise you can start with your Data Structure, and think about how you'd
build and manipulate it to get to the output. For example, if you're going to
use an array maybe you would want to focus on constructing or iterating over a
collection.

The chief objective here is to determine a series of instructions that will
transform the input into the desired output.

-  The challenge is to get to the right amount of detail (think about the steps
   to creating a peanut butter and jelly sandwich.)
-  You want something that you can readily convert to code without actually
   writing code.
-  Before implementing the algorithm, you should test it manually with test
   cases.

Code
----

=end
}}}
{{{  YT-DLP


-x          convert video to audio-only files (requires ffmpege and ffprobe)
yt-dlp -x https://youtu.be/limlqTcg0R4



}}}
{{{  LINUX

which version of linux kernel am I running?

    uname -a

which version of linux distro am I running?

    lsb_release -r


}}}
{{{  RUBY


{{{ String#capitalize
------------------------------------------------------------------------
  capitalize(*options) -> string
------------------------------------------------------------------------

Returns a string containing the characters in self; the first character
is upcased; the remaining characters are downcased:

  s = 'hello World!' # => "hello World!"
  s.capitalize       # => "Hello world!"

The casing may be affected by the given options; see {Case
Mapping}[rdoc-ref:case_mapping.rdoc].

Related: String#capitalize!.

}}}

{{{  creating repeating characters of arbitrary size
```ruby
" " * 10
```
}}}




}}}
{{{  tool X


-x          convert video to audio-only files (requires ffmpege and ffprobe)
yt-dlp -x https://youtu.be/limlqTcg0R4



}}}

