> ### ⚠️ Adrenaserver has been moved!
> 
> Adrenaserver has been merged into [Adrenaline](https://github.com/skywardmc/adrenaline) to make it more simple and easier to maintain. If you are using Adrenaserver, it is recommended that you migrate your server to use Adrenaline so that you can continue receiving updates. You can learn how to install Adrenaline in it's description.

<details>
<summary>Archived description</summary>

<div align="center">
  <a href="https://github.com/intergrav/Adrenaserver">
    <img src="https://raw.githubusercontent.com/intergrav/Branding/main/adrenaserver/adrenaserver_text_256h.png" alt="Logo" height="40">
  </a>
  <br />
  <br />
  <p align="center">
    Lightweight and fast performance modpack for servers
    <br />
    <!---<a href="https://github.com/intergrav/Adrenaline/wiki"><strong>Explore the docs »</strong></a>
    <br />-->
    <a href="https://github.com/intergrav/Adrenaserver/issues">Report Bugs</a>
    ·
    <a href="https://github.com/intergrav/Adrenaserver/issues">Request Features</a>
  </p>
  <a href="https://modrinth.com/modpack/adrenaserver"><img src="https://raw.githubusercontent.com/intergrav/devins-badges/v2/assets/compact/available/modrinth_vector.svg" alt="Available on Modrinth" height="36"></a>
  <a href="https://gitpod.io/from-referrer/"><img src="https://raw.githubusercontent.com/intergrav/devins-badges/v2/assets/compact/supported/gitpod_vector.svg" alt="Ready for Gitpod" height="36"></a>
</div>

> Adrenaserver is specifically designed for server use and is not recommended for personal, client-side use. If you are looking to improve your game performance, I suggest using my client-side performance modpack, [Adrenaline](https://modrinth.com/modpack/adrenaline), which can offer significant improvements to framerate and other gameplay aspects.

Adrenaserver is a performance-focused modpack designed specifically for server-side use. It aims to boost the performance of your server with a minimal number of mods that enhance speed without altering the core gameplay. This modpack is intended to serve as a foundation for further customization or can be used as is for a streamlined and optimized server experience.

# 📥 Installation guide

There are various ways to install and manage Modrinth modpacks with a server.

<details>
<summary>
📦 Install using mrpack-install
</summary>

Download `mrpack-install` through [GitHub releases](https://github.com/nothub/mrpack-install/releases) (or your distro's package if it has one) and take a look at the commands on the [README](https://github.com/nothub/mrpack-install). In Adrenaserver's case, to install in your server you would run:

```sh
mrpack-install adrenaserver [optional version number]
```

</details>

<details>
<summary>
🐋 Install using Docker Compose
</summary>

> It may be a good idea to have some knowledge on using Docker before doing this.

1. Make sure you have Docker Engine installed properly according to the [Docker docs](https://docs.docker.com/engine/install)
2. Create a new directory
3. Place the contents below in a file called `docker-compose.yml`. This Compose file also contains some other server tweaks meant for performance, such as disabling `sync-chunk-writes`, reducing render and simulation distance, and more
4. Run `docker compose up -d` in that directory

For any other information, you can read through the [Docker Minecraft Server documentation](https://docker-minecraft-server.readthedocs.io).

```yaml
services:
  mc:
    image: itzg/minecraft-server
    tty: true
    stdin_open: true
    ports:
      - "25565:25565"
    environment:
      EULA: "TRUE"
      # Adrenaserver and other mods
      MOD_PLATFORM: MODRINTH
      MODRINTH_DOWNLOAD_DEPENDENCIES: required
      MODRINTH_MODPACK: adrenaserver # this installs the latest version of Adrenaserver, you can also use a specific MR link to a version
      MODRINTH_PROJECTS: spark, chunky # comma separated list of extra mods
      # Server properties
      VIEW_DISTANCE: 8
      SIMULATION_DISTANCE: 5
      SYNC_CHUNK_WRITES: false
    volumes:
      # Attach the relative directory 'data' to the container's /data path
      - ./data:/data
```

</details>

<details>
<summary>
✨ Install using mcman
</summary>

[mcman](https://github.com/ParadigmMC/mcman) is a tool for managing the mods/plugins/configurations of a Minecraft server. First, install mcman from [releases](https://github.com/ParadigmMC/mcman/releases). To import Adrenaserver while initializing a server, use this command:

```sh
mcman init --mrpack mr:adrenaserver
```

After initializing and importing the mrpack, run `mcman build` to build the server into the `server/` directory, from which you can call `cd server && sh start.sh` or `cd server && call start.bat`. For more information, check out [mcman's docs](https://github.com/ParadigmMC/mcman/blob/main/DOCS.md).

</details>

<details>
<summary>
🧙 Install using packwiz-installer
</summary>

> Before doing any of this, be sure to have a backup of the server in case anything goes wrong.

[packwiz-installer](https://github.com/packwiz/packwiz-installer) is a useful tool that lets you automatically install and update a modpack through the `pack.toml` file of that pack.

Some server hosts may let you set a command that runs before the server actually starts. It's called a pre-launch command. I can't exactly help if you are using an external server provider as many don't support pre-launch commands or require you to supply your own jar file that will run the command.

First, you need to install `packwiz-installer-bootstrap` from [here](https://github.com/packwiz/packwiz-installer-bootstrap/releases). After that, move it to the same folder as your server's Fabric/Quilt loader jar. This will usually be the root of the server.

Change `fabric` to `quilt` in the link if needed. You may also change the MC version of the modpack ([available versions only](https://github.com/intergrav/adrenaserver/tree/main/versions)).

```sh
java -jar packwiz-installer-bootstrap.jar -g -s server https://raw.githack.com/intergrav/Adrenaserver/main/versions/fabric/1.20.6/pack.toml
```

If you are running this server through a batch file or shell script, you can add this command before your server's launch command and it should work just fine.

*Having trouble? Check out the [packwiz wiki](https://packwiz.infra.link/tutorials/installing/packwiz-installer/#using-a-modpack-with-a-server) and, if that doesn't help, ask in the [packwiz Discord server](https://discord.gg/DcSkRF4).*

</details>

After this, I recommend following the post-install guide:

<details>
<summary>
⚙ Post-install tips and tricks
</summary>

### Pre-loading chunks

> You must install [Chunky](https://modrinth.com/project/chunky) to do this.

I highly recommend pre-loading your chunks so that you can prevent lag when players generate new ones. **Keep in mind that pre-loading can take quite a long time, and you should probably do it when people aren't online**.

Choose the world, replacing `minecraft:overworld` with the corresponding world:
```sh
chunky world minecraft:overworld
```

Choose the radius to pre-load, replacing 2500 with how much you want to do:
```sh
chunky radius 2500
```

After choosing the world and the radius, start pre-loading:
```sh
chunky start
```

### Profiling and monitoring

You can install and use [Spark](https://modrinth.com/mod/spark) for profiling, monitoring and more.

</details>

# 🎯 Goals

### 🚀 Improve performance

Adrenaserver aims to enhance server performance by keeping TPS at a stable 20 and heavily reducing MSPT, as well as reducing resource usage. If you have any suggestions for mods or other performance-enhancing tweaks, please feel free to share them on the repository's [issue tracker](https://github.com/intergrav/Adrenaserver/issues).

### 🪶 Stay lightweight

Adrenaserver is focused strictly on optimization, and does not add any additional features and stays lightweight. This makes it an ideal foundation for building your server, particularly for SMP servers and vanilla servers that only require a speed boost, but also other servers that may want to use this as a base. By keeping the focus on optimization, this pack ensures that your server remains stable and performs well without any extra bells and whistles.

### 🔧 Minimally modify

I aim to keep parity with the Vanilla game pretty high, I only break Vanilla parity when it's something that I don't expect to affect anyone and that change gives a reasonable boost in performance. This ensures that things like your redstone builds or farms shouldn't be affected in any way.

# 🐛 How to Report Issues

Experiencing bugs, crashes, bad performance, or other issues? Feel free to open an issue on the [issue tracker](https://github.com/intergrav/Adrenaserver/issues). Be sure to include necessary information like your hardware/software (e.g. CPU, modpack version, operating system and distribution) and server information (e.g. usual player count and activities) so that it's easier for us to find issues and resolve them.

# 🍉 Sponsor
Need a fast, reliable Minecraft server? Use my code `devin` for 25% off your first month of any server from Bisect Hosting, supporting me in the process. Click this banner for more information.

[![Bisect Hosting Image](https://www.bisecthosting.com/partners/custom-banners/444cf491-d49c-4b9a-8b2d-250593122b7e.webp)](https://www.bisecthosting.com/devin)
