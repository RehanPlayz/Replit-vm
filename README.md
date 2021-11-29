# Replit-VM

Root-Instance inside of replit's docker container with Proot.

## ✨ Features

- Root well, inside the docker container.
- idk whatelse

## 💁‍♀️ How to use

- first download the sh file in this repo
- make a bash server in replit 
- upload the file and start the server
- it will install everything for u
- now everything is done!

## ✨ Preinstalled Packages

- Python & PIP

- NodeJS & NPM

- Java

- Go

- Htop

- Neofetch

- Nano

- Screen

- Gotty

- Ngrok

- Xmrig

- LolMiner

- PlayIT

- Lavalink

## ✨ Bugs and fixes

- Systemctl being annoying (fixed)

- Segmentation fault issue with LolMiner (not fixed)

## ✨ Addons

 __GoTTY:__
 
 _GoTTY is a simple GoLang based command line tool that enables you to share your terminal(TTY) as a web application. It turns command line tools into web applications._

- to run gotty just type `gotty -p <port> -w bash`in your terminal.

- now it will be up and running, and it will show the ip and port of it in the console. copy paste it in ur browser and there you have remote terminal with gotty

__Xmrig:__
 
 _Xmrig is a CPU crypto mining software which is easy to manage_

- to run Xmrig just type `xmrig -o rx.unmineable.com:3333 -a rx -k -u <coin_here>:<Wallet_address_here>.<worker_name_here> -p x` ie: `xmrig -o rx.unmineable.com:3333 -a rx -k -u SHIB:0xDEcDA3d4bfA4E614A383c17F4E01DD8E0DA9abFE.my_cpu_miner -p x`  in your terminal and continue the steps. if you have any doubts [[Read this docs!]](https://xmrig.com/docs/miner)


__LolMiner:__
 
 _LolMiner is a GPU crypto mining software which is easy to manage_

- to run LolMiner just type `lolminer --algo ETHASH --pool asia-eth.2miners.com:2020 --user <Wallet_address_here>.<worker_name_here> pause ` ie: `lolminer --algo ETHASH --pool asia-eth.2miners.com:2020 --user 0xaa02De1d115d4F6639A1B962C25B1e637Cc9176C.Gpu_Miner pause `  in your terminal and continue the steps. if you have any doubts [[Read this docs!]](https://github.com/Lolliedieb/lolMiner-releases/wiki)

__Playit:__
 
 _Playit is a tunneling software to portforward your server  to custom domains other than the numeric ip_

- to run playit just type `playit` in your terminal and continue the steps. if you have any doubts [[Read this docs!]](https://playit.gg/support/run-on-linux/)

__Ngrok:__
 
 _Ngrok is a tunneling software to portforward your server  to custom domains other than the numeric ip_

- to run ngrok just type `ngrok http <port>` or `ngrok tcp <port>` ie: `ngork tcp 22`  in your terminal and continue the steps. if you have any doubts [[Read this docs!]](https://ngrok.com/docs)

__Lavalink:__
 
 _Lavalink is a standalone program, written in Java. It's a lightweight solution for playing music from sources such as YouTube or Soundcloud_

- to run Lavalink type `java -jar Lavalink.jar`. note: you need to edit the `YOUR_PORT` and `YOUR_PASS` in the `application.yml` file to make the jar work properly


## ✨ Note

**Please use a host which have atleast 3GB disk space or it will messup the installation.**

## Disclaimer

This script is made for educational purposes (obviously lol)  
We are NOT responsible for any consequences.  
As stated in the LICENSE:
```
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
