Spotify Presentation
========================================================
author: Miryam Elizabeth
date: 28 november, 2021
autosize: true




Spotify Music
========================================================

An interactive app to easily explore music of Spofity. The app utilizes a custom dataset, which was collected using Spotify's API. The idea is to predict whether you will like a song or not, based on your musical preferences.

Each song has different attributes such as name, artist, duration, and music-related features such as energy, instrumentality, tempo, how danceable it is, etc.

- More information on the Spotify's API can be found <a href='https://developer.spotify.com/documentation/web-api/reference/#/operations/get-several-audio-features'>here</a>.


Dataset
========================================================

The first 100 rows of the data being explored.

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:500px; overflow-x: scroll; width:1000px; "><table class="table" style="font-size: 18px; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">   </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;"> artist </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;"> danceability </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;"> energy </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;"> speechiness </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;"> acousticness </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;"> instrumentalness </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;"> valence </th>
   <th style="text-align:center;position: sticky; top:0; background-color: #FFFFFF;"> class </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 868 </td>
   <td style="text-align:center;"> Coldplay </td>
   <td style="text-align:center;"> 0.485 </td>
   <td style="text-align:center;"> 0.61900 </td>
   <td style="text-align:center;"> 0.0289 </td>
   <td style="text-align:center;"> 9.41e-02 </td>
   <td style="text-align:center;"> 3.30e-06 </td>
   <td style="text-align:center;"> 0.4160 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 180 </td>
   <td style="text-align:center;"> Harry Styles </td>
   <td style="text-align:center;"> 0.448 </td>
   <td style="text-align:center;"> 0.83800 </td>
   <td style="text-align:center;"> 0.0557 </td>
   <td style="text-align:center;"> 2.10e-01 </td>
   <td style="text-align:center;"> 1.31e-04 </td>
   <td style="text-align:center;"> 0.2540 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1486 </td>
   <td style="text-align:center;"> Bronco </td>
   <td style="text-align:center;"> 0.722 </td>
   <td style="text-align:center;"> 0.65500 </td>
   <td style="text-align:center;"> 0.0434 </td>
   <td style="text-align:center;"> 6.17e-01 </td>
   <td style="text-align:center;"> 5.93e-04 </td>
   <td style="text-align:center;"> 0.9340 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 915 </td>
   <td style="text-align:center;"> Kelly Clarkson </td>
   <td style="text-align:center;"> 0.583 </td>
   <td style="text-align:center;"> 0.58000 </td>
   <td style="text-align:center;"> 0.0319 </td>
   <td style="text-align:center;"> 2.43e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.1190 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1088 </td>
   <td style="text-align:center;"> Drake </td>
   <td style="text-align:center;"> 0.458 </td>
   <td style="text-align:center;"> 0.45200 </td>
   <td style="text-align:center;"> 0.0470 </td>
   <td style="text-align:center;"> 3.42e-01 </td>
   <td style="text-align:center;"> 1.94e-05 </td>
   <td style="text-align:center;"> 0.3160 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1430 </td>
   <td style="text-align:center;"> Banda El Recodo </td>
   <td style="text-align:center;"> 0.593 </td>
   <td style="text-align:center;"> 0.57700 </td>
   <td style="text-align:center;"> 0.0294 </td>
   <td style="text-align:center;"> 4.54e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.9020 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1158 </td>
   <td style="text-align:center;"> Joan Sebastian </td>
   <td style="text-align:center;"> 0.789 </td>
   <td style="text-align:center;"> 0.43000 </td>
   <td style="text-align:center;"> 0.0877 </td>
   <td style="text-align:center;"> 6.09e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.7420 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 702 </td>
   <td style="text-align:center;"> Keane </td>
   <td style="text-align:center;"> 0.453 </td>
   <td style="text-align:center;"> 0.65500 </td>
   <td style="text-align:center;"> 0.0259 </td>
   <td style="text-align:center;"> 7.94e-02 </td>
   <td style="text-align:center;"> 7.60e-06 </td>
   <td style="text-align:center;"> 0.3680 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 212 </td>
   <td style="text-align:center;"> Coldplay </td>
   <td style="text-align:center;"> 0.460 </td>
   <td style="text-align:center;"> 0.16400 </td>
   <td style="text-align:center;"> 0.0480 </td>
   <td style="text-align:center;"> 9.90e-01 </td>
   <td style="text-align:center;"> 9.53e-01 </td>
   <td style="text-align:center;"> 0.1890 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1610 </td>
   <td style="text-align:center;"> Cali Y El Dandee </td>
   <td style="text-align:center;"> 0.643 </td>
   <td style="text-align:center;"> 0.76900 </td>
   <td style="text-align:center;"> 0.0877 </td>
   <td style="text-align:center;"> 8.58e-02 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.5320 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 403 </td>
   <td style="text-align:center;"> Michael Bubble </td>
   <td style="text-align:center;"> 0.525 </td>
   <td style="text-align:center;"> 0.50200 </td>
   <td style="text-align:center;"> 0.0744 </td>
   <td style="text-align:center;"> 6.76e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.5020 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1137 </td>
   <td style="text-align:center;"> Christian Nodal </td>
   <td style="text-align:center;"> 0.666 </td>
   <td style="text-align:center;"> 0.57400 </td>
   <td style="text-align:center;"> 0.0299 </td>
   <td style="text-align:center;"> 6.57e-01 </td>
   <td style="text-align:center;"> 2.50e-06 </td>
   <td style="text-align:center;"> 0.9370 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1721 </td>
   <td style="text-align:center;"> Los Cadetes De Linares </td>
   <td style="text-align:center;"> 0.828 </td>
   <td style="text-align:center;"> 0.49200 </td>
   <td style="text-align:center;"> 0.0358 </td>
   <td style="text-align:center;"> 3.45e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.7010 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1259 </td>
   <td style="text-align:center;"> Def Squad </td>
   <td style="text-align:center;"> 0.661 </td>
   <td style="text-align:center;"> 0.72700 </td>
   <td style="text-align:center;"> 0.4360 </td>
   <td style="text-align:center;"> 6.27e-02 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.8260 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1154 </td>
   <td style="text-align:center;"> Joan Sebastian </td>
   <td style="text-align:center;"> 0.594 </td>
   <td style="text-align:center;"> 0.39000 </td>
   <td style="text-align:center;"> 0.0396 </td>
   <td style="text-align:center;"> 5.17e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.3400 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 248 </td>
   <td style="text-align:center;"> Filippa Giordano </td>
   <td style="text-align:center;"> 0.151 </td>
   <td style="text-align:center;"> 0.34600 </td>
   <td style="text-align:center;"> 0.0347 </td>
   <td style="text-align:center;"> 9.61e-01 </td>
   <td style="text-align:center;"> 1.17e-02 </td>
   <td style="text-align:center;"> 0.0587 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 813 </td>
   <td style="text-align:center;"> Calvin Harris </td>
   <td style="text-align:center;"> 0.695 </td>
   <td style="text-align:center;"> 0.86900 </td>
   <td style="text-align:center;"> 0.0483 </td>
   <td style="text-align:center;"> 4.10e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.5800 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1050 </td>
   <td style="text-align:center;"> KAROL G </td>
   <td style="text-align:center;"> 0.876 </td>
   <td style="text-align:center;"> 0.62100 </td>
   <td style="text-align:center;"> 0.0564 </td>
   <td style="text-align:center;"> 4.21e-02 </td>
   <td style="text-align:center;"> 1.10e-06 </td>
   <td style="text-align:center;"> 0.4970 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1348 </td>
   <td style="text-align:center;"> Sofi Tukker </td>
   <td style="text-align:center;"> 0.713 </td>
   <td style="text-align:center;"> 0.84000 </td>
   <td style="text-align:center;"> 0.0372 </td>
   <td style="text-align:center;"> 2.35e-02 </td>
   <td style="text-align:center;"> 3.05e-01 </td>
   <td style="text-align:center;"> 0.8670 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 373 </td>
   <td style="text-align:center;"> Michael Bubble </td>
   <td style="text-align:center;"> 0.778 </td>
   <td style="text-align:center;"> 0.64400 </td>
   <td style="text-align:center;"> 0.0380 </td>
   <td style="text-align:center;"> 1.28e-01 </td>
   <td style="text-align:center;"> 5.20e-03 </td>
   <td style="text-align:center;"> 0.8240 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 893 </td>
   <td style="text-align:center;"> Katy Perry </td>
   <td style="text-align:center;"> 0.706 </td>
   <td style="text-align:center;"> 0.84100 </td>
   <td style="text-align:center;"> 0.0418 </td>
   <td style="text-align:center;"> 7.95e-05 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.8610 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 847 </td>
   <td style="text-align:center;"> BTS </td>
   <td style="text-align:center;"> 0.674 </td>
   <td style="text-align:center;"> 0.64000 </td>
   <td style="text-align:center;"> 0.0339 </td>
   <td style="text-align:center;"> 1.51e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.6640 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1829 </td>
   <td style="text-align:center;"> Junior H </td>
   <td style="text-align:center;"> 0.675 </td>
   <td style="text-align:center;"> 0.34200 </td>
   <td style="text-align:center;"> 0.0306 </td>
   <td style="text-align:center;"> 7.70e-01 </td>
   <td style="text-align:center;"> 4.50e-03 </td>
   <td style="text-align:center;"> 0.3830 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 87 </td>
   <td style="text-align:center;"> Sarah Brightman </td>
   <td style="text-align:center;"> 0.294 </td>
   <td style="text-align:center;"> 0.43500 </td>
   <td style="text-align:center;"> 0.0309 </td>
   <td style="text-align:center;"> 9.07e-01 </td>
   <td style="text-align:center;"> 1.82e-03 </td>
   <td style="text-align:center;"> 0.4450 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1914 </td>
   <td style="text-align:center;"> D. Krugga </td>
   <td style="text-align:center;"> 0.528 </td>
   <td style="text-align:center;"> 0.58300 </td>
   <td style="text-align:center;"> 0.3370 </td>
   <td style="text-align:center;"> 5.26e-01 </td>
   <td style="text-align:center;"> 1.13e-02 </td>
   <td style="text-align:center;"> 0.3390 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1398 </td>
   <td style="text-align:center;"> Grupo La Chomba </td>
   <td style="text-align:center;"> 0.777 </td>
   <td style="text-align:center;"> 0.47900 </td>
   <td style="text-align:center;"> 0.0457 </td>
   <td style="text-align:center;"> 7.52e-02 </td>
   <td style="text-align:center;"> 3.65e-04 </td>
   <td style="text-align:center;"> 0.9600 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 256 </td>
   <td style="text-align:center;"> Taylor Swift </td>
   <td style="text-align:center;"> 0.529 </td>
   <td style="text-align:center;"> 0.30400 </td>
   <td style="text-align:center;"> 0.0356 </td>
   <td style="text-align:center;"> 8.62e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.4400 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 889 </td>
   <td style="text-align:center;"> Katie Melua </td>
   <td style="text-align:center;"> 0.566 </td>
   <td style="text-align:center;"> 0.26600 </td>
   <td style="text-align:center;"> 0.0302 </td>
   <td style="text-align:center;"> 5.53e-01 </td>
   <td style="text-align:center;"> 1.03e-02 </td>
   <td style="text-align:center;"> 0.3450 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1195 </td>
   <td style="text-align:center;"> Banda MS de Sergio LizÃ¡rraga </td>
   <td style="text-align:center;"> 0.595 </td>
   <td style="text-align:center;"> 0.55300 </td>
   <td style="text-align:center;"> 0.0313 </td>
   <td style="text-align:center;"> 3.13e-01 </td>
   <td style="text-align:center;"> 5.80e-04 </td>
   <td style="text-align:center;"> 0.6010 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1222 </td>
   <td style="text-align:center;"> Banda El Recodo </td>
   <td style="text-align:center;"> 0.593 </td>
   <td style="text-align:center;"> 0.44800 </td>
   <td style="text-align:center;"> 0.0286 </td>
   <td style="text-align:center;"> 6.47e-01 </td>
   <td style="text-align:center;"> 4.64e-04 </td>
   <td style="text-align:center;"> 0.6790 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1650 </td>
   <td style="text-align:center;"> Las Prez </td>
   <td style="text-align:center;"> 0.808 </td>
   <td style="text-align:center;"> 0.63500 </td>
   <td style="text-align:center;"> 0.1030 </td>
   <td style="text-align:center;"> 6.17e-01 </td>
   <td style="text-align:center;"> 2.76e-05 </td>
   <td style="text-align:center;"> 0.5930 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1056 </td>
   <td style="text-align:center;"> Greeicy </td>
   <td style="text-align:center;"> 0.738 </td>
   <td style="text-align:center;"> 0.26600 </td>
   <td style="text-align:center;"> 0.0737 </td>
   <td style="text-align:center;"> 9.41e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.5830 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 870 </td>
   <td style="text-align:center;"> Amy Macdonald </td>
   <td style="text-align:center;"> 0.628 </td>
   <td style="text-align:center;"> 0.88200 </td>
   <td style="text-align:center;"> 0.0323 </td>
   <td style="text-align:center;"> 2.59e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.8530 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1030 </td>
   <td style="text-align:center;"> Shocking Blue </td>
   <td style="text-align:center;"> 0.512 </td>
   <td style="text-align:center;"> 0.72400 </td>
   <td style="text-align:center;"> 0.0394 </td>
   <td style="text-align:center;"> 4.64e-01 </td>
   <td style="text-align:center;"> 7.31e-02 </td>
   <td style="text-align:center;"> 0.6720 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 663 </td>
   <td style="text-align:center;"> Jason Mraz </td>
   <td style="text-align:center;"> 0.623 </td>
   <td style="text-align:center;"> 0.41700 </td>
   <td style="text-align:center;"> 0.0354 </td>
   <td style="text-align:center;"> 2.96e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.7210 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1751 </td>
   <td style="text-align:center;"> Adan Romero </td>
   <td style="text-align:center;"> 0.692 </td>
   <td style="text-align:center;"> 0.37700 </td>
   <td style="text-align:center;"> 0.0497 </td>
   <td style="text-align:center;"> 5.22e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.9390 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 117 </td>
   <td style="text-align:center;"> Selena Gomez </td>
   <td style="text-align:center;"> 0.826 </td>
   <td style="text-align:center;"> 0.57100 </td>
   <td style="text-align:center;"> 0.0426 </td>
   <td style="text-align:center;"> 2.49e-01 </td>
   <td style="text-align:center;"> 1.66e-05 </td>
   <td style="text-align:center;"> 0.4750 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 943 </td>
   <td style="text-align:center;"> Amy Winehouse </td>
   <td style="text-align:center;"> 0.490 </td>
   <td style="text-align:center;"> 0.72500 </td>
   <td style="text-align:center;"> 0.0392 </td>
   <td style="text-align:center;"> 1.23e-01 </td>
   <td style="text-align:center;"> 2.68e-05 </td>
   <td style="text-align:center;"> 0.3350 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 164 </td>
   <td style="text-align:center;"> Hilary Duff </td>
   <td style="text-align:center;"> 0.461 </td>
   <td style="text-align:center;"> 0.52500 </td>
   <td style="text-align:center;"> 0.0271 </td>
   <td style="text-align:center;"> 5.47e-01 </td>
   <td style="text-align:center;"> 1.40e-03 </td>
   <td style="text-align:center;"> 0.1770 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1078 </td>
   <td style="text-align:center;"> Ozuna </td>
   <td style="text-align:center;"> 0.734 </td>
   <td style="text-align:center;"> 0.77500 </td>
   <td style="text-align:center;"> 0.0614 </td>
   <td style="text-align:center;"> 1.86e-01 </td>
   <td style="text-align:center;"> 5.42e-04 </td>
   <td style="text-align:center;"> 0.7200 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 896 </td>
   <td style="text-align:center;"> Rihanna </td>
   <td style="text-align:center;"> 0.779 </td>
   <td style="text-align:center;"> 0.64000 </td>
   <td style="text-align:center;"> 0.1590 </td>
   <td style="text-align:center;"> 1.55e-04 </td>
   <td style="text-align:center;"> 7.70e-04 </td>
   <td style="text-align:center;"> 0.4980 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 464 </td>
   <td style="text-align:center;"> Kelly Clarkson </td>
   <td style="text-align:center;"> 0.494 </td>
   <td style="text-align:center;"> 0.95800 </td>
   <td style="text-align:center;"> 0.1060 </td>
   <td style="text-align:center;"> 2.74e-04 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.8590 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 337 </td>
   <td style="text-align:center;"> Rita Ora </td>
   <td style="text-align:center;"> 0.649 </td>
   <td style="text-align:center;"> 0.74300 </td>
   <td style="text-align:center;"> 0.0679 </td>
   <td style="text-align:center;"> 3.42e-02 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.3440 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 177 </td>
   <td style="text-align:center;"> Harry Styles </td>
   <td style="text-align:center;"> 0.575 </td>
   <td style="text-align:center;"> 0.62100 </td>
   <td style="text-align:center;"> 0.0320 </td>
   <td style="text-align:center;"> 3.92e-02 </td>
   <td style="text-align:center;"> 4.50e-03 </td>
   <td style="text-align:center;"> 0.2700 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 645 </td>
   <td style="text-align:center;"> Erik Satie </td>
   <td style="text-align:center;"> 0.356 </td>
   <td style="text-align:center;"> 0.13200 </td>
   <td style="text-align:center;"> 0.0417 </td>
   <td style="text-align:center;"> 6.50e-01 </td>
   <td style="text-align:center;"> 4.09e-01 </td>
   <td style="text-align:center;"> 0.0489 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 511 </td>
   <td style="text-align:center;"> Kate Miller-Heidke </td>
   <td style="text-align:center;"> 0.457 </td>
   <td style="text-align:center;"> 0.48000 </td>
   <td style="text-align:center;"> 0.0306 </td>
   <td style="text-align:center;"> 4.01e-01 </td>
   <td style="text-align:center;"> 2.12e-03 </td>
   <td style="text-align:center;"> 0.3020 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 393 </td>
   <td style="text-align:center;"> Rita Ora </td>
   <td style="text-align:center;"> 0.427 </td>
   <td style="text-align:center;"> 0.38300 </td>
   <td style="text-align:center;"> 0.0326 </td>
   <td style="text-align:center;"> 5.91e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.2890 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1161 </td>
   <td style="text-align:center;"> Joan Sebastian </td>
   <td style="text-align:center;"> 0.569 </td>
   <td style="text-align:center;"> 0.48300 </td>
   <td style="text-align:center;"> 0.0421 </td>
   <td style="text-align:center;"> 7.60e-01 </td>
   <td style="text-align:center;"> 4.75e-05 </td>
   <td style="text-align:center;"> 0.6240 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 150 </td>
   <td style="text-align:center;"> Hilary Duff </td>
   <td style="text-align:center;"> 0.590 </td>
   <td style="text-align:center;"> 0.86900 </td>
   <td style="text-align:center;"> 0.0382 </td>
   <td style="text-align:center;"> 1.04e-02 </td>
   <td style="text-align:center;"> 2.56e-03 </td>
   <td style="text-align:center;"> 0.4580 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 755 </td>
   <td style="text-align:center;"> OutKast </td>
   <td style="text-align:center;"> 0.715 </td>
   <td style="text-align:center;"> 0.97000 </td>
   <td style="text-align:center;"> 0.0648 </td>
   <td style="text-align:center;"> 6.44e-02 </td>
   <td style="text-align:center;"> 1.56e-04 </td>
   <td style="text-align:center;"> 0.9630 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 166 </td>
   <td style="text-align:center;"> Hilary Duff </td>
   <td style="text-align:center;"> 0.596 </td>
   <td style="text-align:center;"> 0.90800 </td>
   <td style="text-align:center;"> 0.0775 </td>
   <td style="text-align:center;"> 6.14e-03 </td>
   <td style="text-align:center;"> 1.45e-04 </td>
   <td style="text-align:center;"> 0.5230 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1706 </td>
   <td style="text-align:center;"> Edwin Luna y La Trakalosa de Monterrey </td>
   <td style="text-align:center;"> 0.492 </td>
   <td style="text-align:center;"> 0.54800 </td>
   <td style="text-align:center;"> 0.0353 </td>
   <td style="text-align:center;"> 4.90e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.7210 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1784 </td>
   <td style="text-align:center;"> Remmy Valenzuela </td>
   <td style="text-align:center;"> 0.712 </td>
   <td style="text-align:center;"> 0.85400 </td>
   <td style="text-align:center;"> 0.0572 </td>
   <td style="text-align:center;"> 1.44e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.8540 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 958 </td>
   <td style="text-align:center;"> Lea Salonga </td>
   <td style="text-align:center;"> 0.595 </td>
   <td style="text-align:center;"> 0.51700 </td>
   <td style="text-align:center;"> 0.0248 </td>
   <td style="text-align:center;"> 2.04e-01 </td>
   <td style="text-align:center;"> 2.96e-05 </td>
   <td style="text-align:center;"> 0.5910 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 655 </td>
   <td style="text-align:center;"> Erik Satie </td>
   <td style="text-align:center;"> 0.518 </td>
   <td style="text-align:center;"> 0.00344 </td>
   <td style="text-align:center;"> 0.0708 </td>
   <td style="text-align:center;"> 9.91e-01 </td>
   <td style="text-align:center;"> 9.33e-01 </td>
   <td style="text-align:center;"> 0.4860 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1584 </td>
   <td style="text-align:center;"> Lele Pons </td>
   <td style="text-align:center;"> 0.905 </td>
   <td style="text-align:center;"> 0.68600 </td>
   <td style="text-align:center;"> 0.0664 </td>
   <td style="text-align:center;"> 9.07e-02 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.9630 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 614 </td>
   <td style="text-align:center;"> Twenty One Pilots </td>
   <td style="text-align:center;"> 0.734 </td>
   <td style="text-align:center;"> 0.60700 </td>
   <td style="text-align:center;"> 0.0806 </td>
   <td style="text-align:center;"> 7.47e-02 </td>
   <td style="text-align:center;"> 5.77e-04 </td>
   <td style="text-align:center;"> 0.5180 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 133 </td>
   <td style="text-align:center;"> Selena Gomez &amp; The Scene </td>
   <td style="text-align:center;"> 0.526 </td>
   <td style="text-align:center;"> 0.64000 </td>
   <td style="text-align:center;"> 0.0393 </td>
   <td style="text-align:center;"> 6.87e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.2270 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1329 </td>
   <td style="text-align:center;"> Hi I'm Ghost </td>
   <td style="text-align:center;"> 0.353 </td>
   <td style="text-align:center;"> 0.99200 </td>
   <td style="text-align:center;"> 0.6600 </td>
   <td style="text-align:center;"> 1.62e-03 </td>
   <td style="text-align:center;"> 1.30e-06 </td>
   <td style="text-align:center;"> 0.1120 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 555 </td>
   <td style="text-align:center;"> Maroon 5 </td>
   <td style="text-align:center;"> 0.739 </td>
   <td style="text-align:center;"> 0.75600 </td>
   <td style="text-align:center;"> 0.0394 </td>
   <td style="text-align:center;"> 1.36e-02 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.5230 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 447 </td>
   <td style="text-align:center;"> Kelly Clarkson </td>
   <td style="text-align:center;"> 0.481 </td>
   <td style="text-align:center;"> 0.47300 </td>
   <td style="text-align:center;"> 0.0433 </td>
   <td style="text-align:center;"> 7.54e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.4920 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1846 </td>
   <td style="text-align:center;"> LDNE </td>
   <td style="text-align:center;"> 0.478 </td>
   <td style="text-align:center;"> 0.66500 </td>
   <td style="text-align:center;"> 0.0513 </td>
   <td style="text-align:center;"> 3.87e-01 </td>
   <td style="text-align:center;"> 5.94e-05 </td>
   <td style="text-align:center;"> 0.5620 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1203 </td>
   <td style="text-align:center;"> Diego Herrera </td>
   <td style="text-align:center;"> 0.715 </td>
   <td style="text-align:center;"> 0.60700 </td>
   <td style="text-align:center;"> 0.0319 </td>
   <td style="text-align:center;"> 3.89e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.8640 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1156 </td>
   <td style="text-align:center;"> Joan Sebastian </td>
   <td style="text-align:center;"> 0.574 </td>
   <td style="text-align:center;"> 0.34400 </td>
   <td style="text-align:center;"> 0.1240 </td>
   <td style="text-align:center;"> 6.96e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.9620 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 308 </td>
   <td style="text-align:center;"> Ed Sheeran </td>
   <td style="text-align:center;"> 0.791 </td>
   <td style="text-align:center;"> 0.66900 </td>
   <td style="text-align:center;"> 0.1460 </td>
   <td style="text-align:center;"> 1.75e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.8090 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 92 </td>
   <td style="text-align:center;"> Sarah Brightman </td>
   <td style="text-align:center;"> 0.434 </td>
   <td style="text-align:center;"> 0.38900 </td>
   <td style="text-align:center;"> 0.0301 </td>
   <td style="text-align:center;"> 7.86e-01 </td>
   <td style="text-align:center;"> 8.65e-03 </td>
   <td style="text-align:center;"> 0.1570 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1857 </td>
   <td style="text-align:center;"> Alta Elegancia </td>
   <td style="text-align:center;"> 0.601 </td>
   <td style="text-align:center;"> 0.65900 </td>
   <td style="text-align:center;"> 0.0346 </td>
   <td style="text-align:center;"> 4.92e-01 </td>
   <td style="text-align:center;"> 1.68e-03 </td>
   <td style="text-align:center;"> 0.9640 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1905 </td>
   <td style="text-align:center;"> V.Rod </td>
   <td style="text-align:center;"> 0.803 </td>
   <td style="text-align:center;"> 0.47100 </td>
   <td style="text-align:center;"> 0.2560 </td>
   <td style="text-align:center;"> 5.24e-01 </td>
   <td style="text-align:center;"> 1.70e-06 </td>
   <td style="text-align:center;"> 0.3780 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1024 </td>
   <td style="text-align:center;"> Carpenters </td>
   <td style="text-align:center;"> 0.533 </td>
   <td style="text-align:center;"> 0.24500 </td>
   <td style="text-align:center;"> 0.0326 </td>
   <td style="text-align:center;"> 7.07e-01 </td>
   <td style="text-align:center;"> 4.21e-05 </td>
   <td style="text-align:center;"> 0.2360 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 616 </td>
   <td style="text-align:center;"> Twenty One Pilots </td>
   <td style="text-align:center;"> 0.620 </td>
   <td style="text-align:center;"> 0.61000 </td>
   <td style="text-align:center;"> 0.0373 </td>
   <td style="text-align:center;"> 8.49e-03 </td>
   <td style="text-align:center;"> 1.62e-01 </td>
   <td style="text-align:center;"> 0.2350 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1594 </td>
   <td style="text-align:center;"> Rauw Alejandro </td>
   <td style="text-align:center;"> 0.824 </td>
   <td style="text-align:center;"> 0.63100 </td>
   <td style="text-align:center;"> 0.0809 </td>
   <td style="text-align:center;"> 2.37e-01 </td>
   <td style="text-align:center;"> 1.16e-04 </td>
   <td style="text-align:center;"> 0.6780 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 779 </td>
   <td style="text-align:center;"> David Guetta </td>
   <td style="text-align:center;"> 0.586 </td>
   <td style="text-align:center;"> 0.81700 </td>
   <td style="text-align:center;"> 0.0454 </td>
   <td style="text-align:center;"> 1.57e-04 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.4640 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 551 </td>
   <td style="text-align:center;"> Maroon 5 </td>
   <td style="text-align:center;"> 0.675 </td>
   <td style="text-align:center;"> 0.79000 </td>
   <td style="text-align:center;"> 0.0369 </td>
   <td style="text-align:center;"> 1.29e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.4230 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 254 </td>
   <td style="text-align:center;"> Taylor Swift </td>
   <td style="text-align:center;"> 0.593 </td>
   <td style="text-align:center;"> 0.70000 </td>
   <td style="text-align:center;"> 0.0492 </td>
   <td style="text-align:center;"> 6.70e-01 </td>
   <td style="text-align:center;"> 6.80e-06 </td>
   <td style="text-align:center;"> 0.4510 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:center;"> Celtic Woman </td>
   <td style="text-align:center;"> 0.612 </td>
   <td style="text-align:center;"> 0.53800 </td>
   <td style="text-align:center;"> 0.0284 </td>
   <td style="text-align:center;"> 7.56e-01 </td>
   <td style="text-align:center;"> 1.18e-03 </td>
   <td style="text-align:center;"> 0.5230 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1396 </td>
   <td style="text-align:center;"> ICC </td>
   <td style="text-align:center;"> 0.738 </td>
   <td style="text-align:center;"> 0.68400 </td>
   <td style="text-align:center;"> 0.0343 </td>
   <td style="text-align:center;"> 1.29e-01 </td>
   <td style="text-align:center;"> 6.40e-06 </td>
   <td style="text-align:center;"> 0.8410 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1281 </td>
   <td style="text-align:center;"> EPMD </td>
   <td style="text-align:center;"> 0.734 </td>
   <td style="text-align:center;"> 0.46600 </td>
   <td style="text-align:center;"> 0.4640 </td>
   <td style="text-align:center;"> 2.43e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.7880 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 285 </td>
   <td style="text-align:center;"> Ed Sheeran </td>
   <td style="text-align:center;"> 0.747 </td>
   <td style="text-align:center;"> 0.76000 </td>
   <td style="text-align:center;"> 0.1870 </td>
   <td style="text-align:center;"> 4.48e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.6820 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1389 </td>
   <td style="text-align:center;"> Grupo Pesadilla </td>
   <td style="text-align:center;"> 0.753 </td>
   <td style="text-align:center;"> 0.73600 </td>
   <td style="text-align:center;"> 0.0354 </td>
   <td style="text-align:center;"> 7.73e-02 </td>
   <td style="text-align:center;"> 2.53e-04 </td>
   <td style="text-align:center;"> 0.9430 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1189 </td>
   <td style="text-align:center;"> Grupo Firme </td>
   <td style="text-align:center;"> 0.652 </td>
   <td style="text-align:center;"> 0.52400 </td>
   <td style="text-align:center;"> 0.0311 </td>
   <td style="text-align:center;"> 3.31e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.3960 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1631 </td>
   <td style="text-align:center;"> Las Prez </td>
   <td style="text-align:center;"> 0.741 </td>
   <td style="text-align:center;"> 0.86100 </td>
   <td style="text-align:center;"> 0.0969 </td>
   <td style="text-align:center;"> 2.70e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.4650 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 841 </td>
   <td style="text-align:center;"> BTS </td>
   <td style="text-align:center;"> 0.703 </td>
   <td style="text-align:center;"> 0.64600 </td>
   <td style="text-align:center;"> 0.0596 </td>
   <td style="text-align:center;"> 1.04e-02 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.6400 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1097 </td>
   <td style="text-align:center;"> Drake </td>
   <td style="text-align:center;"> 0.543 </td>
   <td style="text-align:center;"> 0.76600 </td>
   <td style="text-align:center;"> 0.3430 </td>
   <td style="text-align:center;"> 4.23e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.7290 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 128 </td>
   <td style="text-align:center;"> Selena Gomez </td>
   <td style="text-align:center;"> 0.838 </td>
   <td style="text-align:center;"> 0.54500 </td>
   <td style="text-align:center;"> 0.0706 </td>
   <td style="text-align:center;"> 2.08e-01 </td>
   <td style="text-align:center;"> 8.01e-05 </td>
   <td style="text-align:center;"> 0.6310 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 572 </td>
   <td style="text-align:center;"> OneRepublic </td>
   <td style="text-align:center;"> 0.359 </td>
   <td style="text-align:center;"> 0.71300 </td>
   <td style="text-align:center;"> 0.0366 </td>
   <td style="text-align:center;"> 3.30e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.2720 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 944 </td>
   <td style="text-align:center;"> James Blunt </td>
   <td style="text-align:center;"> 0.432 </td>
   <td style="text-align:center;"> 0.26100 </td>
   <td style="text-align:center;"> 0.0512 </td>
   <td style="text-align:center;"> 9.53e-01 </td>
   <td style="text-align:center;"> 3.42e-03 </td>
   <td style="text-align:center;"> 0.2730 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 819 </td>
   <td style="text-align:center;"> Dick Van Dyke </td>
   <td style="text-align:center;"> 0.369 </td>
   <td style="text-align:center;"> 0.25200 </td>
   <td style="text-align:center;"> 0.1010 </td>
   <td style="text-align:center;"> 8.46e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.4360 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1332 </td>
   <td style="text-align:center;"> TJR </td>
   <td style="text-align:center;"> 0.761 </td>
   <td style="text-align:center;"> 0.93900 </td>
   <td style="text-align:center;"> 0.0463 </td>
   <td style="text-align:center;"> 7.97e-04 </td>
   <td style="text-align:center;"> 7.24e-01 </td>
   <td style="text-align:center;"> 0.2180 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 629 </td>
   <td style="text-align:center;"> Muse </td>
   <td style="text-align:center;"> 0.599 </td>
   <td style="text-align:center;"> 0.92600 </td>
   <td style="text-align:center;"> 0.0676 </td>
   <td style="text-align:center;"> 4.54e-04 </td>
   <td style="text-align:center;"> 2.68e-05 </td>
   <td style="text-align:center;"> 0.6060 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1907 </td>
   <td style="text-align:center;"> Charles Ans </td>
   <td style="text-align:center;"> 0.768 </td>
   <td style="text-align:center;"> 0.60200 </td>
   <td style="text-align:center;"> 0.0743 </td>
   <td style="text-align:center;"> 1.15e-02 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.6320 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1313 </td>
   <td style="text-align:center;"> Alok </td>
   <td style="text-align:center;"> 0.757 </td>
   <td style="text-align:center;"> 0.83400 </td>
   <td style="text-align:center;"> 0.0452 </td>
   <td style="text-align:center;"> 4.28e-03 </td>
   <td style="text-align:center;"> 3.01e-04 </td>
   <td style="text-align:center;"> 0.2940 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 544 </td>
   <td style="text-align:center;"> Maroon 5 </td>
   <td style="text-align:center;"> 0.608 </td>
   <td style="text-align:center;"> 0.90900 </td>
   <td style="text-align:center;"> 0.0349 </td>
   <td style="text-align:center;"> 5.16e-02 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.6170 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1221 </td>
   <td style="text-align:center;"> La Adictiva Banda San JosÃ© de Mesillas </td>
   <td style="text-align:center;"> 0.837 </td>
   <td style="text-align:center;"> 0.69400 </td>
   <td style="text-align:center;"> 0.0346 </td>
   <td style="text-align:center;"> 4.14e-01 </td>
   <td style="text-align:center;"> 2.80e-06 </td>
   <td style="text-align:center;"> 0.9730 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 652 </td>
   <td style="text-align:center;"> Erik Satie </td>
   <td style="text-align:center;"> 0.238 </td>
   <td style="text-align:center;"> 0.00656 </td>
   <td style="text-align:center;"> 0.0480 </td>
   <td style="text-align:center;"> 9.95e-01 </td>
   <td style="text-align:center;"> 8.65e-01 </td>
   <td style="text-align:center;"> 0.0368 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1639 </td>
   <td style="text-align:center;"> Ovi </td>
   <td style="text-align:center;"> 0.799 </td>
   <td style="text-align:center;"> 0.79100 </td>
   <td style="text-align:center;"> 0.0991 </td>
   <td style="text-align:center;"> 5.26e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.6430 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 827 </td>
   <td style="text-align:center;"> Lea Salonga </td>
   <td style="text-align:center;"> 0.293 </td>
   <td style="text-align:center;"> 0.20600 </td>
   <td style="text-align:center;"> 0.0341 </td>
   <td style="text-align:center;"> 8.53e-01 </td>
   <td style="text-align:center;"> 1.50e-06 </td>
   <td style="text-align:center;"> 0.1910 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1035 </td>
   <td style="text-align:center;"> Fler </td>
   <td style="text-align:center;"> 0.749 </td>
   <td style="text-align:center;"> 0.47400 </td>
   <td style="text-align:center;"> 0.1970 </td>
   <td style="text-align:center;"> 5.59e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.2830 </td>
   <td style="text-align:center;"> yes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1432 </td>
   <td style="text-align:center;"> Mi Banda El Mexicano </td>
   <td style="text-align:center;"> 0.809 </td>
   <td style="text-align:center;"> 0.81500 </td>
   <td style="text-align:center;"> 0.0331 </td>
   <td style="text-align:center;"> 6.75e-02 </td>
   <td style="text-align:center;"> 1.63e-03 </td>
   <td style="text-align:center;"> 0.9900 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1573 </td>
   <td style="text-align:center;"> Voz De Mando </td>
   <td style="text-align:center;"> 0.898 </td>
   <td style="text-align:center;"> 0.79500 </td>
   <td style="text-align:center;"> 0.0361 </td>
   <td style="text-align:center;"> 7.20e-02 </td>
   <td style="text-align:center;"> 9.60e-04 </td>
   <td style="text-align:center;"> 0.9740 </td>
   <td style="text-align:center;"> no </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1214 </td>
   <td style="text-align:center;"> ChayÃ­n Rubio </td>
   <td style="text-align:center;"> 0.377 </td>
   <td style="text-align:center;"> 0.61000 </td>
   <td style="text-align:center;"> 0.0396 </td>
   <td style="text-align:center;"> 4.14e-01 </td>
   <td style="text-align:center;"> 0.00e+00 </td>
   <td style="text-align:center;"> 0.4390 </td>
   <td style="text-align:center;"> no </td>
  </tr>
</tbody>
</table></div>


Dataset
========================================================

In the following images you can see the top 5 artists belonging to the Yes class (left) and the top 5 artists belonging to the No class (right).


![plot of chunk unnamed-chunk-2](Spotify Presentation-figure/unnamed-chunk-2-1.png)


As future work, we intend to include this type of visual analysis within the app, so that the user can explore its content.


Dataset
========================================================

The application makes use of the numerical attributes obtained from each song to predict whether a person will like a song or not. To achieve this, a decision tree was used.

<center><img src="App.PNG" alt="App"></center>


App
========================================================

To use the Music Spotify app please, click [here](https://www.google.com).

To view the source code of the project, please head to [github](https://www.google.com).

Thanks!
