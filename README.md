# RANDOM INSULT SCRIPT

This is a bash script I wrote after I found the [Fuck Off As A Service](https://foaas.com/) API.

I found it kinda funny and thought it'd be even funnier if every time I opened my terminal it would write one of those phrases.

Add `~/script.sh` to your shell source file to have it run every time you open a new instance (adjust for the path to and the name of the script file)

You can also use the output text from this script in cowsay like I did:

```sh
~/script.sh | cowsay -f tux
```

Do mind that the script needs internet connection to run as it calls the FOAAS API with curl.

Feel free to use this any way you want, just try not to use the API in a malicious manner by hacking into someone's machine and sending them these texts without their permission :)
