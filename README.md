# Introduction
Stage Crisartech developpement d'une application pour mobile/tablette cross-platform.
Flutter est un kit de développement logiciel pour construire des applications haute performance et haute fidélité iOS, Android, Web(beta), and desktop(technical preview) depuis une simplebase de code écrite en langage Dart. Dans Flutter tout est widget, tout comme les types natifs int, double..etc .
Il existe 3 grandes catégories de widget : 
* Stateless : widgets qui ne peuvent pas changer d'etat
* Stateful
* Inherited

Un compte rendu de chaque semaine sera décrit dans ce Readme afin de suivre l'avancée du projet, ainsi que des releases à chaque grandes étapes de l'application.

Voici le lien vers mon rapport de stage : https://docs.google.com/document/d/114Eu-01GwE1Zb8lthhAKNn8hiFwyuyJBLdizLCjJCiI/edit?usp=sharing 

# Structure de l'application Flutter


image::struct_fluter.png[] 

Une fois l'application flutter ouverte dans VScode il y aura peut être besoin de mettre à jour les packages depuis git en utilisant la commande : _flutter packages get_

Ajout de plusieurs packages pour organiser au mieux l'application en vue d'une maintenance ou d'une extension :
* assets : cela nous permettra de centraliser tous les actifs statiques pour l'interface utilsateur, possiilité de faire des sous-packages selon les types : polices, icones, logos, images de fond, demo videos.
* cloud_functions : fonctions liées à l'usage du cloud pour stocker des données par exemple lorsque l'on clique sur un bouton
* screens : layout de toute l'interface utilisateur exemple : page de connexion, page d'accueil et autres (situé dans le package lib)
* providers : contiendra toutes les interactions qui transfèrent des données depuis l'extérieur de l'appli (mais n'intéragit pas avec les serveur) (situé dans le package lib)
* widgets : pour les widgets utilisés plusieurs fois dans une application (situé dans le package lib)
* models : collection de données tirées de serveurs, utilisateurs ou API extérieures (situé dans le package lib)
* utilities : contiendra toute la logique de l'application exemple : changer l'affichage des données en fonction d'une action utilisateur

# Impact environnemental

Afin de limiter mon impact sur l'environnement suite au module numérique responsable pour me former je préfère consulter des sites web plutôt de que des videos tuto, mes principales sources actuelles sont : 
* Stackoverflow.com
* Geeksforgeeks.org
* Flutter.dev
