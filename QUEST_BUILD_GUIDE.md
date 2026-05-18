# Building Vivify QuestP0RT on Quest

## Quest-Only Development Setup

### Prerequisites on Quest

1. **Termux** - Terminal emulator for Quest
   - Install from Meta Quest Store or SideQuest
   - Grant storage permissions when prompted

2. **Git** - Version control
3. **Build tools** - CMake, make, C++ compiler

### Step-by-Step Setup

#### 1. Install Termux

```bash
# Install from Quest Store or via SideQuest
# Open Termux once installed
```

#### 2. Update Termux and Install Dependencies

```bash
apt update
apt upgrade
apt install git cmake make clang build-essential wget
```

#### 3. Install Android NDK (Required for compilation)

```bash
# Download NDK for ARM (Quest uses ARM64)
wget https://dl.google.com/android/repository/android-ndk-r23c-linux-x86_64.zip
unzip android-ndk-r23c-linux-x86_64.zip
export NDK_HOME=$HOME/android-ndk-r23c
```

#### 4. Clone the Repository

```bash
cd $HOME
git clone https://github.com/KittehChezBurbur-alt/vivify-QuestP0RT.git
cd vivify-QuestP0RT
```

#### 5. Build the Mod

```bash
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=$NDK_HOME/build/cmake/android.toolchain.cmake \
      -DANDROID_PLATFORM=android-29 \
      -DANDROID_ABI=arm64-v8a \
      ..
make
```

#### 6. Create the .qmod Package

```bash
# The vivify.so will be in build/
# Create a qmod structure:
mkdir -p qmod_package
cp ../qmod.json qmod_package/
mkdir -p qmod_package/libs
cp build/vivify.so qmod_package/libs/

# Zip it
cd qmod_package
zip -r ../vivify.qmod .
cd ..
```

#### 7. Install on Beat Saber

Use SideQuest or Manual Install:

```bash
# If using SideQuest:
# 1. Connect Quest to PC via SideQuest
# 2. Go to Beat Saber folder
# 3. Place vivify.qmod in /sdcard/Android/data/com.beatgames.beatsaber/files/mods/

# Or via Termux:
cp vivify.qmod /sdcard/Android/data/com.beatgames.beatsaber/files/mods/
```

### Troubleshooting

**Issue: NDK not found**
```bash
# Verify NDK path
echo $NDK_HOME
# Should show: /root/android-ndk-r23c
```

**Issue: CMake not found**
```bash
apt install cmake
```

**Issue: Storage permissions**
```bash
# In Termux, grant storage access
termux-setup-storage
```

### Using SideQuest (Easier Alternative)

1. **Install SideQuest** on PC/Mac
2. **Connect Quest** via USB or WiFi
3. **Use SideQuest's built-in tools** to manage mods
4. **Drag and drop** vivify.qmod into Beat Saber's mods folder

### Alternative: Use Pre-built Binaries

If building is too complex:
- Use GitHub Actions to auto-build (see `.github/workflows/build.yml`)
- Download the pre-built `.qmod` from Releases
- Install directly via SideQuest

---

**Note:** Building natively on Quest can be slow. For faster development, consider using a PC with the proper SDK and transferring the .qmod via SideQuest.
