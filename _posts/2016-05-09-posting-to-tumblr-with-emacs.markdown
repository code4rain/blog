---
layout: post
title: "Posting to Tumblr With Emacs"
date: 2016-05-09T01:29:16+09:00
comments: true
---

# What is the tumblesocks

[tumblesocks](https://github.com/gcr/tumblesocks) is the one of emacs package. It helps to post tumblr via emacs editor. You can download it from melpa, gnu and github.

# How to setup

1. Download the package: simply use `M-x package-install tumblesocks`
2. Add the followings to your `.emcacs`:
<pre><code>(require 'tumblesocks)
(setq tumblesocks-blog "YourBlogName.tumblr.com")</code></pre>
3. Run `M-x tumblesocks-api-test-auth`
4. tumblesocks will open the browser and access to tumblr to get auth code.
5. Copy the auth code and paste it to emacs prompt

# How to post with tumblesocks

1. Make new post: `M-x tumblesocks-compose-new-post` or other commands.
2. Write the post - I recommnad *markdown* editor.
3. Finish writing: `M-x tumblesocks-compose-finish`
4. If you need to edit existing post, use `M-x tumblesocks-compose-edit-post` - **currently not working for me.**

# Some commands to make the post

* `tumblesocks-text-post-from-region`: Instantly create a post with the contents of region.
* `tumblesocks-text-post-from-buffer`: Instantly create a post from the entire buffer
* `tumblesocks-compose-new-from-region`: Open a buffer and start writing a new post. The contents of region will be copied over.
* `tumblesocks-compose-new-from-highlighted-region`: Open a buffer and start writing a new post. The contents of region will be syntax-highlighted and copied into the post as formatted HTML. This is super-useful for including source code into your tumbles.
* `tumblesocks-compose-insert-highlighted-region`: Insert the syntax-highlighted region at the end of post you're currently writing.
