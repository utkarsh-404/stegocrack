A simple tool for encoding and decoding messages in images using Least Significant Bit (LSB) Steganography. This version does not involve any password protection, but you can encode and decode messages using a custom method.

Table of Contents

1. Installation
2. Usage
 Encoding Mode
 Decoding Mode
3. Requirements
4. How It Works

Installation
Clone the repository:

git clone https://github.com/yourusername/stegocrack-lsb.git
cd stegocrack-lsb

Install necessary dependencies:

pip3 install -r requirements.txt

This will install any required Python libraries.

Usage

Encoding Mode
In encoding mode, you can hide a secret message inside an image using LSB steganography.

Syntax:

python3 src/stegocrack -f /path/to/img -m message --encode
-f <image_file>: Path to the image file (e.g., image.jpg)

-m <message>: The message you want to hide inside the image.

--encode: Flag to enable encoding mode.

-o <output_image>: (Optional) Path to the output encoded image.

Example:

python3 stegocrack.py -f /path/to/image.jpg -m "This is a secret message" --encode

This will embed the message "This is a secret message" into image.jpg and save it as encoded_image.png.

Decoding Mode
In decoding mode, you can extract a hidden message from an image.

Syntax:

python3 stegocrack.py -f <encoded_image> --decode

-f <encoded_image>: Path to the image containing the hidden message.

--decode: Flag to enable decoding mode.

Example:

python3 stegocrack.py -f /path/to/encoded_image.png --decode

This will extract and print the hidden message from the encoded image.

Requirements

Python 3.x: The script is compatible with Python 3.

Pillow (PIL): For image processing.

To install the dependencies, run:

pip3 install -r requirements.txt

How It Works

Encoding:

The script takes a message and converts it into binary format.

The binary message is hidden in the least significant bit (LSB) of each pixel in the image.

An EOF (End of File) marker is added to signal the end of the message.

Decoding:

The script extracts the least significant bit (LSB) from each pixel and reconstructs the binary message.

Once the EOF marker is found, the message is decoded back to its original form.

License
This project is licensed under the MIT License - see the LICENSE file for details.
