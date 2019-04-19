# Yarn 😹

## Créer une applicaiton react

	yarn global add create-react-app
> create-react-app my-app
	
## Killer une application via une rechercher

	yarn global add fkill-cli
> fkill
	
## Remplacer le man
	yarn global add tldr
	
> tldr git
	
## Cours de crypto dans la terminal 💰

	yarn global add coinmon
Lister le top 10
> coinmon

Chercher une crypto
> coinmon -f xmr

## Command Top avec effet visuel

	yarn global add vtop
> vtop
	
## Transformer un site web en application

	yarn global add nativefier
> nativefier "http://medium.com"

## Télécharger ou streamer video youtube ▶️
	yarn global add ytdl
Regarder la video
> ytdl "http://www.youtube.com/watch?v=_HSylqgVYQI" | mpv -

Télécharger en mp4
> ytdl "http://www.youtube.com/watch?v=_HSylqgVYQI" > myvideo.mp4

ou
> ytdl -o "{author.name} - {title}" "http://www.youtube.com/watch?v=_HSylqgVYQI"

Télécharger au format mp3 (besoin de ffmpeg)
> ytdl http://www.youtube.com/watch?v=_HSylqgVYQI | ffmpeg -i pipe:0 -b:a 128K -vn myfile.mp3
	
## Ouvrir une video en picture-in-picture
	yarn global add open-pip
> open-pip privacy.mp4 (ne marche pas avec les .avi et .mkv)

Avec ytdl
> ytdl --print-url --filter-container=mp4 https://www.youtube.com/watch?v=6HLPnq2lrgQ | open-pip

## Meteo dans le terminal 🌤
	yarn global add weather-cli
> weather -c paris -C france

## Jeux 🎮
	yarn global add battleship-game mastermind-game 
