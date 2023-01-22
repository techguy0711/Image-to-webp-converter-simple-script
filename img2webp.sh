#check if homebrew is installed
if ! command -v brew &> /dev/null
then
    echo "Homebrew could not be found"
    exit
fi

#check if cwebp is installed
if ! command -v cwebp &> /dev/null
then
    #install webp
    brew install webp
fi

#prompt user for image path
echo "Drag your image here, or enter image path: "
read image_path

#convert image to webp
cwebp -q 80 $image_path -o ${image_path%.*}.webp