# instagrabber
I wrote a script in bash that gets users profile photos from Instagram

It is simple and conatins mainly string handeling of the url parsed by [curl](https://curl.se/). Instagram and Facebook in general made things tougher by adding url timestamps and encoding urls such that \u0026 is actually &.
To get away with that i replaced the \u0026 to & using [tr](https://www.computerhope.com/unix/utr.htm).

#Running the script

```console
foo@bar:~/instagrabber/$ chmod +x instagrabber.sh 
foo@bar:~/instagrabber/$ ./instagrabber.sh
Username : TheUsername
```
