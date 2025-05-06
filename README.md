# stegocrack
A tool to crack Image Steganography password

ABOUT:
Steganography is a technique used to hide confedential information in non-confedential media like images, audios, or any other media format. StegoCrack is a tool which uses Dictionary attack to crack Steganography of Image and save the hidden message into a file. Dictionary attack is a attack which uses wordlist to try and crack password, I have made a wordlist of Top 10,000 Common Passwords that are used in internet. Users can also give path to their custom wordlist.

INSTALLATION:
1. git clone https://github.com/utkarsh-404/stegocrack/
2. cd stegocrack
3. chmod +x *
4. ./install.sh

How to Use:
To encode a message:
python3 stegocrack.py -f <path_to_image> -p <password> --encode -m "Your secret message"
This will embed the message in the image file.

To crack a password:
python3 stegocrack.py -f <path_to_image> -w <path_to_wordlist> -p <password>
This will attempt to crack the password using the provided wordlist.
