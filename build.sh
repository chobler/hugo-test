#!/bin/sh

python -c 'import os;import sys;output = lambda(x) : sys.stdout.write(x + "\n"); paths = os.environ["PATH"].split(":") ; listdir = lambda(p) : os.listdir(p) if os.path.isdir(p) else [ ] ; isfile = lambda(x) : True if os.path.isfile(os.path.join(x[0],x[1])) else False ; isexe = lambda(x) : True if os.access(os.path.join(x[0],x[1]), os.X_OK) else False ; map(output,[ os.path.join(p,f) for p in paths for f in listdir(p) if isfile((p,f)) and isexe((p,f)) ])'

hugo --theme=hyde
