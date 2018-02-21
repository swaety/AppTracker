
SERVEUR

Il faut simplement avoir installé nodeJS sur la machine au préalable
Pour lancer le serveur,
il suffit de faire un double clic sur le fichier run.bat
Le fichier app.json contient toutes les données.
Vu la sécurité de l'iPhone, il faut ajouter les données à la main malheureusement...



IOS APP

Depuis ios 9, le lancement des app depuis un openURL n'est possible que pour les applications connues,
il est donc possible de rajouter des APP directement depuis le fichier URI.swift
De plus sans un iphone jailbreak il est impossible de connaitre la liste des applications installées sur le téléphone
Le peuplement de la base de données JSON sur le serveur est possible avec un iphone jailbreak.
Connaitre en temps réel fait appel à un bas niveau de programation en objective-C, l'API swift ne permet pas de faire ce type d'appel
Nous faisons donc appel a KERN_CTL et SYS_CTL
Cependant iOS bloque l'accès à ces fonctions et retourne "nil", le problème est corrigé depuis un iphone jailbreak
Enfin il suffit de changer l'adresse ip dans viewController.swift afin de contacter le bon serveur.

Deploy l'app grace a Xcode sur le device de votre choix