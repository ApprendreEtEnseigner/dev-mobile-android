//* 1) Commencez par définir une fonction nommée capitals qui prend un paramètre nommé word. Ce paramètre représente la chaîne de caractères (mot) dont on veut trouver les lettres majuscules. Vous pouvez utiliser la syntaxe suivante pour définir une fonction en JavaScript:
function capitals(word){

    //* 2) Ensuite, initialisez une variable nommée result à un tableau vide. Ce tableau va contenir les indices des lettres majuscules dans le mot. Vous pouvez utiliser la syntaxe suivante pour initialiser un tableau vide en JavaScript:
    let result = [];

    //* 3) Puis, utilisez une boucle for pour parcourir chaque caractère du mot. Vous pouvez utiliser la propriété length d’une chaîne pour obtenir sa longueur, et l’opérateur [] pour accéder à un caractère à un indice donné. Par exemple, si word vaut "CodEWaRs", alors word.length vaut 8, et word[0] vaut "C". Vous pouvez utiliser la syntaxe suivante pour écrire une boucle for en JavaScript:
    for(let i=0; i < word.length; i++){

        //* 4) À l’intérieur de la boucle, utilisez la méthode toUpperCase d’une chaîne pour vérifier si le caractère courant est une lettre majuscule. Cette méthode renvoie la chaîne convertie en majuscules, donc si le caractère est déjà en majuscule, il sera égal à lui-même après l’appel de la méthode. Par exemple, "C".toUpperCase() vaut "C", mais "a".toUpperCase() vaut "A". Vous pouvez utiliser la syntaxe suivante pour appeler une méthode sur une chaîne en JavaScript:word[i].toUpperCase();

        //* 5) Si le caractère courant est une lettre majuscule, utilisez la méthode push d’un tableau pour ajouter son indice au tableau result. Cette méthode permet d’ajouter un élément à la fin d’un tableau. Par exemple, si result vaut [0, 3], alors après l’appel de result.push(4), il vaudra [0, 3, 4]. Vous pouvez utiliser la syntaxe suivante pour appeler une méthode sur un tableau en JavaScript:
        if (word[i] === word[i].toUpperCase()){
            result.push(i);
        }
    }

    //* 6) Enfin, après la fin de la boucle, renvoyez le tableau result comme valeur de retour de la fonction. Vous pouvez utiliser le mot-clé return pour renvoyer une valeur d’une fonction en JavaScript:
    return result;

}

//! Test.assertSimilar( capitals('CodEWaRs'), [0,3,4,6] );

document.write(capitals('CodEWaRs'));
