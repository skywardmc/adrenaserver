<div align="center">
  <a href="https://github.com/intergrav/Adrenaserver">
    <img src="https://raw.githubusercontent.com/intergrav/Branding/main/adrenaserver/adrenaserver_text_256h.png" alt="Logo" height="40">
  </a>
  <br />
  <br />
  <p align="center">
    Minimal, base performance layer focusing on heavily optimizing Fabric and Quilt servers. No QOL.
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

Adrenaserver is a performance-focused modpack designed specifically for server-side use. It aims to boost the performance of your server with a minimal number of mods that enhance speed without altering the core gameplay. This modpack is intended to serve as a foundation for further customization or can be used as is for a streamlined and optimized server experience.

Adrenaserver is specifically designed for server use and is not recommended for personal, client-side use. If you are looking to improve your game performance, I suggest using my client-side performance modpack, [Adrenaline](https://modrinth.com/modpack/adrenaline), which can offer significant improvements to framerate and other gameplay aspects.

## 📥 Installation guide

Installing Adrenaserver on your server is a bit more complex as compared to a client-side modpack. This is because there are limited options for installing server packs. However, if you have some prior experience, it should still be manageable. Before starting the installation process, make sure you have either a Fabric or Quilt server setup. It is recommended to use a Fabric server as it may be more stable with these mods.

<details>
<summary>
🚀 Simple: Install through launcher, and move to server folder
</summary>

[Watch this video to learn how to download the modpack with a launcher](https://youtu.be/9-hT8V_wCqw). Make sure you have all the dependencies (linked in the description of the video).

After you have done that, simply move the `mods` folder and `config` folder that you have downloaded through the launcher to your Fabric/Quilt server folder.

</details>

<details>
<summary>
🧙 Advanced: Use packwiz-installer to install and auto-update on launch
</summary>

### **I can't stress this enough. Before doing any of this, *be sure to have backups of the server*. You do not want any possible loss of data.**

[packwiz-installer](https://github.com/packwiz/packwiz-installer) is a useful tool that lets you automatically install and update a modpack through the `pack.toml` file of that pack.

Some server hosts may let you set a command that runs before the server actually starts. It's called a *pre-launch command*. I can't exactly help if you are using an external server provider as I do not know where they let you do that stuff, you will have to figure that out on your own.

First, you need to install `packwiz-installer-bootstrap` from [here](https://github.com/packwiz/packwiz-installer-bootstrap/releases). After that, move it to the same folder as your server's Fabric loader jar. This will usually be the root of the server.

Change `fabric` to `quilt` in the link if needed. You may also change the MC version of the modpack (available versions only).
```
java -jar packwiz-installer-bootstrap.jar -g -s server https://raw.githack.com/intergrav/Adrenaserver/main/versions/fabric/1.19.2/pack.toml
```

If you are running this server through a batch file or something like that, you can add this command before your server's launch command and it should work just fine.

*Having trouble? Join my Discord server and I *may* be able to help you. I'm not the most knowledgable on this stuff however. There's always the [packwiz wiki](https://packwiz.infra.link/tutorials/installing/packwiz-installer/#using-a-modpack-with-a-server) aswell.*

</details>

<details>
<summary>
⭐ Advanced: Install with Superpack
</summary>

You can use a useful tool by Gaming32 called Superpack to download this modpack's content and extract it to a folder. Here are the [Superpack releases](https://github.com/Gaming32/Superpack/releases).

*Just a note - I won't be giving support on how to install with this method. Please don't ask.*

</details>

After this, I recommend following the post-install guide:

<details>
<summary>
✨ Post-install tips and tricks
</summary>

### Pre-loading chunks

I highly recommend pre-loading your chunks so that you can prevent lag when players generate new ones. Chunky is included in Adrenaserver as of 1.3.0, here are a few basic commands to pre-load with the mod. **Keep in mind that pre-loading can take quite a long time, and you should probably do it when people aren't online**.

Choose the world, replacing `minecraft:overworld` with the corresponding world:
```markdown
chunky world minecraft:overworld
```

Choose the radius to pre-load, replacing 2500 with how much you want to do:
```markdown
chunky radius 2500
```

After choosing the world and the radius, start pre-loading:
```markdown
chunky start
```

### Extra mods

These mods are not included to keep Adrenaserver lightweight and small. However, you may want them:
- [Spark](https://modrinth.com/mod/spark) for profiling, monitoring and more
- [No Chat Reports](https://modrinth.com/mod/no-chat-reports) to prevent chat reports

</details>

## 🔥 Performance

This pack has been designed to enhance server performance by boosting TPS (ticks per second) and reducing MSPT (milliseconds per tick), as well as reducing resource usage. With every update, I work to find new ways to improve the performance through modifications and configurations. If you have any suggestions for mods or other performance-enhancing additions, please feel free to share them on the repository's [issue tracker](https://github.com/intergrav/Adrenaserver/issues). Just be sure that any suggestions do not alter the core functionality of the game.

## 🗄️ Built for servers

Adrenaserver is specifically tailored for small to medium-sized Minecraft servers. Its main goal is to provide server hosts with a hassle-free solution for boosting their server performance without requiring extensive technical knowledge. Clients who join the server will not need to install any additional mods, as the pack is compatible with vanilla, Fabric, Quilt, and Forge clients. This keeps the server accessible and eliminates the need for players to perform any extra steps before joining.

## ◽ Keeping it simple

Adrenaserver is focused strictly on optimization, and does not add any additional features. This makes it an ideal foundation for building your server, particularly for SMP servers and vanilla servers that only require a speed boost, but also other servers that may want to use this as a base. By keeping the focus on optimization, this pack ensures that your server remains stable and performs well without any extra bells and whistles.

## 🔄️ Updates quickly

My goal is to keep Adrenaserver up-to-date with the latest Minecraft releases, providing tested builds as soon as possible. Although the maintenance of the pack is solely done by me, I will make every effort to release updates promptly. However, please note that there may be some delays due to my limited time and motivation.

**➡️ Note:** This does not apply to snapshots most of the time. I do not bother as they can sometimes require lots of maintenance and come out too quickly.

## ⚙️ How it works

The pack utilizes a combination of carefully selected optimization mods that have been proven to work well together. These mods have been fine-tuned to provide improved performance over their default settings, and the results can be quite impressive. However, it's important to note that compared to other modpacks, Adrenaserver can be a little more aggressive in its optimizations, and as a result, may occasionally be prone to stability issues. Nonetheless, these instances are rare and the pack has been designed to deliver reliable performance.

## 🐛 Reporting Issues

Experiencing bugs, crashes, or other issues? Feel free to open an issue on the [issue tracker](https://github.com/intergrav/Adrenaserver/issues).

## 🍉 Sponsor
Need a fast, reliable Minecraft server? Use my code `devin` for 25% off your first month of any MelonCube server, supporting me in the process. Click this image for more information.

[![MelonCube Image](https://www.meloncube.net/partners/custom-banners/fc383dd6-4bb3-424f-b4fb-f540acb27e8b.png)](https://meloncube.net/devin)

> *This description was copied from the [Modrinth page](https://modrinth.com/modpack/adrenaserver). It may not be formatted correctly.*
