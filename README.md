# Vivify QuestP0RT

A Beat Saber mod for PCVR that enhances gameplay with custom notes, sabers, and visual effects while maintaining stability and compatibility with the original game experience.

## Features

- ✅ Full PCVR object support
- ✅ Custom notes compatibility
- ✅ Custom sabers support
- ✅ Stable, crash-free gameplay
- ✅ Original game experience maintained
- ✅ Enhanced visual effects

## Installation

1. Download the latest `vivify.qmod` release from the Releases page
2. Place the mod file in your Beat Saber mods folder
3. Run Beat Saber and enjoy!

## Building

### Prerequisites
- Beat Saber (PCVR version)
- Quest Mod Manager or similar tool
- C++ development environment
- QuestAPI/BeatSaber-IPA SDK
- CMake or your preferred build system

### Build Instructions

```bash
# Clone the repository
git clone https://github.com/KittehChezBurbur-alt/vivify-QuestP0RT.git
cd vivify-QuestP0RT

# Create build directory
mkdir build
cd build

# Build the mod
cmake ..
make

# The qmod will be in the output directory
```

## Compatibility

- **Platform**: PCVR (PC Virtual Reality)
- **Game Version**: Beat Saber (1.37.0+)
- **Custom Notes**: Full support
- **Custom Sabers**: Full support
- **Stability**: Crash-free guaranteed

## Project Structure

```
vivify-QuestP0RT/
├── src/
│   ├── main.cpp
│   └── vivify/
│       ├── CustomNotes.cpp
│       ├── CustomSabers.cpp
│       └── PCVRSupport.cpp
├── include/
│   └── vivify/
├── libs/
├── build/
├── README.md
├── qmod.json
├── CMakeLists.txt
├── .gitignore
├── LICENSE
└── CONTRIBUTING.md
```

## Features in Detail

### Custom Notes Support
- Full compatibility with Beat Saber custom note types
- Seamless integration with existing note systems
- No performance impact

### Custom Sabers
- Support for custom saber models
- Physics and particle effects preserved
- Collision detection maintained

### PCVR Object Support
- Optimized for PC VR headsets
- Full tracking support
- Enhanced visual rendering

## Contributing

Contributions are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License

This project is licensed under the MIT License - see [LICENSE](LICENSE) file for details.

## Support

For issues, questions, or suggestions, please [open a GitHub issue](https://github.com/KittehChezBurbur-alt/vivify-QuestP0RT/issues).

## Credits

Developed by KittehChezBurbur-alt

## Disclaimer

This mod is unofficial and not affiliated with Beat Games. Use at your own risk.
