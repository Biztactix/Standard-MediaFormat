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

- `main.xslt`: The master XSLT file that includes or imports other XSLT files based on the content type.
- `common.xslt`: Contains common templates and styles used across different content types.
- `movie.xslt`: Specific transformations for movie content.
- `tvshow.xslt`: Specific transformations for TV show content.
- `porn.xslt`: Specific transformations for porn video content.
- `anime.xslt`: Specific transformations for anime content.

## Example XML File
This is an example of how to use the XSLTs to reference it so that it's easy for others to understand and apps to extract the content.
```
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="https://raw.githubusercontent.com/Biztactix/Standard-MediaFormat/main.xslt"?>

<movie>
  <title>Inception</title>
  <originaltitle>Inception</originaltitle>
  <sorttitle>Inception</sorttitle>
  <year>2010</year>
  <rating>8.8</rating>
  <votes>2000000</votes>
  <plot>A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.</plot>
  <tagline>Your mind is the scene of the crime.</tagline>
  <runtime>148</runtime>
  <thumb aspect="poster">poster.jpg</thumb>
  <fanart>
    <thumb preview="fanart1.jpg">fanart1.jpg</thumb>
    <thumb preview="fanart2.jpg">fanart2.jpg</thumb>
  </fanart>
  <mpaa>PG-13</mpaa>
  <playcount>3</playcount>
  <lastplayed>2024-05-20</lastplayed>
  <id>tt1375666</id>
  <uniqueid type="imdb" default="true">tt1375666</uniqueid>
  <uniqueid type="tmdb">12345</uniqueid>
  <genre>Action</genre>
  <genre>Sci-Fi</genre>
  <country>USA</country>
  <credits>Christopher Nolan</credits>
  <director>Christopher Nolan</director>
  <premiered>2010-07-16</premiered>
  <studio>Warner Bros.</studio>
  <trailer>http://example.com/trailer.mp4</trailer>
  <fileinfo>
    <streamdetails>
      <video>
        <codec>h264</codec>
        <aspect>2.35</aspect>
        <width>1920</width>
        <height>1080</height>
        <durationinseconds>8880</durationinseconds>
      </video>
      <audio>
        <codec>aac</codec>
        <language>en</language>
        <channels>6</channels>
      </audio>
      <subtitle>
        <language>en</language>
      </subtitle>
    </streamdetails>
  </fileinfo>
  <actor>
    <name>Leonardo DiCaprio</name>
    <role>Dom Cobb</role>
    <thumb>leo.jpg</thumb>
  </actor>
  <actor>
    <name>Joseph Gordon-Levitt</name>
    <role>Arthur</role>
    <thumb>joseph.jpg</thumb>
  </actor>
</movie>
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
