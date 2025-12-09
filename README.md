# Installing and Running xv6 on macOS (M chips)
Thanks to Cathy Fan for preparing the Makefile and instructions below:

## 1. Install Homebrew https://brew.sh/ (Skip if already installed)  

Check if installed:
```sh
brew --version
```

## 2. Install QEMU
QEMU is required to run xv6. Install it via Homebrew:
```sh
brew install qemu
```

If you get an error message regarding the macOS version, update Homebrew first and then reinstall QEMU:
```sh
brew update
```

## 3. Clone the Repository
Clone the following repository in your terminal:
```sh
git clone https://github.com/nalmadi/Xv6-Mac-M-Chips.git
```

## 4. Build and Run xv6
Navigate to the cloned repository in the terminal and execute the following commands one by one:
```sh
make
make qemu-nox
```

After running the last command, your terminal should display the Xv6 shell, confirming that it’s working.

## 5. Test xv6
Run the following command inside the xv6 shell to list files:
```sh
ls
```

## 6. Terminate xv6
To terminate xv6, first press:
**`Ctrl + A`**  
Then press **`X`**
