[**CodeToVideo**][1] is a unique ***LONG-TERM*** source code archival strategy.

It *easily* and **beautifully** transmogrifies your source code to the widest-supported
audio/video media files capable of being shared, stored and viewed in ways source code has never been shared before! 

This project built itself:

<!-- TOC -->

1. [Supported languages](#supported-languages)
2. [Why?](#why)
   1. [New Source Code Mediums](#new-mediums)
   2. [Enhance your code craftsmanship](#enhance)
   3. [Secure Your Code for Posterity](#secure)
4. [Usage](#usage)
   1. [No Arguments](#no-args)
   2. [Seconds Per Page](#seconds-per-page)
   3. [Adding Music](#adding-music)
5. [Requirements](#requirements)
6. [Installation](#installation)
   1. [Building Modern scrot](#building-scrot)
7. [License](#license)   
8. [About The Author](#author)

<!-- /TOC -->


<a id="markdown-supported-languages" name="supported-languages"></a>
## Supported Languages

Virtually everything!!! See [docs/supported-languages.md] for specifics.

Certainly all of the big languages: JavaScript, C, C++, C#, PHP, Python, Ruby, JSON, XML, and many, many more! 

<a id="markdown-why" name="why"></a>
## Why??

<a id="markdown-new-mediums" name="new-mediums"></a>
### New Source Code Mediums

It allows source code to be quickly, concisely and verifiably transmitted across
space-time via mediums that heretofore were unavailable for the transmission of
bulk text files, particularly source-code, in a readily readable manner.

Namely: YouTube videos, Twitter tweets, Facebook Posts, social media IMs,
        even Google Photos.

But also: BluRay players (almost all support h.264 playback), many modern DVD players,
          Google ChromeCast, virtually all NASes.

<a id="markdown-enhance" name="enhance"></a>
### Enhance your code craftsmanship

Unlike virtually all other professional classes, professional code craftsmen rarely, if ever, rewatch their own works.

While professional sports players, lawyers, and many more have realized for decades the power of JUST WATCHING
your past actions, many coders have never even thought to do this, much less done it.

By quicly flitting in front of your eyes at 2.5 seconds per page of code, your subconscious **will** pick up on
coding practices. If you watch the **CodeToVideos** of software afficiondos substantially more advanced than
yourself, you will undoubtedly grow in proficiency yourself, as this occurs across all creative disciplines.

<a id="markdown-secure" name="secure"></a>
### Secure Your Code for Posterity
          
More importantly for long-term survivability of source code:
 - Greater fidelity (due to both h.264 and BluRay error-correcting technologies) in case of bitrot over text.
 - Even fuzzy text in images can be readable by future entities whereas bitrotted text files could not.
 - **Your code can be transferred to 35mm film reels and be viewable without any technological society at all.**
 
Because I am a *firm* believer in reincarnation, this project has a timeline horizon of 1,250 years.

That means that I am targeting for my 21st Century source code written in the 2020s to be readable by both
human and non-human intelligences as far out as the Year 3150 **minimally**.

While we have no idea what compression algorithms of today will still be accessible, or even if classical
computers based on silicon-transitors will still even exist, much less the concept of TEXTUAL DOCUMENTS  
(due to global societal trends of less and less literacy in favor of audio/video):

The idea is that even in the FAR FUTURE, even with alien intelligences without so much the concept of a 
"text file", audio/video representations of source code should be both more future proof and easily accessed
than expecting an entity wholly unfamiliar with the 21st Century of Earth to figure out zip files, or even
ASCII, much less UTF-8 and xv.

Also, it is far more likely that h.264 and future world-web video encodings will persist far far longer
than the written word.

When stored on BluRay or 35mm film reels in fire-proof, water-proof pouches in side safes, it should be
virtually indestructable.

Burned BluRays stored outside of the Sun in individual cases, with 33% parity PAR2 files, should last
**in [excess of 50-200 years][2]** (see [docs/bluray-longevity.png]. 35mm film stored properly should 
last eons and would not require any existing technological edifice to view (just Sunlight/torchlight). 

We currently recommend storing each [**CodeToVideo**][1] as five separate copies with 33% parity each
on each 25 GB one-layer BluRay disc, with each disc duplicated 2-3x and stored in separate geographical
areas in secure locations (ideally waterpoof/fireproof pouches, individually to avoid bitrot). Because
BluRay bitrot typically occurs 1% every 5 years on inferior medium and 0.5% every 10 on superior media,
this should mean an average recoverability rate of 99.9% after 500 years.

Hopefully, your descendants will periodically transfer these archives to new media every 50-100 years.

Hopefully, there are digital archivists who like to do it this for fun, like me ;-) at least every 20.

[1]: https://github.com/hopeseekr/CodeToVideo
[2]: https://www.reddit.com/r/DataHoarder/comments/6skqz0/anyone_use_a_bluray_write_to_back_up_their_data/dldlry6/

<a id="markdown-usage" name="usage"></a>
## Usage

<a id="markdown-no-args" name="no-args"></a>
### No Arguments

   code-to-video /path/to/MyProject
       
This will create a **~/Videos/CodeToVideo/MyProject.mp4** with the following attributes:

 * 25 fps h264 at -crf 16 [near-ideal quality].
 * 1 source code snashot every 2.5 seconds.
 * No audio.
 * ~3 MB of video for every 500 kb of source code.

<a id="markdown-seconds-per-page" name="seconds-per-page"></a>
### Seconds Per Page

The default seconds per page is 2.5 seconds. You cna change this by adding a second decimal parameter:

   # 5 seconds per page
   code-to-video /path/to/MyProject 5

You can show multiple pages per second by using a fraction of 1 fps:

   # 2 pages per second
   code-to-video /path/to/MyProject 0.5
   
   # 3 pages per second
   code-to-video /path/to/MyProject 0.3333

If you are only interested in future OCR recovery of the source code, you can completely disable
any pause and show one page per video frame by passing in 0:

   code-to-video /path/to/MyProject 0

This greatly reduces the size of the videos, but removes most practicality.

This is the ideal scenario for storing large amounts of source code or other text data on 35mm film reels
and is what the GitHub Arctic Code Vault project does for its most important source code documents.

<a id="markdown-adding-music" name="adding-music"></a>
### Adding Music

You can easily add an audio file to the video by passing it in as an optional third parameter.

    code-to-video /path/to/MyProject 2.5 "/path/to/music.file"

The audio format will be reencoded to 128 kbps 48000 Hz AAC for maximum future-proofing.

<a id="markdown-requirements" name="requirements"></a>
## Requirements

**CodeToVideo** requires the following:

 * Modern [**scrot**](https://github.com/resurrecting-open-source-projects/scrot) 
 * [**alecthomas/chroma**](https://github.com/alecthomas/chroma)
 * ffmpeg
 * GNU Bash
 * GNU nl
 * GNU split
 * GNU tail
 * A color TTY terminal that supports ANSI colors

<a id="markdown-installation" name="installation"></a>
## Installation

    sudo cp bin/code-to-video
    sudo mkdir /usr/share/codetovideo
    sudo cp watermark.png /usr/share/codetovideo

<a id="markdown-building-scrot" name="building-scrot"></a>
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

See [docs/building.md] for further instructions.

<a id="markdown-license" name="license"></a>
## License

This project is licensed under the [Creative Commons Attribution International License v4.0](LICENSE.md).

![CC.by License Summary](https://user-images.githubusercontent.com/1125541/93617603-cd6de580-f99b-11ea-9da4-f79c168c97df.png)

<a id="markdown-author" name="author"></a>
## About The Author

[Theodore R. Smith](https://www.phpexperts.pro/]) <theodore@phpexperts.pro>  
GPG Fingerprint: 4BF8 2613 1C34 87AC D28F  2AD8 EB24 A91D D612 5690  
CEO: PHP Experts, Inc.

Reachable on [Twitter](https://www.twitter.com/hopeseekr).
