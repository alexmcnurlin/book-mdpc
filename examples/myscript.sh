#! /usr/bin/env bash


for folder in *; do
		for filename in $folder/*; do
				echo "Trying to run $filename"
				sed -i -e 's/size(.*, .*)/size(2560, 1080)/g' $filename/*.pde
				/home/alexmcnurlin/Downloads/.processing_lang/processing-3.3.6/processing-java --sketch="$filename" --run
				# mv "$filename/*.png" final_images
	  done
done
