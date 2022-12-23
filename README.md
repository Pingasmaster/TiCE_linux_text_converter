# TiCE_linux_text_converter
Convert text file to a readable file in a Ti 83 CE note app. Under linux.

## Why?

Because I don't use windows but still want to use the note app in my calculator.

Work with all the TI CE calculators:
* Ti 83 CE
* Ti 83 CE Python edition
* Ti 84 CE
* Ti 84+ CE 

## How?

It uses the program `convtext.exe` found on the internet. It was initially compiled for windows, but it runs through wine.

Prerequisites:
* Install note program
* Install wine

### Install note program

Download and install [Ti CE program](https://education.ti.com/en/products/computer-software/ti-connect-ce-sw) (only on windows), connect and turn on calculator. Make sure it has enough battery.
If calulator is in exam mode, right click on it and select `Quit exam mode...`.
Then select the two files named `NOTES.8xp` and `TFILES.8xp` (the note program) in the file explorer and drag them in your calculator in the Ti CE app. A window will appear, mmake sure to select `ARCHIVE` on the dropdown menu not the default `RAM` (redefining the mode for storing these programs will allow you to still find them where you put them after a reboot). Click `OK`. Wait till the end (usually very fast, you don't even see it).

### Wine install

#### Ubuntu:

```
sudo apt install -y wine64
```

#### Arch linux:

```
sudo pacman -Syu wine64 --needed
```

* Clone repo & cd

```
# Clone repo.
git clone https://github.com/Pingasmaster/TiCE_linux_text_converter/
# Go to directory
cd TiCE_linux_text_converter
```

* Run the little script

This script will convert a `.txt` file to a readable file in the note app (`.8xv`).
The file MUST be a .txt file.
It just asks the file name (including .txt extension) and call the program convtext.exe
No need to sudo, it work with basic permissions. It will not ask for root permissions.

```
# Run the bash script
./convert.sh
```

Once you have the `.8xv` file, just open the Ti CE Connect app on a windows computer, connect and turn on the calculator, select the `.8xv` file in your file explorer, make sure the calculator is not in exam mode (right click on the calculator, `Quit exam mode...` , drag the `.8xv` on the calculator in the Ti software. Make sure to select `ARCHIVE` and not `RAM`. Click `OK`.

To view the note, disconnect your calculator from your computer, turn it on (press `on`),  open the program menu (click `prgm`, and press `enter` to select `Ti-BASIC` if you have a python edition), select the note program (press `enter` to select it, then `enter` once again to execute it), navigate with the arrow to select the note you want, open the notee (press `enter`). Notes can be modified (open the note, then modify it), new notes can be created (on the note menu press `f(x)`), existing notes can be suppressed (open the note menu and press `zoom`, then select your answer with the arrows and press `enter`) or renamed (open the note menu and press `window`). To exit the program, press `graph`.

Sometimes, when exiting the program, weird artefacts are present, just click the press arrow and press `annul` to make them disappear, it is nothing harmfull just a ram problem.

## Run manually & understand how it works

I didn't made the convtext.exe program, so the code is not open source, and I do not know what is inside it, but here is a virustotal scan [link](https://www.virustotal.com/gui/file/2041cfbd9e8340eee89112bb7cd0a50ee228c7f9dd65d1eea8ab10b907e8658e).
I also didn't made the two NOTES.8xp and TFILERS.8xp programs, but I tested them and I they do not harm your calculator.

`converter.sh` just asks for the name and extension of the file, it MUST be a `.txt` file. It then calls `convtext.exe` who is in charge of the complex process of converting the file to a readable format for Ti calculators note app.

## Credits

Tutorial for note app and note app author:
https://www.youtube.com/watch?v=3hCD1Pxdy3I

Ti website (for making calculators):
https://www.ti.com/
