> **Warning**
> 1.16.5 and 1.17.1 Quilt versions are not available as QFAPI isn't available for those versions. I recommend using a later Quilt version (≥1.18.2) or switching to Fabric for those.

> **Note**
> This is an optimization modpack **for servers**! While you *can* technically use this on the client, it really isn't recommended as that's not what this is designed for. If you need to optimize your client, use a modpack like [Adrenaline](https://modrinth.com/modpack/adrenaline), [Simply Optimized](https://modrinth.com/modpack/sop), or [Fabulously Optimized](https://modrinth.com/modpack/fabulously-optimized) - do not use this one.

Adrenaserver is a server-side **performance modpack** that attempts to speed up your server, while still looking great. It is meant to be a sort of "base layer" that you can build on top of, or just use by itself. It is designed to have the least mods possible, while keeping good performance improvements. No game-changing mods, none of that. Just speed.

As said above - please use *client-side* performance modpacks for personal use! This is for servers, not players. I have a client-side performance modpack available for use that offers great improvements to framerate and other aspects of the game [here](https://modrinth.com/modpack/adrenaline).

## ➕ Features
### 🔥 Optimization!
In most cases, this pack can give very good improvements to the *TPS* (ticks per second), can lower *MSPT* (milliseconds per tick), lower *resource usage*, and more. Every update I am trying to find new ways to improve performance through configs, mods, etc. You may suggest mods and other things on the GitHub repository.

### ❌ No Extra Mods!
Many other performance modpacks tend to bundle game-changing mods in them, even when they say it's a performance modpack. This is different. I will **always** stay true to its purpose and **only** include optimization mods. You can add those extra mods yourself after you install it. A big goal for this pack is to stay true to vanilla, while giving performance benefits.

### ◽ Clients Don't Need Anything!
This modpack is completely server-sided! Clients on the server do not need to install any mods (or modloader) to join in.

### ⏩ Very Quick Updates!
I try to update to newer Minecraft versions as **fast as possible**.

## ❓ Frequently Asked Questions
### 🔧 How do I install it?
From what I've seen, there aren't many great ways to install server-side packs. However, it is possible as long as you know a bit about modded servers.

First, you need a Fabric or Quilt server depending on which modpack version you want. I assume you already have one or know how to install one, but here is the instructions for both:
- [Fabric Tutorial](https://fabricmc.net/wiki/player:tutorials:server:windows)
- [Quilt Tutorial](https://quiltmc.org/en/install/server/)

After you do that, use one of these methods listed below.

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

[packwiz-installer](https://github.com/packwiz/packwiz-installer) is a useful tool that lets you automatically install and update a modpack through the `pack.toml` file of that pack.

**Before doing any of this, *be sure to have backups of the server*. You do not want any loss of data, probably.**

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

You can use a useful tool by Gaming32 called Superpack to download this modpack's content and extract it to a folder - there doesn't seem to be any documentation yet, but this *is* here if you really want to try it. Here is the [Superpack repository](https://github.com/Gaming32/Superpack). Click [here](https://nightly.link/Gaming32/Superpack/workflows/maven/main/build-jars.zip) to download the latest version of Superpack.

*Just a note - I won't be giving support on how to install with this method. Please don't ask.*

</details>

### 📦 Can I make a modpack with this?
Yes, *you can*! Feel free to use this in any way you want! If you are making something public with this like a modpack, all I ask for is credit somewhere. You don't **have** to give credit - after all it's just a Minecraft modpack, but I spend lots of time maintaining this and it would help a ton. If you do want to give credit, just put this website in there.

### 💬 How can I provide feedback?
If you want to talk about the pack or have any questions, please use the [Discord server](https://discord.gg/36Tv44cYte)! However, if you are asking for a feature to be added or giving a bug report, use the [issue tracker](https://github.com/intergrav/Adrenaline/issues) instead. Thanks!

## ♻️ Versioning
Adrenaserver uses [Semantic Versioning 2.0.0](https://semver.org/).

Versions for older Minecraft releases will try to replicate the latest stable version. This makes it super simple, but older versions may have less features as many mods can be missing.

This goes for newer, alpha versions as well. However, they will continue to be updated with multiple alpha stages until it has about the same mods as the previous version, which it will then be the stable version.

I stop support for older versions over time, but it isn't mandatory to update as they should still be very stable.

LTS (Long-term support) versions are the last minor release of that Minecraft version's major release. This means that 1.16.5 would be the LTS release, not 1.16-1.16.4. LTS versions will be maintained for roughly a year or two before ending support.

## 🍉 MelonCube
Need a super-fast, reliable Minecraft server? MelonCube has your back! Use my code `devin` for 25% off your first month of any of their servers. Click this image for more information.

[![MelonCube Image](https://www.meloncube.net/partners/custom-banners/fc383dd6-4bb3-424f-b4fb-f540acb27e8b.png)](https://meloncube.net/devin)

# 👍 Thank you!
Thank you amazing **modders** for developing the mods used in this pack - it helps quite a lot, and, obviously, this wouldn't exist if these mods weren't made.

Thank **you** for choosing Adrenaserver - enjoy the modpack. Join my [modpack Discord](https://discord.gg/36Tv44cYte) for announcements, support, and chatting.

<script src="https://giscus.app/client.js"
        data-repo="intergrav/adrenaserver"
        data-repo-id="R_kgDOIltw2Q"
        data-category="giscus"
        data-category-id="DIC_kwDOIltw2c4CS_6V"
        data-mapping="pathname"
        data-strict="0"
        data-reactions-enabled="1"
        data-emit-metadata="0"
        data-input-position="top"
        data-theme="light"
        data-lang="en"
        data-loading="lazy"
        crossorigin="anonymous"
        async>
</script>
