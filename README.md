# Open NFO File Standard

Welcome to the Open NFO File Standard repository! This project aims to create a unified, open standard for .nfo files used in various media applications, eliminating the need for each application to create its own format. This standard is designed to cover 95% of use cases, with built-in extensibility for fringe cases.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [File Structure](#file-structure)
- [Example XML File](#example-xml-file)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Overview

The Open NFO File Standard is designed to provide a consistent and comprehensive metadata format for media files. By adopting this standard, applications can save countless hours reinventing the wheel and ensure compatibility across different platforms.

## Features

- **Unified Structure**: A single, comprehensive format for .nfo files.
- **Extensibility**: Easily extendable to cover fringe use cases.
- **Modularity**: Separate XSLT files for different types of content (Movies, TV Shows, Porn Videos, Anime).
- **Open Source**: Licensed under The Unlicense, making it free for everyone to use and contribute.

## File Structure

- `main.xsd`: The master XSD file that includes or imports other XSD files based on the content type.
- `common.xsd`: Contains common custom content types.
- `person.xsd`: Contains common elements for the person types associated with the content.
- `movie.xsd`: Specific schema definitions for movie content.
- `tvshow.xsd`: Specific schema definitions for TV show content.
- `adult.xsd`: Specific schema definitions for adult video content.
- `anime.xsd`: Specific schema definitions for anime content.
- `video.xsd`: Specific schema definitions for general video content.
- `music.xsd`: Specific schema definitions for music content.
- `audiobook.xsd`: Specific schema definitions for audiobook content.
- `podcast.xsd`: Specific schema definitions for podcast content.
- `musicvideo.xsd`: Specific schema definitions for music video content.


## Example XML File
This is an example of how to use the XSDs to reference it so that it's easy for others to understand and apps to extract the content.
```
<?xml version="1.0" encoding="UTF-8"?>
<media xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:MetadataSchemaLocation="https://raw.githubusercontent.com/Biztactix/Standard-MediaFormat/main/main.xsd">
  <movie xmlns="movie">
    <title>Inception</title>
    <originaltitle>Inception</originaltitle>
    <sorttitle>Inception</sorttitle>
    <alternatetitle>Origem</alternatetitle>
    <alternatetitle>Début</alternatetitle>
    <rating name="imdb" max="10" default="true">
      <value>8.8</value>
      <votes>2000000</votes>
    </rating>
    <userrating>9.0</userrating>
    <outline>A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.</outline>
    <plot>Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction: stealing valuable secrets from deep within the subconscious during the dream state when the mind is at its most vulnerable. Cobb's rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible, inception.</plot>
    <tagline>Your mind is the scene of the crime.</tagline>
    <runtime>148</runtime>
    <thumb>poster.jpg</thumb>
    <thumb aspect="poster" preview="poster-preview.jpg"/>
    <fanart>fanart1.jpg</fanart>
    <fanart>fanart2.jpg</fanart>
    <contentrating Country="USA" board="MPAA" Rating="PG-13" image="mpaa_pg13.png"/>
    <uniqueid type="imdb" default="true">tt1375666</uniqueid>
    <uniqueid type="tmdb">12345</uniqueid>
    <genre>Action</genre>
    <genre>Sci-Fi</genre>
    <tag>Heist</tag>
    <tag>Dream</tag>
    <setname>Inception Series</setname>
    <setoverview>Movies about dream extraction.</setoverview>
    <country>USA</country>
    <productioncompany>Warner Bros.</productioncompany>
    <keyword>dream</keyword>
    <keyword>heist</keyword>
    <releasedate>2010-07-16</releasedate>
    <award>Academy Award for Best Cinematography</award>
    <subtitlelanguage>English</subtitlelanguage>
    <soundtrack>Inception OST</soundtrack>
    <parentalguide>Some material may be inappropriate for children under 13.</parentalguide>
    <actor>
      <name>Leonardo DiCaprio</name>
      <role>Dom Cobb</role>
      <order>1</order>
      <thumb>leo.jpg</thumb>
      <bio>Leonardo Wilhelm DiCaprio is an American actor and film producer.</bio>
      <url>https://www.imdb.com/name/nm0000138/</url>
    </actor>
    <actor>
      <name>Joseph Gordon-Levitt</name>
      <role>Arthur</role>
      <order>2</order>
      <thumb>joseph.jpg</thumb>
      <bio>Joseph Leonard Gordon-Levitt is an American actor and filmmaker.</bio>
      <url>https://www.imdb.com/name/nm0330687/</url>
    </actor>
    <director>
      <name>Christopher Nolan</name>
      <thumb>nolan.jpg</thumb>
      <bio>Christopher Edward Nolan is a British-American film director, screenwriter, and producer.</bio>
      <url>https://www.imdb.com/name/nm0634240/</url>
    </director>
    <writer>
      <name>Christopher Nolan</name>
      <thumb>nolan.jpg</thumb>
      <bio>Christopher Edward Nolan is a British-American film director, screenwriter, and producer.</bio>
      <url>https://www.imdb.com/name/nm0634240/</url>
    </writer>
  </movie>
</media>

```

## Contributing

We welcome contributions from the community! 
I will endeavor to review and approve pull requests in a timely manner.

## License

This project is licensed under The Unlicense, which means it is free to use for everyone. See the LICENSE file for more details.

## Contact

For any questions or comments, please open an issue on this repository.

---

Thank you for your interest in the Open NFO File Standard. Together, we can make media metadata management easier and more consistent for everyone!
