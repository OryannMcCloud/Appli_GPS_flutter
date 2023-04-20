# Introduction
Stage Crisartech developpement d'une application pour mobile/tablette cross-platform.
Flutter est un kit de développement logiciel pour construire des applications haute performance et haute fidélité iOS, Android, Web(beta), and desktop(technical preview) depuis une simplebase de code écrite en langage Dart. Dans Flutter tout est widget, tout comme les types natifs int, double..etc .
Il existe 3 grandes catégories de widget : 
* Stateless : widgets qui ne peuvent pas changer d'etat
* Stateful : leur etat peut changer au cours de leur vie
* Inherited

Pour le codage sur IOS il est necessaire de faire des configurations suplémentaires sur vscode. On peut utiliser un appareil iOS que l'on possède ou utiliser un service cloud tel que Firebase Test Lab ou BrowserStack pour tester notre application sur différents appareils iOS.

Un compte rendu de chaque semaine sera décrit dans ce Readme afin de suivre l'avancée du projet, ainsi que des releases à chaque grandes étapes de l'application.

Voici le lien vers mon rapport de stage : https://docs.google.com/document/d/114Eu-01GwE1Zb8lthhAKNn8hiFwyuyJBLdizLCjJCiI/edit?usp=sharing 

Voici le lien vers les maquettes de l'application : https://www.canva.com/design/DAFghi-GNRc/7YHYE0Vj2bPN6YGFlJO4Ag/edit?utm_content=DAFghi-GNRc&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton

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

Pour lancer l'application, activer le mode développeur sur le téléphone et l'USB debugging puis entrer la commande _flutter run_ dans le terminal.
Pour vérifier que notre appareil est détecté par flutter faire la commande : _flutter devices_

=== Explications widgets et attributs

* Scaffold est un widget de base dans Flutter qui fournit une structure de page de base pour une application. Il permet de définir l'interface utilisateur de manière modulaire en divisant la page en sections telles que la barre d'applications, le corps de l'application, le pied de page, etc. Il permet également de fournir plusieurs fonctionnalités courantes telles que la gestion de la navigation, la gestion des barres d'outils, la gestion des fonds, la gestion des onglets, etc. Cela facilite le développement d'applications en permettant aux développeurs de se concentrer sur le contenu de l'application plutôt que sur les détails de mise en page et de navigation.

* La différence entre child et children c'est que child ne prend qu'un widget et chhildrn prend une liste de widgets

* const est utilisé quand la valeur d'une variable est connue à la compilation et ne change pas. Cela va permettre à l'execution de ne pas chercher la valeur de la variable plusieurs fois et de seulement copier autant de fois que nécessaire.

* Le typage en Flutter est dynamique !

* La redirection par les boutons se fait dans la fonction onPressed() et utilise la fonction Navigator.push()

* Pour tester sur IOS on doit obligatoirement avoir un appareil apple physique pour tester car on ne peut avoir accès aux emulateurs qu'au travers d'un Mac. Pour tester à distance notre application sur un appareil Apple on peut utiliser service basé sur le cloud comme Firebase Test Lab ou AWS Device Farm.

=== Branches 

Je vais utiliser des branches temporairement pour chaque page qui n'est pas encore opérationnelle, cela me permettra de garder un code qui fonctionne sur la branche principale "master".
* branche_page_login : presque terminée mais bug au runtime

# GPS en Flutter 

Ajout du package fleaflet/flutter_map en passant par la commande _flutter pub add flutter_map_ pour avoir accès à openstreet map depuis l'application.

# Pages de l'application

* Le fichier map.dart contiendra la carte
* Le fichier login.dart contiendra la page de login au lancement de l'application par défaut : presque finie 
* le fichier home.dart qui montrera les différentes cartes de rally accessibles


# Impact environnemental

Afin de limiter mon impact sur l'environnement suite au module numérique responsable pour me former je préfère consulter des sites web plutôt de que des videos tuto, mes principales sources actuelles sont : 
* Stackoverflow.com : plus propre que 83% des sites testés par le site websitecarbon.com
* Geeksforgeeks.org : plus propre que 56% des sites testés par le site websitecarbon.com
* Flutter.dev : plus propre que 84% des sites testés par le site websitecarbon.com
* fluttercampus.com
* developer.android.com

Afin d'effectuer mes recherches j'utilise le moteur de recherche Ecosia qui permet de planter des arbres grâces à l'argent récolté avec les publicités liées aux recherches.
