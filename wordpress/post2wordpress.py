#!/usr/bin/env python3

import os
import sys
from wordpress_xmlrpc import Client, WordPressPost
from wordpress_xmlrpc.methods import posts

# gather post contents from file and title from CLI
postFile = str(sys.argv[1])
postTitle = str(sys.argv[2])

# read file into string
with open(postFile,'rt') as pf:
	content = pf.read()

# connect to WP Site
wordpressSite = Client('http://localhost:8081/xmlrpc.php', '4ctest', '4ctest')

# Generate Post
newPost = WordPressPost()
newPost.title = postTitle
newPost.content = content

newPost.id = wordpressSite.call(posts.NewPost(newPost))

# Publish
newPost.post_status = 'publish'
wordpressSite.call(posts.EditPost(newPost.id, newPost))





