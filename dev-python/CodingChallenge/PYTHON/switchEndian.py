def switch_endian(n, size_bit):
    #* 1 Vérifier si le nombre est positif, si la taille en bits est une puissance de 2 supérieure ou égale à 8, et si le nombre n'est pas trop grand pour la taille en bits
    if (n > 0) and (size_bit >= 8) and (size_bit & (size_bit - 1) == 0) and n <2**size_bit:
        #* 2 Convertir le nombre en une chaîne hexadécimale avec le préfixe "0x"
        conv_hex = hex(n)
        #!  return conv_hex => affichage avec  le préfixe "0x"
        #* 3) Supprimer le préfixe "0x" et ajouter des zéros à gauche si nécessaire pour avoir une longueur multiple de 2
        conv_hex = conv_hex[2:].zfill(len(conv_hex[2:]) +1 // 2 * 2)
        return conv_hex #! affichage sans  le préfixe "0x"
        
    return None

print(switch_endian(123, 16))

