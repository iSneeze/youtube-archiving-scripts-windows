This repository is a collection of scripts useful for archiving and converting Youtube videos.

## First steps:
- Download binaries by running the `update.bat` script, it will download the latest yt-dlp and yt-archive binaries as well as install ffmpeg
- replace empty `cookies.txt` file in folder `binaries` with your own, if you want to download and record members content:
    - firefox: https://addons.mozilla.org/en/firefox/addon/cookies-txt/
    - chrome: https://chrome.google.com/webstore/detail/get-cookiestxt-locally/cclelndahbckbenkjhflpdbgdldlbecc
    - install an extension, make sure you are logged in to youtube and extract your cookies for youtube. replace the empty `cookies.txt`.

## Downloading scripts:
- download_video/download_youtube: Uses yt-dlp to download a video from the URL you provide. download youtube is specialized for youtube to get the best quality 1080p video, the other script can also be used for twitter videos and spaces, insta, and many other [sites](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md).

- record_livestream: Uses yt-archive to record livestreams, you can start it in advance and it will wait for the stream to start. 1080p. For "prefix" pick a consistent name, like GURA, YUKO, POKO, INA, ... it will create a new folder and store files there. Naming is: prefix_date_title_id.mp4 If you input a live url, e.G. `https://www.youtube.com/@rourinroca/live` it will keep recording every **PUBLIC** stream until you close the program.

## Post-processing scripts (optional, to use drag and drop files onto them):
- convert_to_av1: Converts a video to av1, with a set of standard parameters (preset and crf customizable, if you dont know what it does, just press enter) resulting in smaller filesizes. not recommended for visually busy streams or streams with lots of artifacts.

- extract_audio: copies the audio track of the video into a new file. preserves original quality, no transcoding.

- clip: extracts a clip from the timestamps provided. h264, embeds into discord, twitter and other social media.