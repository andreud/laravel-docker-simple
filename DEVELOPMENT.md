
## Dockerfile para  PHP

### Camino 1:
partiendo de la imagen "php:8.4-fpm",
instala zip os pack con apt,
instala composer con COPY --from=composer/composer,,
instala el lrvl installer con composer globalmente (problem: no queda en el path)
(problem 2: no puedo instalr nano para editar configs, dice not found)

### Camino 2:
partiendo de una imagen de ubuntu base,
Instalando PHP, Compoiser y Lrlv installer con 
script que sugiere en la doc de Lrlv: (https://php.new/install/linux/8.4)


## Troubleshooting

List php.ini files:
    $ php --ini

Show where composer installs global packages
    $ composer global config --list | grep home

