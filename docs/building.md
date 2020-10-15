## Building

### Building Modern scrot

On Arch Linux:

    sudo pacman -S scrot 

On Debian Linux:

    sudo apt install scrot

Everywhere else:

    git clone --depth=1 https://github.com/resurrecting-open-source-projects/scrot.git
    cd scrot
    ./autogen.sh
    ./configure --prefix=/usr
    make
    strip src/scrot
    sudo make install

### Building chroma

You need the alecthomas/chroma's CLI. Use the one in bin/ or

    go get -u github.com/alecthomas/chroma/cmd/chroma
    sudo mv ~/go/bin/chroma /usr/bin

### Building code-to-video

    ./build.sh
