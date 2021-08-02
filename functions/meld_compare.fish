function meld_compare --argument project file
	if test $project && test $file
		echo "Comparando os arquivos"
		echo " * /home/kylefelipe/mydevel/$project/$file"
		echo " * /home/kylefelipe/mydevel/correcao/$project/$file"
		command meld "/home/kylefelipe/mydevel/$project/$file" "/home/kylefelipe/mydevel/correcao/$project/$file"
	end
end
