# Tablet Dashboard — local run

This repository contains a simple tablet dashboard in `index.html`.

## Quick start on Windows

1. Download or clone this repository to the P620.
2. Double-click `start-dashboard.cmd`.
3. A browser should open automatically at:

   `http://127.0.0.1:8080`

4. Keep the command window open while using the dashboard.
5. To stop the server, press `Ctrl+C` in the command window or close it.

The server listens on `0.0.0.0:8080`, so later the tablet can access the same page through the P620's network IP without changing the web page itself.

If Windows Defender Firewall asks for permission, allow access on the trusted/private network you intend to use.

## Update from GitHub

If the repository was cloned with Git, run:

```bat
git pull
```

Then refresh the browser. No build step is required.
