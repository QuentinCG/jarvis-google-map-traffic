## Description
Get time, delay and major direction to go to a specific place in car with <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a> using <a target="_blank" href="https://developers.google.com/maps/documentation/directions/get-api-key">Google Map Directions API</a>.

<img src="https://raw.githubusercontent.com/QuentinCG/jarvis-google-map-traffic/master/presentation.png" width="150">


## Usage

```
You: Donne le trafic (du trajet habituel)
Jarvis: Le trajet entre NICE et PARIS via A7 et A6 est estimé à 8 heures 37 minutes dont 4 minutes de retard.

You: Donne le trafic entre Grenoble et Paris
Jarvis:  Le trajet entre Grenoble et Paris via A6 est estimé à 5 heures 36 minutes dont 20 minutes de retard.
```


## How to install

1) Get a <a target="_blank" href="https://developers.google.com/maps/documentation/directions/get-api-key">Google Map Directions API</a>.

2) Add this plugin to your <a target="_blank" href="http://domotiquefacile.fr/jarvis/">Jarvis assistant</a> (<a target="_blank" href="http://domotiquefacile.fr/jarvis/content/plugins">more info here</a>): ```./jarvis.sh -p https://github.com/QuentinCG/jarvis-google-map-traffic``` (the installation may take up to 35 minutes).

3) Configure the <a target="_blank" href="https://github.com/QuentinCG/jarvis-google-map-traffic/blob/master/config.sh">configuration file</a> to match your requirements: You need to specify your Google Map Directions API key here.

4) Enjoy


## Author
[Quentin Comte-Gaz](http://quentin.comte-gaz.com/)

Note: Forked from [Oliv4945](https://github.com/Oliv4945/jarvis-google-map-traffic) which forked it from [Aelios](https://github.com/Aelios/jarvis-google-map-traffic)


## License

This project is under MIT license. This means you can use it as you want (just don't delete the plugin header).


## Contribute

If you want to add more examples or improve the plugin, just create a pull request with proper commit message and right wrapping.
