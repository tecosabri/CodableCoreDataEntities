//
//  APIresponse.swift
//  CodableCoreDataEntitiesSample
//
//  Created by Ismael Sabri Pérez on 16/9/22.
//

class APIResponse {
    let goku =
    """
    [
            {
                "name": "Goku",
                "favorite": true,
                "id": "D13A40E5-4418-4223-9CE6-D2F9A28EBE94",
                "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300",
                "description": "Sobran las presentaciones cuando se habla de Goku. El Saiyan fue enviado al planeta Tierra, pero hay dos versiones sobre el origen del personaje. Según una publicación especial, cuando Goku nació midieron su poder y apenas llegaba a dos unidades, siendo el Saiyan más débil. Aun así se pensaba que le bastaría para conquistar el planeta. Sin embargo, la versión más popular es que Freezer era una amenaza para su planeta natal y antes de que fuera destruido, se envió a Goku en una incubadora para salvarle."
            }
    ]
    """
    let allHeroes =
    """
    [
        {
            "name": "Maestro Roshi",
            "favorite": false,
            "id": "14BB8E98-6586-4EA7-B4D7-35D6A63F5AA3",
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2020/06/Roshi.jpg?width=300",
            "description": "Es un maestro de artes marciales que tiene una escuela, donde entrenará a Goku y Krilin para los Torneos de Artes Marciales. Aún en los primeros episodios había un toque de tradición y disciplina, muy bien representada por el maestro. Pero Muten Roshi es un anciano extremadamente pervertido con las chicas jóvenes, una actitud que se utilizaba en escenas divertidas en los años 80. En su faceta de experto en artes marciales, fue quien le enseñó a Goku técnicas como el Kame Hame Ha"
        },
        {
            "name": "Mr. Satán",
            "favorite": false,
            "id": "1985A353-157F-4C0B-A789-FD5B4F8DABDB",
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2020/06/dragon-ball-satan.jpg?width=300",
            "description": "Mr. Satán es un charlatán fanfarrón, capaz de manipular a las masas. Pero en realidad es cobarde cuando se da cuenta que no puede contra su adversario como ocurrió con Androide 18 o Célula. Siempre habla más de la cuenta, pero en algún momento del combate empieza a suplicar. Androide 18 le ayuda a fingir su victoria a cambio de mucho dinero. Él acepta el trato porque no podría soportar que todo el mundo le diera la espalda por ser un fraude."
        },
        {
            "name": "Krilin",
            "favorite": false,
            "id": "D88BE50B-913D-4EA8-AC42-04D3AF1434E3",
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2020/08/Krilin.jpg?width=300",
            "description": "Krilin lo tiene todo. Cuando aún no existían los 'memes', Krilin ya los protagonizaba. Junto a Yamcha ha sido objeto de burla por sus desafortunadas batallas en Dragon Ball Z. Inicialmente, Krilin era el mejor amigo de Goku siendo sólo dos niños que querían aprender artes marciales. El Maestro Roshi les entrena para ser dos grandes luchadores, pero la diferencia entre ambos cada vez es más evidente. Krilin era ambicioso y se ablanda con el tiempo. Es un personaje que acepta un papel secundario para apoyar el éxito de su mejor amigo Goku de una forma totalmente altruista."
        },
        {
            "name": "Goku",
            "favorite": true,
            "id": "D13A40E5-4418-4223-9CE6-D2F9A28EBE94",
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300",
            "description": "Sobran las presentaciones cuando se habla de Goku. El Saiyan fue enviado al planeta Tierra, pero hay dos versiones sobre el origen del personaje. Según una publicación especial, cuando Goku nació midieron su poder y apenas llegaba a dos unidades, siendo el Saiyan más débil. Aun así se pensaba que le bastaría para conquistar el planeta. Sin embargo, la versión más popular es que Freezer era una amenaza para su planeta natal y antes de que fuera destruido, se envió a Goku en una incubadora para salvarle."
        },
        {
            "name": "Vegeta",
            "favorite": false,
            "id": "6E1B907C-EB3A-45BA-AE03-44FA251F64E9",
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/vegetita.jpg?width=300",
            "description": "Vegeta es todo lo contrario. Es arrogante, cruel y despreciable. Quiere conseguir las bolas de Dragón y se enfrenta a todos los protagonistas, matando a Yamcha, Ten Shin Han, Piccolo y Chaos. Es despreciable porque no duda en matar a Nappa, quien entonces era su compañero, como castigo por su fracaso. Tras el intenso entrenamiento de Goku, el guerrero se enfrenta a Vegeta y estuvo a punto de morir. Lejos de sobreponerse, Vegeta huye del planeta Tierra sin saber que pronto tendrá que unirse a los que considera sus enemigos."
        },
        {
            "name": "Bulma",
            "favorite": false,
            "id": "64143856-12D8-4EF9-9B6F-F08742098A18",
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2021/01/Bulma-Dragon-Ball.jpg?width=300",
            "description": "Bulma es un personaje sorprendente en un momento donde las protagonistas femeninas escaseaban. Aparece desde el primer episodio de Dragon Ball como el encuentro más curioso que tiene Goku con un ser humano. Su apariencia responde a los estándares de belleza, con quien hacen múltiples referencia a su ropa interior o su fisionomía femenina. Sin embargo, Bulma es una joven inteligente con mucha ambición para convertirse en una científica de renombre. Siempre está inventando artefactos tecnológicos y uno de sus mayores inventos fue el radar de las bolas de Dragón, ya que quería encontrarlas. Es una aventurera con una personalidad amable y bondadosa, aunque también tiene carácter fuerte cuando se enfada. En Dragon Ball Z creó una máquina del tiempo con la que Trunks del Futuro pudo viajar al pasado para alertar de la nueva amenaza que era Célula. En ese instante, Bulma y Vegeta forman una sorprendente pareja de anime, sobre todo tras ver el pasado del Saiyan. El paso del tiempo no ha hecho justicia al personaje que cada vez tiene menor relevancia, pero Bulma es el personaje femenino más importante de la serie sin ninguna duda."
        },
        {
            "name": "Freezer",
            "favorite": false,
            "id": "D13991A5-6E61-4554-8AA9-D35D0CF3DE58",
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/freezer-dragon-ball-bebe-abj.jpg?width=300",
            "description": "Freezer es el villano más temido del universo Dragon Ball, es la maldad personificada. Es el responsable de la muerte de los padres de Goku, del Rey Vegeta, de los Saiyan del Planeta Vegeta, donde provocó un genocidio. La serie mostró en varias ocasiones su crueldad, ya que disfruta de la muerte y del sufrimiento de sus víctimas. Y no tiene límites. Freezer es la razón por la que Vegeta termina uniéndose a Goku. Tanto Vegeta como Freezer desean la inmortalidad, así que ambos compiten por reunir las bolas de Dragón. Finalmente todos se enfrentan a él. El propio Piccolo es resucitado y trasladado a Namek para enfrentarse al villano. Pronto revelará que tiene varias transformaciones más poderosas, siendo la forma final la más fuerte de todas. Trunks del Futuro consigue matarle, aunque más tarde será revivido para volver a dar guerra en Dragon Ball Super."
        },
        {
            "name": "Beerus",
            "favorite": false,
            "id": "0D17430D-4382-40CA-BDCF-5B87428C92F6",
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2020/06/dragon-ball-super-beerus.jpg?width=300",
            "description": "El Dios de la Destrucción fue el villano principal de Dragon Ball Super. Sin embargo, ya había hecho acto de presencia en la película Dragon Ball Z: La Batalla de los Dioses como antagonista. El diseño del personaje es uno de los más singulares de Toriyama y se inspiró en su gato para crearlo, así como en la mitología egipcia. A pesar del título que ostenta, Beerus es más dócil de lo que parece en un primer momento. Su presentación dejó huella porque amenazó con destruir el planeta Tierra por mera diversión."
        },
        {
            "name": "Piccolo",
            "favorite": false,
            "id": "CBCFBDEC-F89B-41A1-AC0A-FBDA66A33A06",
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2020/09/piccolo.jpg?width=300",
            "description": "Es un namekiano que demuestra su sadismo en el 23º Torneo de Artes Marciales donde se enfrenta a Goku y otros oponentes sin escrúpulos. En la final reveló su verdadera identidad y creó pánico entre el público. Separó su lado bueno gracias a la fisión y así Kami creó las bolas de Dragón de la Tierra que casi son destruidas por el propio Piccolo. Llama la atención que tiempo después su carácter haya cambiado tanto. Se vuelve un personaje más amable y dócil, incluso acepta a Son Gohan como su discípulo. Es un punto de inflexión para Piccolo, ya que esta amistad consigue sacar el lado más bondadoso del namekiano que no duda en sacrificarse para defender a Gohan frente a Nappa. De todos los Guerreros Z, es el luchador más estratégico e inteligente. Esto quiere decir que mientras los demás se lanzan a actuar, Piccolo prefiere pensar la mejor opción."
        },
        {
            "name": "Kaito",
            "favorite": false,
            "id": "FE0AD406-3B22-4A81-9DDF-15444A42B995",
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2020/09/Por-esto-aun-Kaito-no-lo-han-resucitado.jpg?width=300",
            "description": "En España se le conoció como Kaito, pero también se le llama Kaio-sama, una deidad que controla la Galaxia del Norte en Dragon Ball. Es muy fácil cogerle cariño a este personaje que vive en un planeta diminuto, donde se entrenó por primera vez Goku. Después de morir en el combate contra Raditz, Kami le dice a Goku que tiene que hacer el camino de la serpiente y entrenar con Kaio para enfrentarse a los Saiyan que llegarán a la Tierra. Kaio es simpático, amable y bonachón, así que ambos protagonizan escenas muy divertidas por el carácter infantil de Goku. Su planeta tiene una gravedad 10 veces superior a la Tierra, por lo que si Goku se acostumbra a ella se hará más fuerte. Kaio tiene la capacidad de observar todo lo que ocurre en la Galaxia de gracias a sus antenas y comunicarse de forma telepática. Es el creador de técnicas especiales como Genkidama y Kaio Ken, aunque nunca se le ve luchar. Con la llegada de Célula al planeta Tierra, Goku lleva al villano al planeta de Kaito donde lo hace explotar y provoca así la muerte del personaje."
        },
        {
            "name": "Raditz",
            "favorite": false,
            "id": "413819B7-82D6-4336-945B-976F9BF04D9F",
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2019/10/Raditz.jpg?width=300",
            "description": "Con la llegada de Raditz a la Tierra comienza Dragon Ball Z. Tiene mucha presencia física como Saiyan con una larga melena y una armadura que permite ver sus músculos. Es uno de los pocos Saiyan que sobrevivieron a la destrucción del Planeta Vegeta y siente absoluto desprecio por los humanos y cualquier ser que sea más débil. Cuando se encuentra con un granjero no duda en matarlo aun sabiendo que no es una amenaza real para él. Es cruel y despiadado, con un carácter muy parecido a Vegeta."
        },
        {
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2020/05/3CD8B1C5-134E-419E-AB5D-D1440C922A7E-e1590480274537.png?width=300",
            "favorite": false,
            "name": "Célula",
            "description": "o se entiende Dragon Ball sin un villano como Célula. Se trata de un bioandroide creado en el futuro por el Doctor Gero como parte de un proyecto para vengarse de Goku. Por tanto, fueron creados para destruir al protagonista porque en el pasado había acabado con el Ejército Red Ribbon. Esta criatura está compuesta por células de Goku, Piccolo, Vegeta, Freezer y su padre el Rey Cold, así que es conocedor de todas sus técnicas de combate. No obstante tiene que absorber la energía de los androides para alcanzar la forma perfecta.",
            "id": "EA0D9204-9894-4A86-B7F1-92DDBBC8BD23"
        },
        {
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2020/01/Androide-18.jpg?width=300",
            "favorite": false,
            "name": "Androide 18",
            "description": "ndroide 18 es la prueba fehaciente de que se le puede coger cariño a los villanos. La aparición de los hermanos androides presentó al Dr. Gero como nuevo antagonista de la serie. Este científico había experimentado con su propio hijo para crear androides y como resultado creó a los Androides 16, 17 y 18 para destruir a Goku. Poca gente sabe que el nombre original de Androide 18 es Lázuli, una joven rubia con ojos azules que no tiene ninguna expresividad. Su fuerza es superior al de muchos guerreros e incluso mayor que Shen Long (Shenron), motivo por el que no pudo devolverles su forma humana. Así que es capaz de vencer en combate a Krilin y a Goku, aunque este último se dejó ganar. A pesar de su belleza, la serie explota su lado más guerrero y se muestra más cercana a Krilin cuando tiene detalles con ella. Finalmente los dos se casan y tienen una hija que se parece mucho a ambos.",
            "id": "4D386AB5-AF69-45D2-B15A-B1D86B57F9DE"
        },
        {
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2019/10/dragon-ball-androide-17.jpg?width=300",
            "favorite": false,
            "name": "Androide 17",
            "description": "Es el hermano gemelo de Androide 18. Son muy parecidos físicamente, aunque Androide 17 es un joven moreno. También está programado para destruir a Goku porque fue el responsable de exterminar el Ejército Red Ribbon. Sin embargo, mató a su creador el Dr. Gero por haberle convertido en un androide en contra de su voluntad. Es un personaje con mucha confianza en sí mismo, sarcástico y rebelde que no se deja pisotear. Ese exceso de confianza le hace cometer errores que pueden costarle la vida",
            "id": "963CA612-716B-4D08-991E-8B1AFF625A81"
        },
        {
            "photo": "https://cdn.alfabetajuega.com/alfabetajuega/2020/07/Trunks.jpg?width=300",
            "favorite": false,
            "name": "Trunks del Futuro",
            "description": "Trunks es hijo de Bulma y Vegeta, pero tarda bastante en aparecer en la trama. Todo se vuelve más interesante cuando aparece un misterioso viajero del tiempo que se llama Trunks del Futuro, que será determinante en Dragon Ball Z. Este personaje es una versión del pequeño Trunks que ha viajado al pasado para advertir de las amenazas que pueden destruir el mundo. Es el único superviviente de los Guerreros Z en un futuro alternativo apocalíptico, así que utiliza la máquina del tiempo que inventa su madre para regresar al tiempo presente.",
            "id": "6AF516DD-529B-47A5-B3DB-9B88E55432C6"
        }
    ]
    """
    
    let gokuLocation =
    """
    [
        {
            "longitud": "-3.700824111001255",
            "dateShow": "2022-02-20T00:00:00Z",
            "latitud": "40.437149142667955",
            "hero": {
                "id": "D13A40E5-4418-4223-9CE6-D2F9A28EBE94"
            },
            "id": "6982D037-A9E0-4EE1-8BFA-FF17874D6DD5"
        }
    ]
    """
}
