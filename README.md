# Flutter - Fundamentos basicos

## Nuevo proyecto de flutter
Proyectos compartidos que fueron realizados por:
- `AristiDevs`
- `Fernando Herrera`

## Videos y canal de AristiDevs:
  - [Video del curso completo](https://www.youtube.com/watch?v=IKG1eV2SetA&t=7884s)
  - [Canal de Programación Android by AristiDevs](https://www.youtube.com/@AristiDevs)
  
  ## Videos y canal de Fernando Herrera:
  
  - [Videos del proyecto (No esta completo)](https://youtube.com/playlist?list=PLCKuOXG0bPi0sIn-nDsi7ma9OV6MEMkxj&si=5MFC-NJX8Avq7wsq)
  - [Canal de Fernando Herrera](https://www.youtube.com/@fernando_her85)

---
## Image-Scroll vs Video-Scroll:

- Por motivos de error del Codec, no puedo reproducir los videos en:`presentation/widgets/video/fullscreen_player.dart`

- Todo el codigo mas la dependencia de video_player estaran en: `fullscreen_player.dart`. Osea que se podra usar, pero se tendra que agregar y modificar manualmente la data y assets

- Ahora se usara `fullscreen_image.dart` que esta ubicado en `presentation/widgets/image/fullscreen_image.dar` asi para mostrar algo y no una pantalla negra

## Configuracion en caso de usar 'fullscreen_player.dart'

### Agregar videos
- En `assets/videos`se agregaran videos deseados que no pesen mas de 18MB y que el formato no supere los 1280x720, asi para evitar errores o que no se muestre el video en la pantalla

### Assets/images:
- Las images de assets fueron ignoradas, por lo tanto no se vera nada en la pantalla, lo recomendable es descargar las imagenes manualmente y poner el mismo nombre que esta en `videoUrl` asi se evita conflictos

### Agregar URL
- En `shared/data/local_video_post.dart` se descomentara las url's de `videoUrl` por `assets/videos/videoEjemplo.mp4` y se comentara el otro url, ya que ahora estaran con `assets/images/vertical1.jpg`
git
```json
{
    'name': 'Subiendo escaleras automáticas',
    'videoUrl': 'assets/images/vertical1.jpg',
    // 'videoUrl': 'assets/videos/1.mp4',
    'likes': 23230,
    'views': 1523,
  },
  {
    'name': 'Planta apreciada por peatones',
    'videoUrl': 'assets/images/vertical2.jpg',
    // 'videoUrl': 'assets/videos/2.mp4',
    'likes': 24230,
    'views': 1343,
  },
  {
    'name': 'Que borroso veo todo!',
    'videoUrl': 'assets/images/vertical3.jpg',
    // 'videoUrl': 'assets/videos/3.mp4',
    'likes': 21564320,
    'views': 123563,
  },
  // Mas codigo...
```

---



