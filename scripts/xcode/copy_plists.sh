
# Set right environment following build
env=$1
platform=$3
if [ "$env" = "Debug" ]; then
    env="Debug"
elif [ "$env" = "Adhoc" ]; then
    env="Adhoc"
elif [ "$env" = "Beta" ]; then
    env="Beta"
else [ "$env" = "Release" ]
    env="Release"
fi

echo "Using $env environment"

# Get local variables
plists_expected=("GoogleService-Info.plist")
plists_available="./Config/$platform/plists/$env/*"
plists_destination=$2

# Get all plists' filename available from env directory
plists_paths=($plists_available)
for filename in ${plists_paths[@]}; do
	plists_filename+=(`basename $filename .extension`)
done
echo "Files in environment directory: $plists_filename"

# Check if expected plists match available plists for the environment
# An error will be returned if a plist is missing
l2=" ${plists_filename[*]} "
for item in ${plists_expected[@]}; do
	if ! [[ $l2 =~ " $item " ]] ; then
		echo "Missing plist: $item"
		exit 1
	fi
done
echo "All expected files have been found"

# Check if expected plists match available plists for the environment
# An error will be returned if a plist is missing
l2=" ${plists_expected[*]} "
for item in ${plists_filename[@]}; do
	if ! [[ $l2 =~ " $item " ]] ; then
		echo "File shouldn't be in the env directory: $item"
		exit 1
	fi
done
echo "Every files in the directory are expected"

# Copy expected plists to destination
cp $plists_available "$plists_destination"
