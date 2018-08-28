# tag-utd.github.io

This is the website source for the TAG-UTD website. This uses hexo as our static
web generator. First you must clone the repository. Note that when cloning this
repository, it clones the `source` branch rather than the `master` branch by
default. This is okay because the master branch consists of the already
generated HTML code for github pages to work. After cloning, run the commands 
here:

```
git submodule init
git submodule update
npm install
```

The first two commands initializes submodules (the theme files are found as a 
separate repository), and then performs a checkout of those submodules. Then we
install all the node modules needed for hexo. This assumes that you have node-js
installed, and that it is on your path. You may also need to type in the
following to install hexo-cli on your path:

```
npm install -g hexo-cli
```

Depending on your configurations, the above statement may or may not need to run
as root, (i.e. if it doesn't work, run it as root).

## Adding a post
To add a post, invoke the command (replacing `<TITLE>` with your own title for
the posts. This can later be edited within the markdown file):
```
hexo new post <TITLE>
```

This will create a new markdown file where you can write your post in MarkDown,
which is much easier to write than the tedious HTML code. This markdown file
will be transformed into HTML by Hexo.

## Deploying your changes
To deploy your changes, 

After editing/adding new posts here, to deploy, invoke the following command:

```
hexo generate -d
```

This will generate the HTML files and then subsequently deploy those files
upstream to the github repository. Of course, if you don't have push access to
that repository, you can't deploy to it ;) 
