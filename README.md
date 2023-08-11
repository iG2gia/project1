# app0

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.















Documentation du Projet


  Titre du Projet : E-Commmerce

  Technologies Utilisées :
      * le langage de programmation:DART
      * le framework: Flutter
      * les bibliothèques (packages):cupertino_icons: ^1.0.5
                                     get: ^4.6.5
                                     carousel_slider: ^4.2.1
                                     smooth_page_indicator: ^1.1.0
                                     font_awesome_flutter: ^10.5.0
                                     icons_flutter: ^0.0.4
                                     shared_preferences: ^2.2.0
                                     firebase_core: ^2.15.0 
                    
                    cupertino_icons : C'est une bibliothèque qui fournit des icônes au style Apple (Cupertino) pour être utilisées dans votre application Flutter.

  Framework de Gestion d'État : GetX:GetX est un framework de gestion d'état dans le contexte du développement d'applications Flutter. Il me permet d'utiliser des fonctionnalités telles que :

                                    *Get.to(): qui me permet de naviguer facilement d'une page à une autre.
                                    *.obs : Les observables sont un concept clé dans GetX pour créer des variables qui peuvent être surveillées afin de détecter automatiquement les changements et mettre à jour l'interface utilisateur en conséquence.
                                    *L'utilisation de contrôleurs.
  Les avantages que j'observe en utilisant Flutter pour développer l'application sont les suivants :

-  Développement Multiplateforme : L'avantage le plus évident de Flutter est la capacité de créer une application qui fonctionne sur plusieurs plates-formes, notamment Android, iOS et le Web, en utilisant un seul code source.
-  Documentation Riche : L'utilisation de Flutter se manifeste par la disponibilité abondante de ressources, de guides et d'informations détaillées qui facilitent grandement le processus de développement d'applications.
-  Développement Rapide
-  Diversité des Packages : La diversité des packages est un avantage majeur lors de l'utilisation de Flutter pour le développement d'applications.
   
  Les difficultés que je rencontre en utilisant Flutter pour développer l'application sont les suivantes :

-  Taille de l'Application : Même en bénéficiant de la diversité des packages offerts par Flutter, l'utilisation de plusieurs packages peut entraîner une augmentation de la taille de l'application, ce qui peut potentiellement causer des retards dans l'exécution de l'application.


Les contrôleurs utilisés dans le projet sont les suivants :

           - favorite_controller.dart : Contient les fonctions suivantes : * addToFavorites : ajoute un produit à la liste de favoris
                                                                          * removeFromFavorites : supprime un produit de la liste de favoris
                                                                          * favoriteAdder : vérifie si la liste contient le produit, puis le supprime s'il existe, sinon l'ajoute.
           - cart_controller.dart : Contient les fonctions suivantes : * removeFromCart : supprime le produit du panier
                                                                      * addToCart : ajoute le produit au panier
           - product_price_controller.dart : Contient les fonctions suivantes : * incrementN : permet d'augmenter le nombre de produits à ajouter
                                                                               * decrementN : permet de réduire le nombre de produits dans le panier
                                                                               * decrementCalculator : calcule le total lorsque le nombre de produits est réduit
                                                                               * incrementCalculator : calcule le total lorsque le nombre de produits est augmenté
                                                                               * addToCartCalculator : calcule le total lorsqu'un produit est ajouté
                                                                               * removeFromCartCalculator : calcule le total lorsqu'un produit est supprimé  

           - first_view_controller.dart: contient un variable qui indique la page qui va ouvrir en ouvrant app0

            