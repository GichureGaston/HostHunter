# HostHunter

HostHunter is a DNS lookup app built with Flutter. It lets you check information about any domain name, like what server it points to, where its emails go, and whether the connection is private or not.

## What It Does

When you type a domain name like `google.com`, HostHunter goes and fetches all the information stored about that domain. You can choose what kind of information you want and which service should look it up for you.

## Record Types

Here are the types of information you can look up:

* A: The standard IP address for a website (e.g., `142.250.190.46`)
* AAAA: The newer, longer style of IP address
* MX: Which mail servers handle emails for that domain
* TXT: Extra notes attached to a domain, often used for security verification
* CNAME: An alias that points one domain to another
* NS: Which servers are in charge of a domain

## How It Connects

HostHunter supports three ways of fetching DNS information, ranging from standard to more private:

1. API (Google or Cloudflare): Sends a regular web request to a trusted service. Simple and fast.
2. Encrypted Raw (DNS-over-TLS): Talks directly to a DNS server, but through a private, encrypted channel. Same speed, more privacy.
3. Unencrypted Raw (UDP): Talks directly to a DNS server without any encryption. Useful for testing, but your queries are visible on the network.

The app shows a security badge in the header so you always know which mode you are using.

## Running on Linux

Before building for Linux, make sure the following tools are installed on your system. You can install them all at once with:

```bash
sudo apt-get install -y clang cmake ninja-build pkg-config libgtk-3-dev lld
```

## How to Use

1. Open the app.
2. Type a domain name into the search bar (e.g., `github.com`).
3. Pick the type of information you want from the chips at the top.
4. Choose a connection method from the dropdown.
5. Hit the arrow button or press Enter to look it up.
