# Static Site Generation (SSG) from Wordpress
Generate the Static Site assets from Wordpress and Simply Static.

# Installation
1. Setup local Wordpress environment. Use LocalWP, Docker or any other method.
2. Install Simply Static plugin
3. Setup Replacing URLs path in the Simply Static settings
4. Create the remote repository in github or any other provider
5. Setup deployment method to local directory and set the destination to the git repository folder

## Deployment
1. Generate new static site files with the Simply Static
2. Remove all static sites except .git, .gitignore, static-site and README.md
```
find . -mindepth 1 -maxdepth 1 \( ! -name .git -a ! -name .gitignore -a ! -name static-site -a ! -name README.md \) -exec rm -r {} \;\n
```
1. Move generated files to root
```
cp -r static-site/* . 
```
1. Git commit and push