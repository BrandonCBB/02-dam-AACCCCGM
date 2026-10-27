Evaluación Heurística de Usabilidad "10 Principios de Jakob Nielsen"

1. Visibilidad del estado del sistema: La app siempre le avisa al usuario qué está pasando; por ejemplo, saca un CircularProgressIndicator cuando carga los datos de la API y un SnackBar en la pantalla del mapa cada vez que interactúas con él.

2. Relación entre el sistema y el mundo real: Habla el mismo idioma que el usuario con términos bien conocidos como "Platillos Ancestrales", además de usar íconos de toda la vida como el corazón para favoritos o el mapa para la ubicación.

3. Control y libertad del usuario: Moverse por la app está super libre gracias a la barra de abajo (BottomNavigationBar), permitiendo saltar entre Home, Favoritos y Acerca de cuando quieras sin problemas, ni perderse.

4. Consistencia y estándares: Todo mantiene la misma línea visual inspirada en Material Design con una paleta azul bien definida, haciendo que los botones y barras se comporten igual en todas partes.

5. Prevención de errores: El servicio HTTP usa el snapshot.hasError en el FutureBuilder para que, si el internet falla, la app no se truene ni se quede congelada de la nada.

6. Reconocimiento antes que recuerdo: Las tarjetas de recetas te muestran la foto, el nombre y la dificultad directo a los ojos para que elijas al instante sin tener que memorizar nada.

7. Flexibilidad y eficiencia de uso: El desplazamiento en el ListView va bien fluido y cambiar de pestaña toma un solo toque, haciéndolo rápido y cómodo.

8. Diseño estético y minimalista: Cero saturación, las tarjetas tienen sus márgenes y espaciados bien cuidados para mostrar solo lo esencial y verse limpias.

9. Ayuda a los usuarios a reconocer, diagnosticar y recuperarse de errores: Si la API no responde, la app no te avienta códigos raros de programador, sino que te sale un aviso amigable explicando que hubo un error al cargar.

10. Ayuda y documentación: En la pestaña "Acerca de" pusimos un texto generico del proyecto junto con los nombres de todo el equipo de desarrollo.