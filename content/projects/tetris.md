---
title: "Tetris for the TI84 Plus CE"
date: 2019-05-30
featured_image: "/assets/tetris.jpg"
---
A port of tetris for my graphing calculator using the [CE-Programming toolchain](https://github.com/CE-Programming/toolchain)

<video controls style="width:100%;">
    <source src="/assets/tetris.mp4" type="video/mp4">
</video>

This project was programed entirely in an old version of C. This was my first project using C, and it lacks many features I take for granted in other languages. I also had to learn how to use makefiles and the toolchain's build system. All of the images had to be converted into compressed C code before they could be used.

The game runs on the [Zilog eZ80](https://en.wikipedia.org/wiki/Zilog_eZ80), an 8-bit microprocessor running at 48MHz. I tried to keep the code as fast as possible while keeping it readable.

The source code for this game is available on [my GitHub](https://github.com/bmxguy100/tetris).
