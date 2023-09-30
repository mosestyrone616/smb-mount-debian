# smb-mount-debian
This code was created on behalf of Lead Service Six and is free to distribute over the internet.

This is only for Debian-based systems that are capable of installing the cifs-utils package.
I do not recommend trying to run on Arch unless you know how to do very basic bash and understand what you need to change to make it work.

This program is a very simple program that mounts SMB (Samba) drives for you on Debian linux. The drives will be mounted in a folder under your user's home directory.

IMPORTANT: In order to write and modify files on the remote share, you MUST run your file explorer/editing program as root or you will not be able to modify files, and will be in read-only mode. Assuming your SMB server is properly configured to allow modifcation of its files, this should work flawlessly.

You can bind this program to a desktop launcher or run it manually from the terminal. Enjoy!
