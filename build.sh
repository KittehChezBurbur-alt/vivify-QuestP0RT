#!/bin/bash
# Vivify QuestP0RT Build and Package Script

set -e

echo "Building Vivify QuestP0RT..."

# Create build directory
mkdir -p build
cd build

# Configure and build with CMake
cmake ..
make

# Return to root directory
cd ..

echo "Build complete!"
echo ""
echo "Creating .qmod package..."

# Create temporary directory for qmod contents
mkdir -p qmod_temp

# Copy the built binary
cp build/vivify.so qmod_temp/

# Copy qmod.json
cp qmod.json qmod_temp/

# Create the qmod file (zip archive)
cd qmod_temp
zip -r ../vivify.qmod .
cd ..

# Clean up temporary directory
rm -rf qmod_temp

echo ""
echo "✅ Package created: vivify.qmod"
echo "📦 Ready for installation in Beat Saber!"
