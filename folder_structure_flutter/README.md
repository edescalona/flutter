# folder_structure_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.









Flutter en 2021 es la estrella en ascenso en el campo del desarrollo de aplicaciones multiplataforma. Ya sea el proyecto universitario de un estudiante, una pequeña empresa emergente, un unicornio o grandes gigantes tecnológicos, todos usan flutter. La estructura de archivos es la organización de los datos de una aplicación. La estructura de archivos es algo que juega un papel muy importante en la gestión eficaz y sencilla del proyecto, ya sea de cualquier tamaño. A medida que crece el tamaño de un proyecto, se vuelve cada vez más importante tener una estructura y un formato adecuados para el código; de lo contrario, puede generar muchos problemas no deseados, como:

No se puede encontrar el archivo específico en un repositorio, lo que lo convierte en una tarea que requiere mucho tiempo.
No apto para el trabajo en equipo.
Difícil de mantener.
O, en el peor de los casos, puede resultar en una aplicación de bajo rendimiento.
Nota : hay un paquete disponible para minimizar esta tarea sin perder mucho tiempo creando u organizando archivos en flutter. Si desea crear el suyo propio, puede seguir los pasos a continuación.

Para hacernos cargo de todos estos problemas, necesitamos tener una buena estructura de archivos en nuestra aplicación flutter, y eso es lo que vamos a discutir en este artículo. Aunque flutter no da ninguna recomendación en la estructuración de la aplicación, debemos hacerlo de la mejor manera posible. Para lograr la mejor estructura de archivos posible de una aplicación flutter general, la dividiremos en siete partes. Pero antes de eso, una cosa importante que siempre debemos tener en cuenta es que el nombre del archivo y los directorios siempre deben estar en el formato adecuado. Por ejemplo, si alguien está creando una aplicación de redes sociales y quiere crear un archivo para almacenar datos de sus usos, así es como debe llamarse.

Denominación de archivos y directorios 
//este es el método correcto 
user_data.dart (minúsculas para ambas palabras separadas por guiones bajos) //estos métodos deben evitarse 
userData.dart (camel case) 
UserData.dart (mayúsculas para ambas palabras) 
Loginview .dart (mayúsculas para la primera palabra) 
Login_View.dart (mayúsculas para ambas palabras separadas por guión bajo)
Cada vez que creamos un nuevo proyecto en flutter, estos son los archivos y directorios que se nos proporcionan. Pero estos son solo los conceptos básicos, agregaremos algunas otras carpetas y archivos en el proyecto que se enumeran a continuación.



1. Activos: activos estáticos para la aplicación.



Este directorio está en el nivel raíz y contendrá todos los activos estáticos que se utilizan en la aplicación, por ejemplo, fuentes, íconos, logotipos, imágenes de fondo, videos de demostración, etc. Es muy recomendable que tengamos diferentes directorios para un diferentes tipos de datos, por ejemplo, imágenes, videos y logotipos, deben tener una carpeta propia diferente para que sea más fácil mantenerlos y acceder a ellos.

2. Funciones de la nube: funciones de la nube utilizadas en la aplicación.



Las funciones de la nube son el código de back-end que se almacena en algunos servidores como Google Cloud, estas funciones se ejecutan cuando ocurre algún evento específico. Un ejemplo de la función de la nube en las redes sociales sería una función que al hacer clic en un botón abre una URL que recibe los datos de texto, audio o video y los almacena en el servidor para uso futuro. Se vuelve muy conveniente cuando toda la función de la nube está en el nivel raíz de la aplicación.

3. Pantallas: Pantalla/UI de la aplicación.



Este directorio contendrá el diseño real de la interfaz de usuario para toda la aplicación. Además, se puede distribuir en dos o tres carpetas. Una que almacenó la pantalla flash y las páginas de incorporación, como la pantalla de inicio de sesión/registro, la segunda carpeta puede almacenar la pantalla de inicio y otras pantallas de uso general, y la tercera carpeta puede contener pantallas que no son tan importantes

4. Proveedores: Interacciones fuera de la app.



Se supone que este directorio contiene todas las interacciones que procesan los datos desde fuera de la aplicación. Esto es diferente de las funciones de la nube, en cuanto a que ninguno de los códigos en este directorio interactuará con el almacenamiento en la nube o el servidor. Si tomamos en consideración una aplicación meteorológica, un buen ejemplo sería el clima y los datos de ubicación que se reciben de la API en forma de JSON que debe traducirse para su uso.

5. Utilidades: Función o lógica utilizada en la aplicación.



Este directorio contendrá toda la lógica de la aplicación o la lógica empresarial de toda nuestra aplicación. Nuevamente, un buen ejemplo en la aplicación meteorológica sería cuando un usuario selecciona una ubicación diferente, los datos meteorológicos también deberían cambiar en consecuencia. O en el caso de la aplicación de redes sociales, cuando inicie sesión, los datos de la aplicación también deberían cambiar en consecuencia.

6. Widgets: widgets/diseños utilizados en la aplicación.



Queda claro por el nombre en sí que esta carpeta contendrá todos los widgets estáticos o los widgets que se usan varias veces en la aplicación. Por ejemplo, si es una aplicación de redes sociales como Instagram, la vista de lista de todos los amigos sugeridos es siempre la misma, lo único que cambia en los datos. O si se trata de una aplicación meteorológica, el mosaico que muestra una ubicación en particular es el mismo para todas las ubicaciones, lo único que cambia es el nombre del lugar.

7. Modelos: Recogida de datos.



Los modelos son la recopilación de datos que generalmente provienen de servidores, usuarios o API externas, estos se usan en combinación con widgets para completar la interfaz de usuario de la aplicación. Nuevamente, tomando un ejemplo de la aplicación meteorológica, un modelo o un conjunto de datos podría ser el nombre de la ubicación, la temperatura tanto en Celsius como en Fahrenheit. Si tomamos en consideración una aplicación de redes sociales que muestra la página de perfil de un usuario, entonces puede contener el nombre de usuario, la edad, una foto de perfil, una descripción, etc.
