# Introduction
Stage Crisartech developpement d'une application pour mobile/tablette cross-platform 

Un compte rendu de chaque semaine sera décrit dans ce Readme afin de suivre l'avancée du projet. 

Voici le lien vers mon rapport de stage : https://docs.google.com/document/d/114Eu-01GwE1Zb8lthhAKNn8hiFwyuyJBLdizLCjJCiI/edit?usp=sharing 

Voici le lien vers ma soutenance de stage : 

# Structure de l'application Flutter


image::struct_fluter.png[] 

Une fois l'application flutter ouverte dans VScode il y aura peut être besoin de mettre à jour les packages depuis git en utilisant la commande : _flutter packages get_

Ajout de plusieurs packages pour organiser au mieux l'application en vue d'une maintenance ou d'une extension :
* Le package assets : cela nous permettra de centraliser tous les actifs statiques pour l'interface utilsateur, possiilité de faire des sous-packages selon les types : polices, icones, logos, images de fond, demo videos.
