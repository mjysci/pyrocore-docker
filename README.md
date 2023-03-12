# pyrocore-docker
Docker version of [pyrocore](https://github.com/pyroscope/pyrocore): A collection of tools for the BitTorrent protocol and especially the rTorrent client.

# Usage
Fast resume torrent example:
```
docker run --rm -it -v /path/to/data/:/root/data \
                -v /path/to/files:/root/files \
                mjysci/pyrocore \
                "chtor -H '/root/data/folder' ../files/*.torrent -o ../files/new"
```
Replace `chtor` with other cli commands, check [Manual](https://pyrocore.readthedocs.io/en/latest/usage.html) for details.