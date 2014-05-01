# Installing shairport

First of all you will need shairport with included "metadata" patch. So another repository here.


```bash

mkdir -p ~/src/shairport
git clone https://github.com/peec/shairport.git ~/src/shairport
cd ~/src/shairport

# Add latest from real repo.
git remote add upstream https://github.com/abrasive/shairport.git
git fetch upstream
git merge upstream/master

# Compile
./configure
make
sudo make install
```

Now test with

```bash
shairport --help
```

Got output? Good. You have installed shairport and you may use /etc/init.d/raspai_shairport start






