
# 📲 Krypteonx ARM64 - Full Android Installation Guide (UserLand + Ubuntu)

## ✅ Step 1: Download UserLAnd from Play Store

[https://play.google.com/store/apps/details?id=tech.ula&hl=it](https://play.google.com/store/apps/details?id=tech.ula&hl=it)

- Select: **Ubuntu**
- Enable Storage: ✅
- Desktop Environment: **Minimal**
- Connection Type: **Terminal**

## ✅ Step 2: Update Ubuntu Packages

```bash
sudo apt update && sudo apt upgrade -y
```

## ✅ Step 3: Install unzip and nano

```bash
sudo apt install unzip nano -y
```

## ✅ Step 4: Download and Extract the Krypteonx ARM64 Wallet

```bash
cd
wget https://github.com/krypteonx-network/Core-Wallet/releases/download/Post-Halving/Krypteonx_ARM64_Ubunu_22.tar.gz
tar -xf Krypteonx_ARM64_Ubunu_22.tar.gz
rm Krypteonx_ARM64_Ubunu_22.tar.gz
cd
```

## ✅ Step 5: Download and Extract the Bootstrap (Fast Blockchain Sync)

```bash
mkdir .krypteonxcore && cd .krypteonxcore
wget https://github.com/krypteonx-network/Core-Wallet/releases/download/Post-Halving/KrypteonxCore_BootStrap.v4.4.zip
unzip KrypteonxCore_BootStrap.v4.4.zip
rm KrypteonxCore_BootStrap.v4.4.zip
```

## ✅ Step 6: Create your krypteonx.conf file (Change user and password)

```bash
nano krypteonx.conf
```

Paste the following (edit with your own user and password):

```
rpcuser=choose_your_user
rpcpassword=choose_your_password
rpcport=1154
rpcallowip=127.0.0.1
server=1
daemon=1
listen=1
```

Save and exit with: `CTRL + X`, then `Y`, then `Enter`

## ✅ Step 7: Start the Krypteonx Daemon

```bash
cd ~/Krypteonx_ARM64
./krypteonxd
```

Wait a few seconds, then check network status:

```bash
./krypteonx-cli getnetworkinfo
./krypteonx-cli getblockchaininfo
```

If synced: `blocks` and `headers` will be equal ✅

## ✅ Step 8: Create a Krypteonx Address for the Promotion

```bash
./krypteonx-cli getnewaddress "Promo"
```

Take a screenshot of your new address and post it on Discord to get **100 KRY** 🚀
https://discord.gg/aHZs9fndQc

## ✅ Step 9: Secure and Backup Your Wallet

```bash
./krypteonx-cli encryptwallet "YourStrongPassword"
./krypteonx-cli backupwallet Krypteonx.dat
```

Keep both your password and the backup file safe!

## ✅ Step 10: Useful Commands

- Start the wallet:

```bash
cd ~/Krypteonx_ARM64 && ./krypteonxd
```

- Stop the wallet:

```bash
cd ~/Krypteonx_ARM64 && ./krypteonx-cli stop
```

- View all available commands:

```bash
./krypteonx-cli help
```

## ✅ Bonus:

This method works on any **modern Android phone** with ARM64 and Ubuntu via UserLAnd.

A **full video tutorial** will be published soon on Discord. Stay tuned!
