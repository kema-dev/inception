<div id="top"></div>
<p align=center>
  <img alt="Project's status" src="https://img.shields.io/badge/Status-Old%20and%20not%20maintained-red">
  <img alt="Project's primary language" src="https://img.shields.io/badge/Language-Docker-blue">
  <img alt="Project's focus" src="https://img.shields.io/badge/Focus-Containerized%20website-blue">
</p>

<!-- PROJECT LOGO -->
<br />
<div align="center" style="height:200px; margin-bottom:10%">
  <a>
    <img src="assets/docker_moby.png" alt="Docker logo">
  </a>
</div>

<!-- TABLE OF CONTENTS -->
<summary>Table of Contents</summary>
<ol>
<li>
	<a href="#about-the-project">About The Project</a>
	<ul>
	<li><a href="#built-with">Built With</a></li>
	</ul>
</li>
<li>
	<a href="#getting-started">Getting Started</a>
	<ul>
	<li><a href="#prerequisites">Prerequisites</a></li>
	<li><a href="#installation">Installation</a></li>
	</ul>
</li>
<li><a href="#usage">Usage</a></li>
<li><a href="#roadmap">Roadmap</a></li>
<li><a href="#contact">Contact</a></li>
<li><a href="#acknowledgments">Acknowledgments</a></li>
</ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

<!-- TODO Put images from the project here -->

inception is a 42 project, aiming to host a basic wordpress using [Docker](https://www.docker.com/). All dockerfiles and config files are custom created.

You can find complete subject <a href="docs/">here</a>.

### Built With

* <a href="https://www.docker.com/" target="_blank" title="Docker's website">Docker</a>

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

* [Docker and Docker compose](https://docs.docker.com/compose/install/)

### Installation

1. Clone the repo

```sh
git clone https://github.com/kema-dev/inception.git
```

1. Go to repository's folder

```sh
cd inception
```

<!-- USAGE EXAMPLES -->
## Usage

* Build the project and make it available !

```sh
docker-compose -p inception ps
```

* You might want to use this command to show database's tables

```sh
exec mariadb
mysql -u wordpress -p
SHOW DATABASES;
use wordpress
show tables;
```

<!-- ROADMAP -->
## Roadmap

* To be decided

See the [open issues](https://github.com/kema-dev/inception/issues) for a full list of proposed features (and known issues).

<!-- CONTACT -->
## Contact

kema-dev - [GitHub](https://github.com/kema-dev)

<!-- TODO Add Ocean and Thomas as creators -->

## Acknowledgments

* [Img Shields](https://shields.io)
* [README.MD-Template](https://github.com/othneildrew/Best-README-Template)
