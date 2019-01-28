---
title: VM's for TAG
---

> tl;dr: [google drive link][1] for the VMs. You only need to download one of
these. Download VirtualBox or vmware, then select `File->Import` or
`File->Import appliance`, and select the ova file from the link of your choice.
The default password is `tagiscool`, though I **strongly** suggest changing the
password to something else once you download it.

## Introduction

Assembly is a very OS/platform-dependent language.

What that means is if I have a Windows laptop, and you have a Mac computer, the
way we write assembly greatly differs between the two platforms (even though
both computers operate as a x86 architecture). 

As such, to make it easier for everyone follow along and try the code (and not
having to worry about it being wrong), I have set up a three different VMs,
which are ALL linux based, more specifically Ubuntu-based: Ubuntu, Linux Mint,
and Elementary OS. 

## Breakdown of Distros
These three separate distros all have nasm/nasmx installed and have SASM (which
is a x86 assembly IDE) installed! 

The difference, really, is in the aesthetics and in the look-and-feel.
Elementary OS is built to look more like a macOS computer and Linux Mint is
built to look more like Windows. Because they are all linux-based, you can run
similar commands, and write similar assembly programs, and they will build on
those. You should also be able to fully follow what we are doing without
modifying anything. Screenshots below:

![Ubuntu screenshot][2] ![Linux mint screenshot][3] ![Elementary OS
screenshot][4]

To install, follow the [google drive][1] link, and you will get three ova
files in a folder. Each of these ova's correspond to each of the above
screenshots. You only need to choose one of these. Once you choose your pick,
you will need to download VirtualBox or VMware to run this. In VMware you can
select `File->Import` to import ova files, and in VirtualBox, you select
`File->Import appliance` to do so.

Each of these has a default username `ubuntu` and default password `tagiscool`
(don't tell anybody about this). I **strongly** suggest changing this password
right away!

## Manual Installation
If you somehow can't run a VM, or if you just simply *hate* Ubuntu, you can also
just manually install all these things. This the link to [my build script][5]
used to build the VMs (don't guarentee that that will work on all machines), or
you can follow these [install instructions][6] as well. 

[1]: https://drive.google.com/drive/folders/1icTeQHf5NU_lAoy8lLhL_D4wBNikoUYy?usp=sharing
[2]: /files/vm/ubuntu.png
[3]: /files/vm/mint.png
[4]: /files/vm/elementary.png
[5]: https://gist.github.com/theKidOfArcrania/c1d553ed9c76d3815c22620327e2b953
[6]: https://docs.google.com/document/d/1-c-XLwcS8MfXIfl00WBD2_rvStX3vgBn9yO88h0om4c/edit?usp=sharing
