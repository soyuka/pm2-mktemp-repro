Fail Reproducing https://github.com/Unitech/pm2/issues/2714

# Instructions

```
docker build -t pm2mktemp .
docker run pm2mktemp:latest bash -c "source .nvm/nvm.sh && pm2 start app/test.js --no-daemon"
```
