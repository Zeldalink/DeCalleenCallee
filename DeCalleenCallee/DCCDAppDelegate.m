//
//  DCCDAppDelegate.m
//  DeCalleenCallee
//
//  Created by Xochitl Perez on 08/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DCCDAppDelegate.h"
#import "HomeLegend.h"
#import "HomeViewController.h"
#import "Legend.h"
#import "Arqueology.h"
#import "Church.h"
#import "Library.h"
#import "Theather.h"
#import "Square.h"
#import "Museum.h"
#import "Building.h"

@implementation DCCDAppDelegate
@synthesize facebook;
@synthesize window = _window;
@synthesize managedObjectContext = __managedObjectContext;
@synthesize managedObjectModel = __managedObjectModel;
@synthesize persistentStoreCoordinator = __persistentStoreCoordinator;
@synthesize navigationController = _navigationController;
@synthesize viewController=_viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //[[UIApplication sharedApplication] setStatusBarHidden:YES
      //                                      withAnimation:NO];
    facebook = [[Facebook alloc] initWithAppId:@"225902810852696" andDelegate:self];
    NSManagedObjectContext *context = self.managedObjectContext;
    
  //  NSError *error;
    // Test listing all FailedBankInfos from the store
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Square"
                                              inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    
  /*
   // NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
   NSString *costos=@"Entrada Libre";
    NSString *nocosto=@"Información no disponible";
 NSString *telefono=@"Sin Número";
    
    Square *constitucion=[NSEntityDescription insertNewObjectForEntityForName:@"Square" inManagedObjectContext:context];
    [constitucion setCategory:@"Plaza"];
    [constitucion setNameSquare:@"Plaza de la Constitución"];
    [constitucion setSummary:@"Informalmente conocida como El Zócalo, es la plaza principal de la ciudad. La gran plaza que está en el corazón de la ciudad de México, conocida como Zócalo, tiene un nombre oficial, se llama Plaza de la Constitución en recuerdo de que en ese amplio espacio, enmarcado por la Catedral, el Palacio de los Virreyes, ahora Palacio Nacional, y el Palacio de Cabildos, se juró la Constitución que el 19 de marzo de este año cumple 200 de haber sido aprobada por diputados a Cortes de España y América, reunidos en la ciudad de Cádiz en 1812."];
    NSNumber *constilatitude= [NSNumber numberWithFloat:19.432641];
    NSNumber *constilongitude=[NSNumber numberWithFloat:-99.133286];
    [constitucion setLatitude:constilatitude];
    [constitucion setLongitude:constilongitude];
    [constitucion setAddress:@"Centro, Cuauhtémoc, 06060 Ciudad de México, Distrito Federal"];
    [constitucion setTelephone:@"s/n"];
    [constitucion setSubway:@"Zócalo"];
    [constitucion setSchedule:@"Todo el día"];
    [constitucion setCost:costos];
    
    Square *alameda=[NSEntityDescription insertNewObjectForEntityForName:@"Square" inManagedObjectContext:context];
    [alameda setCategory:@"Plaza"];
    [alameda setNameSquare:@"Alameda Central"];
    [alameda setSummary:@"Es un lugar muy popular entre los habitantes de la ciudad de Mexico, se va a hacer ejercicio, a encontrarse con alguien, hay muchas actividades en sus alrededores y ya es un lugar de tradición en diciembre cuando se colocan puestos alusivos a la temporada de navidad y los reyes magos."];
    NSNumber *alalatitud=[NSNumber numberWithFloat:19.435858];
    NSNumber *alalongitud=[NSNumber numberWithFloat:-99.144037];
    [alameda setLatitude:alalatitud];
    [alameda setLongitude:alalongitud];
    [alameda setAddress:@"Avenida Hidalgo y Avenida Juárez, D.F. (Ciudad de Mexico) 01000, México"];
    [alameda setCost:costos];
    [alameda setTelephone:telefono];
    [alameda setSubway:@"Bellas Artes"];
    [alameda setSchedule:@"Todo el Día"];

    
    Square *juarez=[NSEntityDescription insertNewObjectForEntityForName:@"Square" inManagedObjectContext:context];
    [juarez setCategory:@"Plaza"];
    [juarez setNameSquare:@"Hemiciclo a Juárez"];
    [juarez setAddress:@"Avenida Hidalgo y Avenida Juárez, D.F. (Ciudad de Mexico) 01000, México"];
    [juarez setCost:costos];
    [juarez setTelephone:telefono];
    [juarez setSubway:@"Bellas Artes, Hidalgo"];
    [juarez setSummary:@"Es un cenotafio de la Ciudad de México, ubicado en la Alameda Central del Centro Histórico"];
    [juarez setLatitude:@19.435064];
    [juarez setLongitude:@-99.144086];
    [juarez setSchedule:@"Todo el día"];
    
    Square *garibaldi=[NSEntityDescription insertNewObjectForEntityForName:@"Square" inManagedObjectContext:context];
    [garibaldi setCategory:@"Plaza"];
    [garibaldi setNameSquare:@"Palza Garibaldi"];
    [garibaldi setSchedule:@"Todo el día"];
    [garibaldi setSubway:@"Garibaldi"];
    [garibaldi setTelephone:telefono];
    [garibaldi setLongitude:@-99.139672];
    [garibaldi setLatitude:@19.440593];
    [garibaldi setSummary:@"Es famosa por los grupos de mariachis,grupos norteños,trios romanticos y grupos de musica veracruzana que ahí se reúnen"];
    [garibaldi setCost:costos];
    [garibaldi setAddress:@"Eje Central, Guerrero, Ciudad de México"];
    
    Square *squaredomingo=[NSEntityDescription insertNewObjectForEntityForName:@"Square" inManagedObjectContext:context];
    [squaredomingo setCategory:@"Plaza"];
    [squaredomingo setNameSquare:@"Plaza de Santo Domingo"];
    [squaredomingo setCost:costos];
    [squaredomingo setSchedule:@"Todo el día"];
    [squaredomingo setSummary:@"Esta pequeña plaza en el centro de la Ciudad de México se encuentra a un costado del imponente edificio que ocupa la Secretaría de Educación Pública. Es el sitio en donde tradicionalmente se instalaban los escribanos que hacían las cartas y llenaban formularios de los que no sabían escribir. Actualmente es donde se concentran imprentas y vendedores de papelería diversa como invitaciones y tarjetas de presentación."];
    [squaredomingo setSubway:@"Allende, Zócalo"];
    [squaredomingo setTelephone:telefono];
    [squaredomingo setLatitude:@19.437315];
    [squaredomingo setLongitude:@-99.133778];
    [squaredomingo setAddress:@"Republica de Cuba y Republica de Brasil, D.F. (Ciudad de Mexico) 06060, México"];
    
    Theather * vizcainas=[NSEntityDescription insertNewObjectForEntityForName:@"Theather" inManagedObjectContext:context];
    [vizcainas setAddress:@"Jiménez #13, Colonia Centro"];
    [vizcainas setCategory:@"Teatro"];
    [vizcainas setCost:@"Depende de la Cartelera"];
    [vizcainas setNameTheather:@"Teatro de las Vizcaínas"];
    [vizcainas setSubway:@"Salto del Agua, Isabel de la Católica"];
    [vizcainas setTelephone:@"5709 3724"];
    [vizcainas setSummary:@" Fue ocupado en la década de los años treinta por un salón de baile en el que el cómico Resortes realizó sus primeras actuaciones"];
    [vizcainas setLatitude:@19.427582];
    [vizcainas setLongitude:@-99.139938];
    [vizcainas setSchedule:@"Depende de la Cartelera"];
    
    Theather *frufru=[NSEntityDescription insertNewObjectForEntityForName:@"Theather" inManagedObjectContext:context];
    [frufru setNameTheather:@"Teatro Fru Fru"];
    [frufru setCategory:@"Teatro"];
    [frufru setCost:@"Depende de la Cartelera"];
    [frufru setSubway:@"Allende"];
    [frufru setSummary:@"Teatro rescatado por Irma Serrano, donde se exponen varias obras"];
    [frufru setSchedule:@"Depende de la Cartelera"];
    [frufru setTelephone:@"55216012"];
    [frufru setAddress:@"Donceles #24, Colonia Centro"];
    [frufru setLatitude:@19.43687];
    [frufru setLongitude:@-99.138222];
    
    Theather *lirico=[NSEntityDescription insertNewObjectForEntityForName:@"Theather" inManagedObjectContext:context];
    [lirico setAddress:@"Republica De Cuba #54, Colonia Centro"];
    [lirico setCategory:@"Teatro"];
    [lirico setCost:@"Depende de la Cartelera"];
    [lirico setSubway:@"Allende"];
    [lirico setSummary:@"Teatro Lírico está llena de diversos eventos y acontecimientos que han trascendido hasta nuestros días Fundado en 1907 por Justo Sierra"];
    [lirico setSchedule:@"Depende de la Cartelera"];
    [lirico setTelephone:@"55125696"];
    [lirico setNameTheather:@"Teatro Lírico"];
    [lirico setLatitude:@19.437416];
    [lirico setLongitude:@-99.137235];
    
    Library *hub=[NSEntityDescription insertNewObjectForEntityForName:@"Library" inManagedObjectContext:context];
    [hub setCategory:@"Biblioteca"];
    [hub setNameLibrary:@"Telmex Hub"];
    [hub setSummary:@"Es un lugar físico y virtual para jóvenes y adultos, dónde la colaboración es el principal valor; la cuál se activa a través de la oferta en cuanto a talleres, cursos, pláticas, conferencias que la misma comunidad de TelmexHub promueve"];
    NSNumber *hublatitud=[NSNumber numberWithFloat:19.430575];
    NSNumber *hublongitud=[NSNumber numberWithFloat:-99.137106];
    [hub setLatitude:hublatitud];
    [hub setLongitude:hublongitud];
    [hub setAddress:@"Isabel la Católica #51 P.B. Colonia Centro"];
    [hub setCost:costos];
    [hub setSchedule:@"Lunes a Sábados de 11 a 20 Hrs."];
    [hub setTelephone:@"5244 2711"];
    [hub setSubway:@"Allende, Zócalo"];
    
    
    Library *smge=[NSEntityDescription insertNewObjectForEntityForName:@"Library" inManagedObjectContext:context];
    [smge setCategory:@"Biblioteca"];
    [smge setNameLibrary:@"Sociedad Mexicana de Geografía y Estadística A.C."];
    [smge setSummary:@"Hizo las Cartas particulares de los estados, de división política territorial de la nación, los planos geológicos de costas, lagos y ríos, el redescubrimiento de las centenares de alturas barométricas, entre otras muchas."];
    NSNumber *smgelatitud=[NSNumber numberWithFloat:19.435584];
    NSNumber *smgelongitud=[NSNumber numberWithFloat:-99.130752];
    [smge setLatitude:smgelatitud];
    [smge setLongitude:smgelongitud];
    [smge setSubway:@"Zócalo"];
    [smge setSchedule:@"Información no disponible"];
    [smge setTelephone:telefono];
    [smge setCost:@"Información no disponible"];
    [smge setAddress:@"Justo Sierra #19"];
    
    
    Building *diputados=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [diputados setAddress:@"Donceles esq. Allende Centro, Cuahutemoc, Ciudad de México"];
    [diputados setCategory:@"Edificio Histórico"];
    [diputados setCost:nocosto];
    [diputados setLatitud:@19.436587];
    [diputados setLongitud:@-99.137836];
    [diputados setSchedule:@"Lunes a viernes de 9 a 18 horas"];
    [diputados setSubway:@"Allende"];
    [diputados setSummary:@"La Asamblea de Representantes del Distrito Federal, como órgano de representación ciudadana, con facultades para dictar bandos, ordenanzas y reglamentos de policía y buen gobierno, nace por Decreto Promulgatorio publicado en el diario oficial el 10 de agosto de 1987."];
    [diputados setTelephone:@"5130 1980"];
    [diputados setNameBuilding:@"Antigua Cámara de Diputados "];
    
    Building *borda=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [borda setAddress:@"Madero 33, Centro, Cuauhtemoc, (Ciudad de México), México"];
    [borda setCategory:@"Edificio Histórico"];
    [borda setCost:nocosto];
    [borda setLatitud:@19.433678];
    [borda setLongitud:@-99.137769];
    [borda setSchedule:nocosto];
    [borda setSummary:@"Originalmente pertenecía al francés José de la Borda (Joseph de Laborde), quien fue uno de los hombres más ricos de la Nueva España en el siglo XVIII"];
    [borda setSubway:@"Zócalo"];
    [borda setTelephone:nocosto];
    [borda setNameBuilding:@"Casa de don José de la Borda"];
    
    Building *azulejos=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [azulejos setAddress:@"Madero 4 Centro Histórico, D.F. (Ciudad de Mexico), México"];
    [azulejos setCategory:@"Edificio Histórico"];
    [azulejos setCost:nocosto];
    [azulejos setLatitud:@19.434095];
    [azulejos setLongitud:@-99.140188];
    [azulejos setNameBuilding:@"Casa de los Azulejos"];
    [azulejos setSubway:@"Bellas Artes"];
    [azulejos setSummary:@"Construcción representativa del barroco novohispano, es uno de los inmuebles coloniales que se mantiene en perfecto estado de conservación y constituye una visita obligada del centro histórico de la ciudad de México. El Restaurante Sanborn's se ubica en la planta baja."];
    [azulejos setTelephone:@"5512 1331"];
    [azulejos setSchedule:@" Lunes a domingo de 7 a 1 horas"];
    
    Building *casino=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [casino setAddress:@"Isabel la Católica No. 29, Centro Histórico, Ciudad de México."];
    [casino setCost:nocosto];
    [casino setCategory:@"Edificio Histórico"];
    [casino setLatitud:@19.433005];
    [casino setLongitud:@-99.136404];
    [casino setSchedule:@"Lunes a domingo de 13 a 18 horas."];
    [casino setSubway:@"Zócalo"];
    [casino setSummary:@"Se fundó en 1863 por un grupo de miembros destacados de la colonia española de México."];
    [casino setNameBuilding:@"Casino Español"];
    [casino setTelephone:@"5521 8894"];
    
    Building *juana=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [juana setAddress:@"Izazaga, 92, D.F. (Ciudad de Mexico) 06010, México"];
    [juana setCategory:@"Edificio Histórico"];
    [juana setCost:nocosto];
    [juana setLatitud:@19.426787];
    [juana setLongitud:@-99.136066];
    [juana setSchedule:nocosto];
    [juana setSubway:@"Isabel de la Católica"];
    [juana setSummary:@"La Universidad del Claustro de Sor Juana es una Asociación Civil sin fines de lucro, fundada en 1975. Por decreto presidencial le fue otorgado en 1979 el privilegio de ocupar el ex convento de San Jerónimo, espacio que durante 27 años habitó Sor Juana Inés de la Cruz."];
    [juana setTelephone:@"5130 3300"];
    [juana setNameBuilding:@"Convento de San Jerónimo y Claustro de Sor Juana"];
    
    Building *ayutamiento=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [ayutamiento setAddress:@"Plaza de la Constitución, Centro, Cuauhtémoc, Ciudad de México"];
    [ayutamiento setCategory:@"Edificio Histórico"];
    [ayutamiento setCost:nocosto];
    [ayutamiento setLatitud:@19.431862];
    [ayutamiento setLongitud:@-99.132945];
    [ayutamiento setSubway:@"Zócalo"];
    [ayutamiento setSummary:@"Es la sede del Gobierno del Distrito Federal, poder ejecutivo local del Distrito Federal de México. En ella tiene su despacho el Jefe de Gobierno y las principales jefaturas de la administración capitalina."];
    [ayutamiento setSchedule:@"Lunes a viernes de 10 a 19 horas."];
    [ayutamiento setNameBuilding:@"Palacio del Ayuntamiento"];
    [ayutamiento setTelephone:@"5345 8000"];
    
    Building *nacional=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [nacional setAddress:@"	Avenida Pino Suarez, Corregidora esquina Guatemala | Zócalo, D.F. (Ciudad de Mexico) 06060, México"];
    [nacional setCategory:@"Edificio Histórico"];
    [nacional setCost:@"Gratuito"];
    [nacional setLatitud:@19.432613];
    [nacional setLongitud:@-99.132008];
    [nacional setSchedule:@"Martes a domingo de 10 a 17 horas."];
    [nacional setSubway:@"Zócalo"];
    [nacional setSummary:@"El edificio y sus murales valen mucho la pena de visitarse. La entrada es gratuita. Así mismo el guía. Si hay posibilidad de entrar a los salones, hay muebles y murales hermosos."];
    [nacional setNameBuilding:@"Palacio Nacional"];
    [nacional setTelephone:@"3688 1243"];
    
    Building *corte=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [corte setAddress:@"Pino Suarez y Corregidora, D.F. (Ciudad de Mexico) 06065, México"];
    [corte setCategory:@"Edificio Histórico"];
    [corte setCost:@""];
    [corte setLatitud:@19.430939];
    [corte setLongitud:@-99.132152];
    [corte setSummary:@"Es un edificio con gran historia donde a la par de la visita podrás ver gente trabajado pues además de histórico sigue siendo el asiento de la Suprema Corte de Justicia de la Nación. Algunas áreas están reservadas y no se puede entrar como visitante. No tiene costo el acceso. Recomendable sólo para adultos y/o estudiantes. Indispensable identificación oficial."];
    [corte setSchedule:@""];
    [corte setSubway:@"Zócalo"];
    [corte setNameBuilding:@" Suprema Corte de Justicia de la Nación"];
    [corte setTelephone:@"(55) 4113-1000"];
    
    Building *iris=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [iris setAddress:@"Donceles 36, Centro, Cuauhtémoc, 06010 Ciudad de México, Distrito Federal"];
    [iris setCategory:@"Edificio Histórico"];
    [iris setCost:@""];
    [iris setLatitud:@19.436465];
    [iris setLongitud:@-99.137302];
    [iris setSubway:@"Allende, Zócalo"];
    [iris setSummary:@"Alberga las mejores muestras de la vida artística local, nacional e internacional, constituyéndose como un escenario imprescindible para el público capitalino y los visitantes del interior de la República y del extranjero. "];
    [iris setSchedule:@"Martes a domingo de 10 a 15 y de 16 a 19 horas."];
    [iris setTelephone:@"5510 2197"];
    [iris setNameBuilding:@"Teatro Esperanza Iris"];
    
    Building *tvizcainas=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [tvizcainas setAddress:@"Vizcaínas 21  Centro, Cuauhtémoc, 06080"];
    [tvizcainas setCategory:@"Edificio Histórico"];
    [tvizcainas setCost:nocosto];
    [tvizcainas setLatitud:@19.428892];
    [tvizcainas setLongitud:@-99.141119];
    [tvizcainas setSubway:@"Salto del Agua"];
    [tvizcainas setSchedule:nocosto];
    [tvizcainas setSummary:@"Prestigiosa institución privada no lucrativa con mas de 300 años de historia"];
    [tvizcainas setTelephone:@"5512 4267 / 5512 5055"];
    [tvizcainas setNameBuilding:@"Templo de las Vizcaínas"];
    
    Building *frances=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [frances setAddress:@"16 de Septiembre esquina con Palma"];
    [frances setCategory:@"Edificio Histórico"];
    [frances setCost:@""];
    [frances setLatitud:@19.432049];
    [frances setLongitud:@-99.135473];
    [frances setSummary:@"Sobresale por su peculiar diseño y el inconfundible estilo arquitectónico que armoniza la decoración interna con la bella estructura del exterior"];
    [frances setSubway:@"Zócalo"];
    [frances setSchedule:nocosto];
    [frances setTelephone:nocosto];
    [frances setNameBuilding:@"Correo Francés"];
    
    Building *palaciocorreo=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [palaciocorreo setAddress:@"Calle Tacuba 1 y Eje Central Lázaro Cárdenas, D.F. (Ciudad de Mexico) 06060, México"];
    [palaciocorreo setCategory:@"Edificio Histórico"];
    [palaciocorreo setCost:@""];
    [palaciocorreo setLatitud:@19.435833];
    [palaciocorreo setLongitud:@-99.14046];
    [palaciocorreo setSummary:@"Uno de los edificios mas hermosos de la Ciudad de México, aprovecha para mandar postales a todos tus amigos y familiares"];
    [palaciocorreo setSubway:@"Bellas Artes"];
    [palaciocorreo setSchedule:@"Lunes a Domingo de 10:00 a 18:00 hrs"];
    [palaciocorreo setTelephone:@"(55) 5512 0091"];
    [palaciocorreo setNameBuilding:@"Palacio de Correos"];
    
    Building *mercaderes=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [mercaderes setAddress:@"Ala poniente de la Plaza de la Constitución número 7"];
    [mercaderes setCategory:@"Edificio Histórico"];
    [mercaderes setCost:@""];
    [mercaderes setLatitud:@19.432692];
    [mercaderes setLongitud:@-99.134199];
    [mercaderes setSummary:@"Es un conjunto de majestuosos arcos que se encuentra entre las calles de Madero y 16 de Septiembre y fueron construidos en 1524, por orden del Ayuntamiento de la Ciudad, sobre los predios que se encontraban alrededor de la Plaza de la Constitución."];
    [mercaderes setSubway:@"Zócalo"];
    [mercaderes setSchedule:@"Lunes a sábado de 10 a 20 horas, algunos locales abren en domingo"];
    [mercaderes setTelephone:nocosto];
    [mercaderes setNameBuilding:@"  Portal de Mercaderes"];
    
    Building *sancarlos=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [sancarlos setAddress:@"Esq. Moneda, Centro, Cuauhtémoc, 06000, Ciudad de México"];
    [sancarlos setCategory:@"Edifico Histórico"];
    [sancarlos setCost:@""];
    [sancarlos setLatitud:@19.433046];
    [sancarlos setLongitud:@-99.128698];
    [sancarlos setSummary:@"Centro de estudios de posgrado en artes visuales, parte de la Escuela Nacional de Artes Plásticas.	"];
    [sancarlos setSubway:@"Zócalo"];
    [sancarlos setSchedule:nocosto];
    [sancarlos setTelephone:@"(55) 55220477  (55) 55220630"];
    [sancarlos setNameBuilding:@" Academia de San Carlos"];

    Building *latino=[NSEntityDescription insertNewObjectForEntityForName:@"Building" inManagedObjectContext:context];
    [latino setAddress:@"Madero y Eje Central Lazaro Cardenas, D.F. (Ciudad de Mexico) 06040, México"];
    [latino setCategory:@"Edificio Histórico"];
    [latino setCost:@""];
    [latino setLatitud:@19.433878];
    [latino setLongitud:@-99.140717];
    [latino setSummary:@"Por muchos años, este fue el edificio mas alto de la ciudad de México. Su construcción dirigida por ingenieros mexicanos le permite desafiar los fuertes temblores que ocurren en esta ciudad y mantenerse en pie a medio siglo de su construcción. Cuenta con un mirador desde el que se tiene una hermosa vista panorámica del centro de la ciudad."];
    [latino setSubway:@"Bellas Artes, San Juan de Letrán"];
    [latino setSchedule:@"Lunes a domingo de 9 a 22 horas."];
    [latino setTelephone:@"5518 7423"];
    [latino setNameBuilding:@"Torre Latinoamericana"];
    
    
    Church *corpus=[NSEntityDescription insertNewObjectForEntityForName:@"Church" inManagedObjectContext:context];
    [corpus setAddress:@"Graciela s/n Esq. Avenida Noé,(Ciudad de México), 7840"];
    [corpus setCost:nocosto];
    [corpus setCategory:@"Iglesia"];
    [corpus setLatitude:@19.466744];
    [corpus setLongitude:@-99.120285];
    [corpus setSummary:@"Fundada a principio del siglo XVII como convento de las monjas clarisas."];
    [corpus setSchedule:nocosto];
    [corpus setSubway:@"Bellas Artes, San Juan de Letrán"];
    [corpus setTelephone:nocosto];
    [corpus setNameChurch:@"Iglesia de Corpus Christi"];
    
    Church *hospital=[NSEntityDescription insertNewObjectForEntityForName:@"Church" inManagedObjectContext:context];
    [hospital setAddress:@"20 de Noviembre no. 82, Col. Centro C.P. 06090"];
    [hospital setCost:@""];
    [hospital setCategory:@"Iglesia"];
    [hospital setLatitude:@19.428837];
    [hospital setLongitude:@-99.133814];
    [hospital setSummary:@"Ubicada en el lugar donde Hernán Cortés y Moctezuma II se encontraron por primera vez en 1519, que era entonces el camino que conducía a Iztapalapa."];
    [hospital setSchedule:nocosto];
    [hospital setSubway:@"Zócalo"];
    [hospital setTelephone:@"5542 6501"];
    [hospital setNameChurch:@"Templo del Hospital de Jesús (Restos de Cortés)"];
    
    Church *catedral=[NSEntityDescription insertNewObjectForEntityForName:@"Church" inManagedObjectContext:context];
    [hospital setAddress:@"plaza de la constitución s/n col. Centro Histórico Ciudad de México"];
    [catedral setCost:@"Gratuito"];
    [catedral setCategory:@"Iglesia"];
    [catedral setLatitude:@19.43388];
    [catedral setLongitude:@-99.133121];
    [catedral setSummary:@"Este monumental edificio se construyo entre los siglos XVI y XIX, es un gran ejemplo del barroco en todas sus etapas, además de que esta ubicada en el Zócalo de la Ciudad de México, lugar donde existió el centro de la antigua Tenochtitlán."];
    [catedral setSchedule:@"Lunes a domingo de 7:30 al término de la misa de las 18:30 horas"];
    [catedral setSubway:@"Zócalo"];
    [catedral setTelephone:@"5512 9467"];
    [catedral setNameChurch:@"Catedral Metropolitana"];
    
    Church *veracruz=[NSEntityDescription insertNewObjectForEntityForName:@"Church" inManagedObjectContext:context];
    [veracruz setAddress:@"Avenida Hidalgo, 37, D.F. (Ciudad de Mexico) 06010, México"];
    [veracruz setCost:@"Gratuito"];
    [veracruz setCategory:@"Iglesia"];
    [veracruz setLatitude:@19.436688];
    [veracruz setLongitude:@-99.142369];
    [veracruz setSummary:@"Edificada en 1586, demolida dos siglos después y construida posteriormente en 1764, la Parroquia de Santa Veracruz alberga las imágenes del Cristo de los Siete Velos, la Virgen de los Remedios así como los restos del brillante escultor español Manuel Tolsá Sarrió."];
    [veracruz setSchedule:@"Jueves a martes de 9 a 19 horas"];
    [veracruz setSubway:@"Hidalgo"];
    [veracruz setTelephone:@"5512 3841"];
    [veracruz setNameChurch:@" Iglesia de la Santa Veracruz"];
    
    Church *bernando=[NSEntityDescription insertNewObjectForEntityForName:@"Church" inManagedObjectContext:context];
    [bernando setAddress:@"Venustiano Carranza esquina 20 de Noviembre, D.F. (Ciudad de Mexico) 06010, México"];
    [bernando setCost:@"Gratuito"];
    [bernando setCategory:@"Iglesia"];
    [bernando setLatitude:@19.430839];
    [bernando setLongitude:@-99.133822];
    [bernando setSummary:@"	En sus inicios fue un convento de monjas y al paso de los años fue desmontada la mitad de su fachada debido a que se abrió una calle con la que hoy hace esquina. Durante el periodo conocido como la reforma a cargo del ex presidente Benito Juárez, fue desamortizado el convento y finalmente demolido, a excepción de su iglesia, que actualmente permanece."];
    [bernando setSchedule:nocosto];
    [bernando setSubway:@"Zócalo"];
    [bernando setTelephone:@"5512 5095"];
    [bernando setNameChurch:@"Iglesia de San Bernardo"];
    
    Church *fernando=[NSEntityDescription insertNewObjectForEntityForName:@"Church" inManagedObjectContext:context];
    [fernando setAddress:@"	Puente de Alvarado y Vicente Guerrero, D.F. (Ciudad de Mexico), México"];
    [fernando setCost:@"Gratuito"];
    [fernando setCategory:@"Iglesia"];
    [fernando setLatitude:@19.438001];
    [fernando setLongitude:@-99.148825];
    [fernando setSummary:@"El Museo Panteón de San Fernando alberga los restos de algunos de los personajes más importantes de la Historia de México, como Benito Juárez, Vicente Guerrero, Margarita Maza de Juárez, Ignacio Zaragoza, Martín Carrera, entre otros.Cuenta con un espacio destinado a montar obras de teatro, en cuya escenografía se muestran las frases célebres de nuestros personajes de la Historia."];
    [fernando setSchedule:nocosto];
    [fernando setSubway:@"Hidalgo"];
    [fernando setTelephone:nocosto];
    [fernando setNameChurch:@"Panteón San Fernando"];
    
    
    Church *profesa=[NSEntityDescription insertNewObjectForEntityForName:@"Church" inManagedObjectContext:context];
    [hospital setAddress:@"Isabel La Catolica esquina Francisco I. Madero, D.F. (Ciudad de Mexico) 06010, México"];
    [profesa setCost:@"Gratuito"];
    [profesa setCategory:@"Iglesia"];
    [profesa setLatitude:@19.433726];
    [profesa setLongitude:@-99.1365];
    [profesa setSummary:@"Este templo fue en su primera etapa de la Orden Jesuita, tras su expulsión de México (entonces La nueva España), es rescatado por los Padres del Oratorio de San Felipe Neri, quienes hasta el día de hoy tienen su custodia y promoción.Es uno de los templos mejor cuidados que atestigua la evolución de la ciudad de México, tiene detalles del barroco mexicano y de arte europeo. En su interior hay obras plásticas de Villalpando, además de ser el lugar donde se firmó el Acta de la Independencia de México."];
    [profesa setSchedule:nocosto];
    [profesa setSubway:@"Allende, Zócalo"];
    [profesa setTelephone:nocosto];
    [profesa setNameChurch:@"Templo de la Profesa"];
    
    Church *francisco=[NSEntityDescription insertNewObjectForEntityForName:@"Church" inManagedObjectContext:context];
    [francisco setAddress:@"Francisco I. Madero 7, Centro Histórico de la Ciudad de México"];
    [francisco setCost:@""];
    [francisco setCategory:@"Iglesia"];
    [francisco setLatitude:@19.433619];
    [francisco setLongitude:@-99.140188];
    [francisco setSummary:@"A mediados del siglo XIX, se descubrió en este convento una conspiración contra el gobierno y el presidente Comonfort expidió un decreto por el que suprimía a la orden; la apertura de una calle dividió el convento en dos partes y muchos edificios se demolieron y se ocuparon los terrenos para su utilidad pública."];
    [francisco setSchedule:@"Lunes a domingo de 7:30 a 21 horas."];
    [francisco setSubway:@"Bellas Artes"];
    [francisco setTelephone:@"5521 7331"];
    [francisco setNameChurch:@"Templo de San Francisco"];
    
    Church *cantarina=[NSEntityDescription insertNewObjectForEntityForName:@"Church" inManagedObjectContext:context];
    [cantarina setAddress:@"República de Nicaragua, esquina con Brasil, colonia Centro, Ciudad de México."];
    [cantarina setCost:nocosto];
    [cantarina setCategory:@""];
    [cantarina setLatitude:@19.440755];
    [cantarina setLongitude:@-99.133202];
    [cantarina setSummary:@"Esta iglesia fue creada en 1568 para asistir a la Catedral Metropolitana con la población blanca, mestiza y castas, a la que tenía bajo su jurisdicción."];
    [cantarina setSchedule:@"Lunes - sábado, 6-18 h.; domingo, 6-14 h"];
    [cantarina setSubway:@"Lagunilla"];
    [cantarina setTelephone:nocosto];
    [cantarina setNameChurch:@"Templo y Plaza de Santa Catarina"];
    
    Museum *merced=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [merced setAddress:@"República de Uruguay 170, Centro, Cuauhtémoc, Ciudad de México"];
    [merced setCategory:@"Museo"];
    [merced setCost:nocosto];
    [merced setLatitude:@19.429353];
    [merced setLongitude:@-99.127849];
    [merced setSchedule:nocosto];
    [merced setSubway:@"Merced"];
    [merced setSummary:@"Fue escenario de vida monástica, pero también apasionados amores, sirvió además como cuartel militar, bodega, pulquería y dio cobijo a la aventura educativa de niños y obreros escultores"];
    [merced setTelephone:nocosto];
    [merced setNameMuseum:@"Ex convento de La Merced"];
    
    Museum *arte=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [arte setAddress:@"Revillagigedo 11, esquina con Independencia  06050 Ciudad de México, Distrito Federal"];
    [arte setCategory:@"Museo"];
    [arte setCost:@"$40.00 M.N.Personas excecptas de pago: Los niños menores de 13 años.Las personas discapacitadas.Las personas mayores de 60 años con credencial vigente. Estudiantes y profesores con credencial vigente.Indígenas y Artesanos con credencial vigente.El domingo la entrada es gratuita."];
    [arte setLatitude:@19.433835];
    [arte setLongitude:@-99.146223];
    [arte setSchedule:@"Martes a domingo de las 10:00 a las 18:00 horas. Miércoles de las 10:00 a las 21:00 horas."];
    [arte setSubway:@"Bellas Artes"];
    [arte setSummary:@"Si quieres conocer a grandes rasgos la variedad de la artesanía mexicana en toda su extensión geográfica, este es el lugar. Frecuentemente hay buenas exposiciones temporales, además el edificio es lindo y su tiendita esta llena de souvenirs."];
    [arte setTelephone:@"5510 2201"];
    [arte setNameMuseum:@"Museo de Arte Popular"];
    
    Museum *tolerancia=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [tolerancia setAddress:@"Plaza Juárez, Centro Histórico Frente al Hemiciclo a Juárez de la Alameda central D.F. (Ciudad de Mexico) 06010, México"];
    [tolerancia setCategory:@"Museo"];
    [tolerancia setCost:@"Público en general $65. Estudiantes y maestros con credencial vigente y personas mayores de 60 años $49.  La Isla Panwapa (Museo para menores de 12 años) $49."];
    [tolerancia setLatitude:@19.434667];
    [tolerancia setLongitude:@-99.144371];
    [tolerancia setSchedule:@"Martes a viernes de 9 a 18 horas, sábados y domingos de 10 a 19."];
    [tolerancia setSubway:@"Bellas Artes"];
    [tolerancia setSummary:@"Situado frente al Hemiciclo a Juárez en la Ciudad de México, Museo de la Memoria y Tolerancia, muy recomendable la visita guíada, salas como el Holocausto, que sin duda vale la pena visitarlo."];
    [tolerancia setTelephone:@"(55) 5130 5555	"];
    [tolerancia setNameMuseum:@"Museo Memoria y Tolerancia"];
    
    Museum *bellasartes=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [bellasartes setAddress:@"Avenida Juarez y Eje Central s/n Centro Histórico D.F. (Ciudad de Mexico) 06050 México"];
    [bellasartes setCost:@"$43 toda la semana.Credencial de estudiante  entrada libre."];
    [bellasartes setCategory:@"Museo"];
    [bellasartes setLatitude:@19.434937];
    [bellasartes setLongitude:@-99.14135];
    [bellasartes setSubway:@"Bellas Artes"];
    [bellasartes setSummary:@"El solo verlo desde afuera ya es un beneficio, la arquitectura del edificio es una obra de arte en si. Entrando a mano derecha se encuentra una pequeña exposición que detalla todo el diseño externo del Palacio. Imperdible."];
    [bellasartes setSchedule:@"Martes a domingo de 10 a 17 horas"];
    [bellasartes setTelephone:@"5280 8771"];
    [bellasartes setNameMuseum:@"Palacio de Bellas Artes"];
    
    Museum *inquisicion=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [inquisicion setAddress:@"República de Brasil No. 33 – Ciudad de México, (entre las calles: República de Brasil, República de Argentina y Belisario Domínguez)"];
    [inquisicion setCost:@"Entrada Libre"];
    [inquisicion setCategory:@"Museo"];
    [inquisicion setLatitude:@19.437902];
    [inquisicion setLongitude:@-99.133475];
    [inquisicion setSubway:@"Zócalo, Allende"];
    [inquisicion setSummary:@"Fue tribunal y cárcel de la inquisición, sitio para bailes públicos, plantel del colegio militar, cárcel de reos politicos y militares y desde 1847 hasta mediados del siglo pasado, sede de la Escuela Nacional de Medicina."];
    [inquisicion setSchedule:@"Lunes a domingo de 9 a 18 horas."];
    [inquisicion setTelephone:@"5623 3113"];
    [inquisicion setNameMuseum:@"Palacio de la Inquisición"];
    
    Museum *estanquillo=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [estanquillo setAddress:@"Isabel la Católica 2,Entre Palma y Moltolinia, esquina con Madero. Col. Centro De La Ciudad De México"];
    [estanquillo setCost:@"Entrada Libre"];
    [estanquillo setCategory:@"Museo"];
    [estanquillo setLatitude:@19.433208];
    [estanquillo setLongitude:@-99.136162];
    [estanquillo setSubway:@"Allende, Zócalo"];
    [estanquillo setSummary:@"El museo da cabida a la colección personal del escritor Carlos Monsiváis que abarca pinturas, fotografía, juguetes, álbumes; calendarios, publicidad y libros."];
    [estanquillo setSchedule:@"Miércoles a lunes de 10 a 18 horas."];
    [estanquillo setTelephone:@"5521 3052"];
    [estanquillo setNameMuseum:@" Museo del Estanquillo"];

    Museum *diseno=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [diseno setAddress:@"Francisco I Madero No. 7,Francisco I Madero No. 74 Col. Centro Histórico"];
    [diseno setCost:@"Entrada Libre"];
    [diseno setCategory:@"Museo"];
    [diseno setLatitude:@19.433369];
    [diseno setLongitude:@-99.134595];
    [diseno  setSubway:@"Zócalo"];
    [diseno setSummary:@"El Museo Mexicano del Diseño es poco conocido, quizás porque es gracias a la iniciativa privada que existe un espacio dedicado al diseño nacional en la Ciudad de México"];
    [diseno setSchedule:@"Lunes de 11:30 am a 8:00 pm,Martes a Domingo de 10:00 am a 8:00 pm"];
    [diseno setTelephone:@"(55) 55108609"];
    [diseno setNameMuseum:@"Museo Mexicano de Diseño"];

    Museum *artenacional=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [artenacional setAddress:@"Tacuba 8, en el Centro Histórico"];
    [artenacional setCost:@"Admisión general $37.00. Estudiantes, maestros, miembros del INAPAM, ICOM y SEPALO con credencial vigente entrada libre. Domingos entrada libre"];
    [artenacional setCategory:@"Museo"];
    [artenacional setLatitude:@19.436162];
    [artenacional setLongitude:@-99.139423];
    [artenacional setSubway:@"Bellas Artes,Allende"];
    [artenacional setSummary:@"bello e impactante edificio de principios de siglo que alberga las colecciones de arte mexicano colonial, moderno y contemporáneo	en la calle "];
    [artenacional setSchedule:@"Martes a domingo de 10:00 a 17:30 horas"];
    [artenacional setTelephone:@"(55) 5130 3460"];
    [artenacional setNameMuseum:@"Museo de Nacional de Arte "];

    Museum *luz=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [luz setAddress:@"San Ildefonso 43, Centro Histórico"];
    [luz setCost:@"Admisión general $35.00. Estudiantes, maestros, miembros del INAPAM y exalumnos de la UNAM con credencial vigente $25.00"];
    [luz setCategory:@"Museo"];
    [luz setLatitude:@19.436283];
    [luz setLongitude:@-99.130003];
    [luz setSubway:@"Zócalo"];
    [luz setSummary:@"Es un museo temático en el se exploran las diferentes facetas del fenómeno de la luz y su relación con otros campos de la ciencia"];
    [luz setSchedule:@"Lunes a viernes de 9:00 a 17:00 hrs,Sábados, domingos y días festivos de 10:00 a 17:00 hrs."];
    [luz setTelephone:@" 5702-4129 ext. 109"];
    [luz setNameMuseum:@"Museo de la Luz"];

    Museum *culturas=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [culturas setAddress:@"Moneda No. 13, Centro Histórico Ciudad de México"];
    [culturas setCost:@"Entrada Libre"];
    [culturas setCategory:@"Museo"];
    [culturas setLatitude:@19.433268];
    [culturas setLongitude:@-99.13069];
    [culturas setSubway:@"Zócalo"];
    [culturas setSummary:@"es un sitio con jerarquía propia porque cuenta con una tradición museística y una historia como ningún otro la tiene; desciende del primer museo que existió en nuestro país y en América Latina"];
    [culturas setSchedule:@"Martes a domingo de 10:00 a 17:00 hrs"];
    [culturas setTelephone:@"(55) 5512 7452"];
    [culturas setNameMuseum:@"Museo de las Culturas"];

    Museum *caricaturas=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [caricaturas setAddress:@"Donceles 99 en el Centro Histórico de la Ciudad de México"];
    [caricaturas setCost:@"Admisión general $20.00. Estudiantes, maestros, miembros del INAPAM con credencial vigente $15.00"];
    [caricaturas setCategory:@"Museo"];
    [caricaturas setLatitude:@19.435798];
    [caricaturas setLongitude:@-99.132643];
    [caricaturas setSubway:@"Zócalo"];
    [caricaturas setSummary:@"Acondicionado para presentar una pequeña, pero muy completa y muy bien curada, colección de caricaturas que nos ayudará a entender mejor el fenómeno de los cartones políticos en los periódicos contemporáneos"];
    [caricaturas setSchedule:@"Todos los días de 10:00 a 18:00 hrs"];
    [caricaturas setTelephone:@"57 04 04 59"];
    [caricaturas setNameMuseum:@"Museo de la Caricatura"];

    Museum *economia=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [economia setAddress:@"Tacuba 17 (entre Bolívar y Filomeno Mata). Col. Centro Histórico"];
    [economia setCost:@"Admisión general $55.00. Estudiantes, maestros, miembros del INAPAM con credencial vigente $45.00"];
    [economia setCategory:@"Museo"];
    [economia setLatitude:@19.435585];
    [economia setLongitude:@-99.138404];
    [economia setSubway:@"Bellas Artes, Allende"];
    [economia setSummary:@"Su propósito es detectar, recopilar, organizar, almacenar, preservar y difundir la información sobre los temas particulares de las exhibiciones del Museo así como los relacionados con la educación económica y financiera."];
    [economia setSchedule:@"Martes a domingo de 9:00 a 18:00 horas."];
    [economia setTelephone:@"(55) 5130.4600"];
    [economia setNameMuseum:@" Museo de Economía"];

    Museum *mexico=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [mexico setAddress:@"Pino Suárez 30, Col. Centro	"];
    [mexico setCost:@"Admisión general $24.00. Estudiantes, maestros, miembros del INAPAM con credencial vigente $12.00. Miercoles Entrada libre"];
    [mexico setCategory:@"Museo"];
    [mexico setLatitude:@19.431467];
    [mexico setLongitude:@-99.13245];
    [mexico setSubway:@"Zócalo"];
    [mexico setSummary:@"El museo es un hermoso palacio colonial cuya construcción se remonta a 1536. Desde entonces el edificio ha sido remodelado y modificado en muchas ocasiones, tanto en su aspecto como en su funcionamiento, habiendo servido desde palacio de nobles familias hasta vecindad. "];
    [mexico setSchedule:@"Martes a Domingo 10:00 a 17:00 horas"];
    [mexico setTelephone:@"5542 0671"];
    [mexico setNameMuseum:@"Museo de la Ciudad de México"];

    Museum *cerveza=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [cerveza setAddress:@"Bolívar 18-A. Esquina con 5 de Mayo"];
    [cerveza setCost:@"Entrada Libre"];
    [cerveza setCategory:@"Museo"];
    [cerveza setLatitude:@19.436091];
    [cerveza setLongitude:@-99.139574];
    [cerveza setSubway:@"Allende"];
    [cerveza setSummary:@"Se te indica cómo servirla, saborearla y hasta cómo debes consumirla sin molestias gastrointestinales, ya que al igual que el vino, la cerveza necesita oxigenarse y es recomendable vaciar ésta a la mitad de un tarro o vaso, se debe dejar que espume y esperar a que desaparezca, si quedan dos dedos de burbujas indica que la cerveza es de buena calidad, así se evita el consumo excesivo de gas carbónico, el cual suele causar contrariedades en el estomago"];
    [cerveza setSchedule:@"Mar-Jue 13-22 hrs., Vie 13-01 hrs, Sáb 13-01 hrs. Dom 13-18 hrs."];
    [cerveza setTelephone:@"5510-0951"];
    [cerveza setNameMuseum:@" Museo de la Cerveza"];

    Museum *calzado=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [calzado setAddress:@"Bolívar 27, Col. Centro  Histórico"];
    [calzado setCost:@"	Entrada Libre"];
    [calzado setCategory:@"Museo"];
    [calzado setLatitude:@19.419103];
    [calzado setLongitude:@-99.140668];
    [calzado setSubway:@" Doctores"];
    [calzado setSummary:@"Exhibe dos mil piezas de calzado natural y 15 mil miniaturas alusivas al calzado, elaboradas en materiales tan diversos como vidrio, piel, cerámica, porcelana, plástico y madera"];
    [calzado setSchedule:@"lunes  a viernes de 10.00 a 14.00 y de  15.00 a  18.00 hrs. Sábado de 10.00 a 18.00 hrs. Domingo cerrado"];
    [calzado setTelephone:@"5510-0627"];
    [calzado setNameMuseum:@"Museo del Calzado"];

    Museum *idelfonso=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [idelfonso setAddress:@"Justo Sierra 16, Centro Histórico D.F. 06060, México"];
    [idelfonso setCost:@"General: $45.00, Estudiantes y Maestros: $22.50, Martes entrada libre, Menores de 12 años e INAPAM entrada libre."];
    [idelfonso setCategory:@"Museo"];
    [idelfonso setLatitude:@19.435689];
    [idelfonso setLongitude:@-99.130922];
    [idelfonso setSubway:@"Zócalo"];
    [idelfonso setSummary:@"Los patios de este Colegio, dan tranquilidad después de estar en las calles céntricas de la Cd. de México, el arte en sus murales, así como en las salas de exposición son un lugar para la paz y la meditación."];
    [idelfonso setSchedule:@"Martes, 10:00 a 19:30 horas; entrada libre.- Miércoles a domingo, 10:00 a 17:30 hrs.- Los lunes, el museo permanece cerrado"];
    [idelfonso setTelephone:@" 57022991"];
    [idelfonso setNameMuseum:@"Antiguo Colegio de San Ildefonso"];

    Museum *arzobispo=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [arzobispo setAddress:@"Moneda, 4, D.F. (Ciudad de Mexico) 06010, México"];
    [arzobispo setCost:nocosto];
    [arzobispo setCategory:@"Museo"];
    [arzobispo setLatitude:@19.433639];
    [arzobispo setLongitude:@-99.131185];
    [arzobispo setSubway:@"Zócalo"];
    [arzobispo setSummary:@"El Museo de la Secretaría de Hacienda y Crédito Público, Antiguo Palacio del Arzobispado, conserva, documenta, investiga, exhibe y difunde una muestra representativa de la plástica contemporánea en México, especialmente del último cuarto del siglo XX"];
    [arzobispo setSchedule:nocosto];
    [arzobispo setTelephone:@"5130 1900"];
    [arzobispo setNameMuseum:@" Antiguo Palacio del Arzobispado"];

    Museum *piedad=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [piedad setAddress:@"Monte de Piedad 7 Centro, Cuauhtémoc, 06000 Ciudad de México, D.F., México"];
    [piedad setCost:nocosto];
    [piedad setCategory:@"Museo"];
    [piedad setLatitude:@19.434338];
    [piedad setLongitude:@-99.134215];
    [piedad setSubway:@"Zócalo"];
    [piedad setSummary:@"	El edificio es muy bello y tienen una sala en el interior de ""regalos"" donde puedes ver cuadros, esculturas, muebles, cadelabros y demas cosas muy antiguas y hermosas. Despues recorrer las salas de joyas donde encuentras de todo y con precios muy diferentes."];
    [piedad setSchedule:@"Lunes a viernes de 8:30 a 18 horas, sábados de 8:30 a 13 horas."];
    [piedad setTelephone:@"5278 1800"];
    [piedad setNameMuseum:@"Edificio del Nacional Monte de Piedad"];

    Museum *ejercito=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [ejercito setAddress:@"Filomeno Mata, 6 Colonia Centro, D.F. (Ciudad de Mexico) 06010, México"];
    [ejercito setCost:@"Entrada Libre y servicios totalmente gratuitos"];
    [ejercito setCategory:@"Museo"];
    [ejercito setLatitude:@19.435575];
    [ejercito setLongitude:@-99.138911];
    [ejercito setSubway:@"Allende"];
    [ejercito setSummary:@"Su horario es hasta las 18pm de martes a domingo, la entrada es gratuita y cuenta con guardabultos y una tienda donde puedes encontrar libros, figuras y ""recuerdos"" del tema."];
    [ejercito setSchedule:@"Martes a Sábado 10:00 a 18:00 hrs. Domingos y días festivos:10:00 a 16:00 hrs."];
    [ejercito setTelephone:@" 55-12-32-15 y 55-12-75-86"];
    [ejercito setNameMuseum:@"Museo del Ejército"];

    Museum *iturbide=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [iturbide setAddress:@"Madero, 17, D.F. (Ciudad de Mexico) 06010, México"];
    [iturbide setCost:@"Entrada Libre"];
    [iturbide setCategory:@"Museo"];
    [iturbide setLatitude:@19.433772];
    [iturbide setLongitude:@-99.138946];
    [iturbide setSubway:@"Zócalo, Allende y Bellas Artes"];
    [iturbide setSummary:@"	Muy buena exhibición de las principales artesanías de Mexico y Latinoamérica, además de que es un edificio muy hermoso, siempre ofrece exhibiciones para todos los gustos y edades.	"];
    [iturbide setSchedule:@"  Abierto al público de Miércoles a Lunes de 10 a 19 hrs."];
    [iturbide setTelephone:@"12 26 02 47"];
    [iturbide setNameMuseum:@"Palacio de Iturbide"];

    Museum *mineria=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [mineria setAddress:@"Tacuba 5 Centro Histórico, D.F. México"];
    [mineria setCost:@""];
    [mineria setCategory:@"	Museo"];
    [mineria setLatitude:@19.435841];
    [mineria setLongitude:@-99.139587];
    [mineria setSubway:@"Allende, Bellas Artes"];
    [mineria setSummary:@"Construído en la fase final del virreinato, obra del español Manuel Tolsá, este inmueble es una muestra de arquitectura Neoclásica, en la actualidd alberga un museo. En cuya Plaza se encuentra la Estatua de Carlos IV de España obra del mismo autor, conocida como: ""El Caballito"""];
    [mineria setSchedule:@"Lunes a viernes de 09:00 a 14:00 y de 17:00 a 18:00 hrs."];
    [mineria setTelephone:@"5623.29.29"];
    [mineria setNameMuseum:@"Palacio de Minería"];

    Museum *agustin=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [agustin setAddress:@"		República del Salvador 76, Centro Histórico"];
    [agustin setCost:nocosto];
    [agustin setCategory:@"Museo"];
    [agustin setLatitude:@19.429754];
    [agustin setLongitude:@-99.136459];
    [agustin setSubway:@"Isabel la Católica"];
    [agustin setSummary:@"El antiguo Convento de San Agustín fue uno de los más grandes e importantes que existieron en la Nueva España, su renombre proviene de los fundadores agustinos y de los personajes destacados en el arte y las ciencias, a los que dio abrigo y refugio. Situación de la que surgieron interesantes obras de arte como sus bellas pinturas, que yacen en sus amplios patios y numerosas galerías al interior."];
    [agustin setSchedule:nocosto];
    [agustin setTelephone:@"5518 6009"];
    [agustin setNameMuseum:@"Ex Convento de San Agustín"];

    Museum *ensenanza=[NSEntityDescription insertNewObjectForEntityForName:@"Museum" inManagedObjectContext:context];
    [ensenanza setAddress:@"Donceles 104, antes calle de Cordobanes, entre Brasil y Argentina, Centro Histórico, México D.F."];
    [ensenanza setCost:nocosto];
    [ensenanza setCategory:@"Museo"];
    [ensenanza setLatitude:@19.435845];
    [ensenanza setLongitude:@-99.13233];
    [ensenanza setSubway:@"Zócalo"];
    [ensenanza setSummary:@"Fue llamado templo de la Enseñanza debido a que la Fundación Conventual de la Compañía de María, con el título de Nuestra Señora del Pilar, San Miguel y San Juan Nepomuceno, se estableció en ese lugar con el propósito de enseñar a las niñas hijas de los conquistadores."];
    [ensenanza setSchedule:nocosto];
    [ensenanza setTelephone:nocosto];
    [ensenanza setNameMuseum:@"Templo de la Enseñanza"];
    
    Arqueology *templo=[NSEntityDescription insertNewObjectForEntityForName:@"Arqueology" inManagedObjectContext:context];
    [templo setAddress:@"Seminario 8 | Centro Histórico, D.F. (Ciudad de Mexico) 06060, México"];
    [templo setCost:@"$57.00 M.N. Menores de 13 años, estudiantes, maestros, personas de la tercera edad, pensionados y jubilados su entrada es libre presentando su identificación vigente. Domingo Entrada libre para mexicanos y extranjeros residentes del país"];
    [templo setCategory:@"Zona Arqueológica"];
    [templo setLatitude:@19.434922];
    [templo setLongitude:@-99.131361];
    [templo setSubway:@"Zócalo"];
    [templo setSummary:@"Si te gusta la historia de México y deseas conocer detalles interesantes, debes venir a este museo y sobre todo, venir con suficiente tiempo de holgura para verlo y disfrutarlo todo.	"];
    [templo setSchedule:@"Martes a domingo de 9 a 17 horas"];
    [templo setTelephone:@"5542 4943"];
    [templo setNameArqueology:@"Templo Mayor"];
    
    Legend *blackCrist = [NSEntityDescription
    insertNewObjectForEntityForName:@"Legend"
    inManagedObjectContext:context];
    
    [blackCrist setLegendName:@"EL SEÑOR DEL VENENO"];
    [blackCrist setSummary:@"Llegamos aquí a la más interesante y pavorosa leyenda mística de aquellas épocas y viejas rúas metropolitanas.Todos recordamos haber visto al pasar por la iglesia Porta-Coeli, cerca de la puerta, al lado izquierdo, la impresionante escultura de un cristo negro, rodeado de flores y milagros.Era el señor del veneno. Gozaba de  gran devoción por esta su leyenda secular:Un señor obispo que vivía retirado del convento de Porta-Coeli, tenía un terrible enemigo. Sabedor éste de que el obispo gozaba de besar los pies al crucifijo en sus actos de devoción, puso secretamente un activo veneno en los pies del cristo. Pero al llegar el pontífice a besar las plantas del crucifijo, el Cristo comenzó a contraer las piernas y poco a poco se fue volviendo negro como si hubiera absorbido la droga mortal.Esta imagen fue retirada de aquel sitio hace pocos años, y puede verse hoy en la catedral, a donde fue colocado por el encargado del museo religioso, después de haber rodado con peligro de perderse."];
    NSNumber * longitude = [NSNumber numberWithFloat:-99.131896];
    [blackCrist setLongitude:longitude];
    NSNumber *latitud=[NSNumber numberWithFloat:19.43059];
    [blackCrist setLatitude:latitud];
    [blackCrist setImageName:@"cristo.png"];
    [blackCrist setTexttwitter:@"Cuentan que @decalleencalle se relata El Señor del Veneno"];
    [blackCrist setAudioLegend:@"cristo"];
    
    Legend *flyingSquare=[NSEntityDescription insertNewObjectForEntityForName:@"Legend" inManagedObjectContext:context];
    [flyingSquare setLegendName:@"LA PLAZA DEL VOLADOR"];
    [flyingSquare setSummary:@" Esta plaza estaba, puede decirse que muy cerca de la calle Real o Flamencos, en un espacio de bastante extensión que limitaba el costado sur de  Palacio, la Universidad y Portacoeli. Tenía forma cuadrada y había en ella cajones o portales jacales de tablas y tejamanil, todo ello sucio, de feo aspecto, ennegrecido por las lluvias, el polvo y el abandono, formando callejuelas estrellas y llenas de obstáculos para caminar por ellas.En la parte que daba a Flamencos, estaban los barberos con sus barberías de cortinillas encarnadas, y todo el material de su oficio, verdaderamente típico, distinguiendo la olla con sanguijuelas que tanto se usaban para la cura de algunas dolencias, la piedra de afilar navajas, cuchillos, y otros muchos instrumentos; el gallo imprescindible lo mismo que la guitarra con su moño de listones de varios matices, los frascos con aceite y menjurjes para el pelo y el afeite en la cara, el recipiente que se ponía junto a la garganta para enjabonar la cara, que nos recuerda aquel casco de Mambrino del sublime “Don Quijote”, y en fin, una trampa de madera, cerrada, con su abertura, para que el cliente depositara allí la propina al activo y charlatán “Fígaro” que le había servido. En la esquina de esta Plaza del Volador, que da a la Plaza de Armas o Plaza Mayor, había un elegante estanquillo, y a su puerta unos soldados de infantería, de estatura grande, pintados, que honraban a su autor, verdaderamente un excelente artista, según entonces se transmitían, aunque ignoramos su nombre. Mirándolo todo a primera vista se notaba un gran desorden, amontonadas todas las mercancías de aquí para allá, impidiendo el paso. Las verduras, frutas, aves, huevos, quesos, carnicerías y, a las espaldas de aquellas barberías, se vendían mezclas, sombreros de petate, trastos de loza, barro y cristal ordinario, verdoso, y demás utensilios para los hogares de no muy sobrantes recursos.Algunos puestos de frutas lucían mostradores para exponer la mercancía al público claro que no como ahora, sino en canastos, viéndose a la vendedora, generalmente una mujer ancha de caderas, bullebulle y parlera, casadera, con la camisa escotada, que dejaba ver el cuello y el pecho, apareciendo entre gargantillas de corales, dijes, escapularios y medallas; el refajo en desván y las manos llenas de anillos, listas para el despacho y para soltarle una cachetada al punto de la paloma si se presentaba la ocasión, según nos dice un viejo y ameno historiador.Pero todo esto era lo distinguido, lo fino, lo escogido del mercado; porque lo general, lo más común era hacer la venta en el santo suelo, derramada por él la mercancía. Cuando llovía, la multitud atravesando las estrechísimas callejuelas, se amontonaba, y los codazos, los manoteos, los empujones, abundaba; se pisaba la mercadería; cubríase todo de fango; y despedíase un hedor de las frutas, las ranas, los ajolotes, pancita, carnitas, etc. Etc., todo ello medio podrido y que, aún así, tenía compradores.Son muy divertidas las descripciones de estos cuadros de aquella época, que nos hacen los cronistas, en las que aparecen como personajes los muchachos con canastos en la cabeza, llenos de pasteles y empanadas, “chuchulucos” y quesadillas; los indios que ofrecían fajas y monteras, manta de Texcoco, listones, medallas; los que voceaban papeles escritos, sin faltar el recaudador abusivo del impuesto, ni el “logrero” que prestaba dinero al veinticinco por ciento semanario, con abonos diarios, ni el culto glotón y cañista que se apuntaba así al descuido con cristianas hermosas, al amparo de santos y vírgenes.Mas ya que hemos descrito, con el auxilio de cronistas de aquellos años, algo que la Plaza del Volador, justo es añadir que haya formado parte o no de la casa nueva de “Motecuhzoma”, punto que discuten algunos historiadores, el caso es que fue cedida a don Hernando de Cortés por la Majestad Católica del Emperador Carlos V, que los herederos del conquistador vendieron al edificio en 1562, reservándose la parte en que se edificó después la Universidad y el mercado llamado también del Volador, que pasados los años, se quedaron  sin este terreno hasta quedar limitada su posesión, después de pleitos y discusiones infinitas, a solamente el lugar de que nos ocupamos.Pero ni aún el sitio de la Plaza del Volador estuvo libre de litigios, pues el Ayuntamiento pretendió construir ahí una fuente pública contra lo que protestó el representante de don Pedro Cortés que entonces poseía el título de Marqués del Valle. La Real Audiencia, en 21 de febrero de 1620, mandó suspender esta obra ya emprendida por la Ciudad, siguiendo el pleito, hasta que al cabo de cuatro años el citado noble obtuvo la propiedad legal por sentencia de 19 de enero de 1624 confirmada en “revista” el 9 de junio del mismo año.Mas antes de referirnos a los usos que tuvo la Plaza que historiamos, queremos satisfacer la curiosidad de algunos lectores que deseen darse cuenta de la razón por la que se llamaba “del Volador”, para lo cual precisa que evoquemos los tiempos de los aztecas, sus bailes diversos, sus cantos, todo ello curioso en extremo. No sólo el teatro y el baile eran sus únicas diversiones, sino también los llamados juegos públicos, en los que se probaba la agilidad, la fuerza, la destreza en diversos equilibrios que causaban entusiasmo en las gentes. Entre esos juegos existió el llamado de los “Voladores” que tenía lugar en las grandes fiestas, particularmente en las temporales. Para realizarlo empezaban por buscar en los bosques un árbol tan alto como fuera posible, fuerte y derecho; le quitaban las ramas y la corteza llevándolo a la ciudad y lo fijaban en la mitad de la plaza. En la extremidad superior del mismo metían un gran cilindro de madera, que llamaron los españoles “mortero”, por su semejanza con este utensilio. De toda esta pieza pendían cuatro cuerdas fuertes que sostenían un soporte, cuadrado también, de madera. Entre el cilindro y el soporte, ataban cuatro cuerdas también y les daban tantas vueltas alrededor del árbol cuantas debían dar los voladores. Estas cuerdas se enfilaban por cuatro agujeros hechos en el medio de los cuatro pedazos de que constaba el volador. Disfrazados con trajes de águila o de otras aves, subían velozmente por una cuerda que rodeaba al soporte, bailaban arriba con gran recreo de la muchedumbre que los admiraba, y atados se arrojaban al vacío empezando el vuelo merced al movimiento del soporte y el cilindro, que se movían por el impulso del cuerpo, girando al desenvolverse las cuerdas; así, mientras éstas se alargaban, mayores eran los círculos que trazaban en los aires, y en tanto cuatro giraban como hemos dicho, otro bailaba sobre el cilindro tocando un tamboril o remolando una bandera, todo ello con serenidad de ánimo, sin que el peligro les importara. Además, se aumentaban los voladores, porque los que estaban en el citado soporte, al que solían subir diez o doce viendo que se daba ya la última vuelta, se lanzaban en las cuerdas para llegar al mismo tiempo que ellos al suelo.Se buscaba la proporción de la elevación del árbol y de la longitud de las cuerdas de tal manera que con trece vueltas exactas llegasen a la tierra los cuatro voladores, representándose así con aquel número, el siglo azteca de cincuenta y dos años, compuesto de cuatro periodos de trece años cada uno. También se ponían ciertos resguardos en el soporte para evitar desgracias como sucedió más de una vez, pues algunos indios subían ebrios al árbol, y allí perdían el equilibrio fácilmente, en aquella altura que, por lo general era de sesenta pies. Este juego del volador o voladores se prosiguió jugando, después de la Conquista, pues se consideraba como costumbre idolátrica y supersticiosa, y se refiere que en agosto de 1736 y en la plazuela de San Juan, murieron nueve individuos por haberse roto el palo del juego. Todavía en nuestros días en algunos lugares, como en el Estado de Veracruz, se sigue efectuando.No falta cronista que, tratando de este juego indígena, haya señalado el sitio en que se recibía la graduación de “volantines”. Esta escuela –dice- en una cueva impenetrable (de la que se han sacado muchos ídolos e idólatras) en el monte que dicen de Jovo o Ajusco; donde ocurre el que se ha de graduar de volador; llega hasta la entrada sin más compañía que su audacia; se aparece el Demonio varias veces; la primera a la boca de la cueva en figura de un horrible Ethyope; otra a distancia, en la de un león, y la última, en la de una serpiente espantosa. En todas le rinde adoración, y él le halaga, propiamente para matar al que le adora”.Desde época muy remota aparece el Mercado ya indicado y en tiempo del Conde de Revillagigedo, se decide el despejar la plaza del aspecto indecoroso que tenía, resolviéndose construir el Mercado y para su funcionamiento se expide su correspondiente Reglamento.Con respecto a la Plaza del Volador diremos que en ella tuvo lugar uno de los Autos de Fe de la Inquisición de Nueva España, más importantes, el 11 de abril de 1649; que también tuvieron lugar corridas de toros, continuando su celebración hasta principios del siglo XIX, las que tenían efecto para conmemorar sucesos notables, como los desposorios de monarcas españoles, los tratados Paz entre la Madre Patria y algunas naciones de Europa, en la entrada de los virreyes, días del onomástico de los mismos o de sus esposas. Para celebrar el feliz natalicio del Serenísimo señor Infante Felipe Pedro, hijo del Rey Felipe V y de su esposa la Reina doña María Luisa Gabriela, hubo memorables corridas de toros en la Plaza del Volador, carreras de liebres y peleas de gallos. A este fin se levantó un circo dentro del cual quedó el canal principal, por la parte más cercana al Real Palacio, y entre las localidades había gradas reforzadas sobre postes con 17 varas de altura. El día señalado, 13 de febrero de 1713, desde la mañana se hizo el aseo de la plaza con verdadera cautela, adornándose los tablados con bellas colgaduras, y “preciosas alfombras y vistosas telas”. La muchedumbre invadió las lumbreras poco después del mediodía, vistiendo las gentes los mejores trajes, y luciendo las mujeres las mejores joyas, toda la corte con el Virrey Duque de Linares al frente, presenció la función, lidiándose hasta catorce “bichos”. Las corridas continuaron por seis días más.Igualmente en la toma de posesión del Virreinato de don José de Iturrigaray, el 21 de febrero de 1803, hubo las correspondientes corridas de toros, presentándose en una de ellas un fenómeno atmosférico extraordinario. Al partir plaza los granaderos del comercio, comenzó a ocultarse el sol obscureciéndose así por completo; infinidad de personas empezaron a hacer fuego y chispas con sus eslabones y piedras, lo cual resultaba sorprendente, pero al poco tiempo el astro rey reapareció, y la gente lo saludó con nutridos aplausos; la música resonó con alegres melodías y la corrida de toros tuvo principio en medio del mayor entusiasmo.Para terminar diremos que en la Plaza del Volador, el 3 de Julio de 1844, se descubrió, con mucho entusiasmo, una estatua de bronce dorado que representaba al General Santa Anna en traje de militar con sus numerosas condecoraciones, en pie, con la diestra señalando hacia el norte. Dos inscripciones había en el pedestal; la del lado del palacio decía:“AL ILUSTRE Y BENEMÉRITO GENERAL SANTA-ANNA CUYAS GLORIAS SON DE LA PATRIA. SU MEMORIA VIVIRÁ CON LA DE LA INDEPENDENCIA DE LA LIBERTAD, EL ORDEN Y EL PROGRESO NACIONAL.”La del lado de Portacoeli rezaba:“A SU AMOR PATRIO Y A SU CELO ADMINISTRATIVO DEBE MÉXICO EL EMBELLECMIENTO DE SUS POBLACIONES. LOS LAURELES QUE HA RECOGIDO EN SUS VICTORIAS CORONAN LOS MONUMENTOS QUE LA GRATITUD PÚBLICA LE ERIGE SOBRE ESTAS OBRAS.“Poco duró esta estatua, pues al caer del poder el famoso gobernante, la muchedumbre destruyó la figura, no sin que apareciera antes con una correa al cuello y una enorme caperuza en el cráneo. La gente recorrió las calles de México arrastrando la estatua y gritando desaforadamente: muera el General Santa-Anna!..."];
    [flyingSquare setImageName:@"volador.png"];
    NSNumber *longitudeflying=[NSNumber numberWithFloat:-99.131708];
    NSNumber *latitudeflying=[NSNumber numberWithFloat:19.431149];
    [flyingSquare setLatitude:latitudeflying];
    [flyingSquare setLongitude:longitudeflying];
    [flyingSquare setTexttwitter:@"Cuentan que @decalleencalle se relata La Plaza del Volador"];
    [flyingSquare setAudioLegend:@"volador"];
    
    Legend *flemish=[NSEntityDescription insertNewObjectForEntityForName:@"Legend"inManagedObjectContext:context ];
    
    [flemish setLegendName:@"Flamencos"];
    [flemish setSummary:@"La calle de los Flamencos partía del ángulo sureste de la Plaza Mayor a la esquina de la calle de San Bernardo. No presenta características notables si se exceptúa que unos comerciantes flamencos, de los cuales derivó su nombre, se habían extendido hasta el Puente de Palacio (lo que nos recuerda que allí había un puente en las bocacalles), y que todo esto había pertenecido a la calzada de Iztapalapa, nombre que llevaron los fragmentos de la misma durante mucho tiempo.Sin duda que esos comerciantes flamencos dieron pie al comercio de pieles que aún perdura en la mencionada calle, mezclados con el de “mercerías” (galicismo muy usado en México).Las calles del Rastro se nombraron así por haber existido allí mataderos de reses en tiempos remotos. Aún llevaban esa denominación en 1910. Hoy son una prolongación de Pino Suárez.Finalmente, San Antonio Abad, a la salida de la urbe, es una amplia calle así denominada en honor de uno de los santos patrones de la ciudad, que tuvo ese además de San Hipólito y de la Guadalupana.Queda reseñado un camino importante de los aztecas que se multiplicó y amplificó asombrosamente, como una calle vital de estos tiempos y arteria primordial y básica de los tiempos pretéritos, cuando por ella galoparon los primeros caballos con sendos caballeros que, en son de paz, entraron a la antigua Tenochtitlán!..."];
    [flemish setImageName:@"flamencos.png"];
    NSNumber *latitudeflemish=[NSNumber numberWithFloat:19.431119];
    NSNumber *longitutedflemish=[NSNumber numberWithFloat:-99.132566];
    [flemish setLongitude:longitutedflemish];
    [flemish setLatitude:latitudeflemish];
    [flemish setTexttwitter:@"Cuentan que @decalleencalle se relata Flamencos"];
    [flemish setAudioLegend:@"flamenco"];
    
    Legend *alleydance=[NSEntityDescription insertNewObjectForEntityForName:@"Legend"inManagedObjectContext:context];
    [alleydance setLegendName:@"EL CALLEJÓN DE LA DANZA"];
    [alleydance setSummary:@"Esta calle, situada junto al mercado de la Merced, se llamó por muchos años El Callejón de la Danza o La Cueva de los Nahuales. ¿Por qué? Veamos la tradición que, como casi todas, tienen el ambiente de las supersticiones que por doquiera existen y viven, más o menos modificadas por el tiempo, por el progreso, por la evolución de las creencias, todo lo cual puede más para desarraigarlas, que los exorcismos del agua bendita, y las ceremonias antiguas para ahuyentar  los malos espíritus.¡Qué de gritos de madres! … ¡Qué manera de llorar en infinitos tormentos pidiendo esas mujeres protección a la justicia para evitar tales ofensas, pues lo terrible era que nadie veía a los fantasmas que cometían esos crímenes!...Un soldado que figuraba en el cuerpo de arcabuceros  del señor Virrey, joven como de veinte años, llamado Simón, valiente y atrevido que a nada temía, gustándole esas aventuras fantásticas se propuso investigar aquello de una vez, y más cuan Nueva España, existía gran odio por acercarse a cierto callejón de apartado barrio de México, pues allí sucedían tales cosas, que ponían el espanto para siempre y costaba la vida a los atrevidos que transitaran por el sitio referido o por las cercanías.Esas cosas que ahí tenían lugar eran nada menos que unas danzas infernales, bailadas por los espíritus maléficos con torno de una hoguera levantada en la mitad del callejón. Este griterío verdaderamente demoníaco practicado por los “nahuales” y las brujas, de caras extravagantes, con gestos diabólicos, con gritos ensordecedores, cubiertos los cuerpos con plumas, y llevando las uñas encorvadas y filosas, armando un concierto de gritos verdaderamente insufrible que causaban horror a todos los vecinos, se complicaba con que tales fantasmas entraban en las casas y robaban no dinero, ni cosa que lo valga sino criaturas, niños y niñas, que desató que el párroco de la cercana iglesia había aconsejado a sus feligreses, que por nada se acercaran por ahí sino que pasaran de carrera y haciendo la señal de la cruz . Todo esto era incentivo para que el arcabucero insistiera en sus propósitos.Al efecto, aprovechando cierta noche invernal negra y lluviosa, envolviéndose Simón en su capa, colocándose dos pistolas en la cintura, tomó entre sus fuertes manos el arcabuz y sin encomendarse a Dios ni al diablo, se fue a la mismísima “Cueva de los Nahuales” o “Callejón de la Danza” y para que su ánimo no desistiera en su propósito se echó  dos tragos de aguardiente entre pecho y espalda. Deslizándose por los muros de las casas contiguas al callejón, pegándose a ellos enteramente, se acercó, viendo que la danza estaba en su desarrollo,  y pudo también ver que no había nada de fantasmas ni cosa parecida, sino hombres y mujeres pintarrajeados, con sucias máscaras en los rostros y plumas en la cabeza, que en plena borrachera saltaban y gritaban junto a unas llamaradas que en el suelo producían pedazos de madera allí echados. Brincando también como una fiera, valiente, temerario. Simón penetró de un salto en el centro de aquel grotesco ruido, y a éste le dio un golpe con el arcabuz, y al otro le descerrajó un tiro, y a la de más allá le lanzó de una bofetada casi dentro del fuego, y con la espada desenvainada gritaba en tanto atacaba a golpes: -¡A mí, arcabuceros!... ¡A mí, los corchetes!... - para hacer creer que vendrían en su auxilio cientos de los llamados. La verdad es que así fue, pues aparecieron los soldados, una ronda que oyó los gritos de Simón, y hasta los vecinos del barrio, viendo que no había allí nada del otro mundo, uniéndose en el ataque y bien pronto aquellos que decían ser espectros, siendo personas de carne y hueso, se encontraron en los calabozos del Santo Oficio, y al hacer un registro en las casuchas en que vivían, encontrándose con infelices niños, cubiertos con harapos y muertos de hambre, que eran los robados, a los cuales enseñaban a pedir limosna en las calles, explotando la compasión de las gentes. A tal motivo debiéndose que, por muchos años, se llamara El Callejón de la Danza, a éste a que nos hemos referido."];
    NSNumber *latitudalleydance=[NSNumber numberWithFloat:19.429486];
    NSNumber *longitudalleydance=[NSNumber numberWithFloat:-99.127457];
    [alleydance setLongitude:longitudalleydance];
    [alleydance setLatitude:latitudalleydance];
    [alleydance setImageName:@"danza.png"];
    [alleydance setTexttwitter:@"Cuentan que @decalleencalle se relata El callejón de la Danza"];
    [alleydance setAudioLegend:@"danza"];
    
    
    Legend *mail1=[NSEntityDescription insertNewObjectForEntityForName:@"Legend" inManagedObjectContext:context];
    [mail1 setLegendName:@"CALLES DEL CORREO MAYOR Y DEL PUENTE MAYOR"];
    [mail1 setSummary:@"Como vemos por el título, son dos estas calles: una, la de la espalda de Palacio, desde la esquina de Santa Inés hasta la de la Acequia; y la otra, que sigue al sur hasta la esquina de la calle de las Rejas y los Bajos de Balvanera. Algunos para distinguirlas más, apellidan a una del “Parque de la Moneda”, y a la otra simplemente con el nombre de “Correo Mayor”. Se llaman así por haber vivido en alguna de las antes citadas, el oficial real encargado de postas  y correos, y si bien hubo muchos empleados en este importante cargo, se supone que se refiere la tradición a don Pedro Diez de la Barrera que a principios del siglo XVII, allí moraba y que desde entonces recibió la calle el título dicho, pues eran muchos los méritos y la manera acertada con que desempeñó su cometido la persona referida. ¿En cuál de las dos calles vivió tan distinguido empleado? No se sabe nada a ciencia cierta; se supone que en la calle que da espalda a Palacio, pero no hay razón convincente para ello, pues el empleo no le daba derecho a casa, y por tanto vivía donde mejor le parecía. La correspondencia de España que era la principal, llegaba directamente al Palacio de los Virreyes; a la vista del Encargado de Postas y Correos se abrían las cajas, y por su mandato se distribuían en la ciudad a donde venían dirigidas, y si iban destinadas para afuera, se les enviaba rápidamente con criados y caballos que para ello existían. Como son varias las calles del Correo Mayor debemos anotar que la sexta se llamó antes de Olmedo y en una de sus casas se supone, pues sólo por suposiciones se pudo averiguar algo, que aconteció el hecho criminal que vamos a relatar, siendo Virrey de la Nueva España el Excelentísimo señor don Juan Vicente de Güemes Pacheco de Padilla, segundo Conde de Revillagigedo. Este buen gobernante dio excelente organización a la Policía y a otros servicios. Aparte de las numerosas patrullas que recorrían la ciudad constantemente por el día y por la noche, en cada esquina había un vigilante llamado guarda-faroles, que no sólo cuidaba de que la luz no se apagara, sino que también acudía como policía a cualquier llamado de los vecinos siempre que se necesitara por algún crimen o escándalo. En la mañana del 16 de septiembre de 1791, los guarda-faroles dieron aviso de un caso extraño, sucedido en la noche anterior, que dio origen a que se pusiera en movimiento toda la policía, los alcaldes y demás subordinados, pues el mismo Virrey ordenó que se le diera cuenta de los vecinos de todas las casas que habitaban en los diferentes cuarteles en que la capital estaba dividida, de las personas que habían muerto en esas horas, de cuántos habían llegado a la ciudad en ese periodo de tiempo. Siendo inútiles todas las averiguaciones, y si bien en una calle del Bautisterio de Santa Catarina, pudieron percibirse manchas como de sangre en un zaguán, el perito, don Manuel Zivillas, que en compañía del Escribano realizó una vista de ojos, dictaminó que las referidas manchas eran muy antiguas, y que además este barrio estaba muy alejado del que se creía había sido teatro de los sucesos que vamos a narrar. El sacerdote don Juan Antonio Núñez y Vázquez, clérigo del Marqués de Guardiola, pasaba frente a las puertas del Coliseo de la Ciudad de México el 15 de septiembre de 1791, como a las ocho de la noche, cuando se le acercó un hombre de capa, que no era de color llamativo y sombrero tendido,  a medio disfraz diciéndole: - Padrecito, ¿quiere ir a hacer la caridad de oír una confesión? A lo que respondió: -¿está muy lejos? -Y entonces le contestó que no, que estaba cerca; y oída la réplica: -Mire. Que si está lejos es fácil tomar aquí un coche. El hombre añadió que no había necesidad, que estaba cerca. Echaron a andar y ambos dieron vuelta hacia la calle de la Acequia que fue conocida hasta hace algunos años por calle del Coliseo Viejo y que ahora se llama del 16 de septiembre. Llegaron al Portal del Coliseo. (que ya no existe) y el hombre señaló al coche que era de cortinas, sentándose él en frente y ellos al vidrio, y otro hombre fue a tomar las mulas; mas como iba de buena fe no advirtió si era cochero o no. No bien empezó a andar el coche, uno de los dos hombres puso un cuchillo en el pecho del sacerdote y le dijo que si hacía el menor ruido o pedía socorro le costaba la vida. Le cubrieron la cara con una montera negra bajándosela hasta la boca, y encima de los ojos una fuerte ligadura. Así comenzó el coche a moverse bastante tiempo sin que se pudiera dar cuenta la víctima del sitio adonde le llevaban. Al fin se paró el vehículo; introdujeron al cura en una pieza diciéndole que allí confesaría, a lo que respondió que en tanto no le quitaran aquellos vendajes sería imposible hacerlo, y a pesar de las amenazas insistió en su dicho, por lo cual sólo le quitaron lo que le impedía ver, y lo de la boca, pero no la cachucha de la cabeza. Así confesó allí a una persona y en otra habitación a otra, sin que se sepa si hombre o mujer, a lo menos el cura no lo manifestó al ser encontrado en la esquina de la calle de Parque de la Moneda. Una vez desatado se lo llevaron a la Casa de la Moneda de donde fue conducido después a la calle de Vergara en la que vivía.Como todo fue inútil para dar con los criminales, intentaron prudentemente que el sacerdote dijera más detalles y lo que había oído en el secreto de la confesión. Pero nada sacaron, fortificado en el secreto del sacramento prefirió pasar como burlado en una pesada broma, antes que descubrir el velo del misterioso crimen a fin de no violar la referida confesión.Con el tiempo ésta leyenda de la calle de Olmedo se hizo pasar como sucedida años antes de que se verificara el crimen, y al buen clérigo lo convirtió el vulgo en un fraile loco que había perdido el juicio por haber confesado a una muerta, e hizo de dos víctimas una sola. En los centros concurridos de la ciudad se habló mucho del suceso siendo los comentarios muy diversos, sin que ninguno sirviera para esclarecer la verdad, por lo que los Tribunales tuvieron en este caso, como en otros parecidos, que sobreseer el proceso por falta de noticias y de elementos legales."];
    [mail1 setImageName:@"mail.png"];
    NSNumber *maillatitude=[NSNumber numberWithFloat:19.432451];
    NSNumber *maillongitude= [NSNumber numberWithFloat:-99.129889];
    [mail1 setLongitude:maillongitude];
    [mail1 setLatitude:maillatitude];
    [mail1 setTexttwitter:@"Cuentan que @decalleencalle se relata CALLES DEL CORREO MAYOR Y DEL PUENTE MAYOR"];
    [mail1 setAudioLegend:@"mail1"];
    
    
    Legend *chavarria=[NSEntityDescription insertNewObjectForEntityForName:@"Legend" inManagedObjectContext:context];
    [chavarria setLegendName:@"CALLE DE CHAVARRIA"];
    [chavarria setSummary:@"Esta calle, que sigue de la Montealegre y termina en la Plazuela de Loreto, ha tenido tres nombres distintos: el más antiguo fue el de los Donceles, porque la llamada así se extendía hasta la de Chavarría, según consta en las escrituras de algunos predios (como se verá al tratar particularmente de esa calle); otro nombre fue el de Montealegre que, por cierto, le duró poco; y el tercero tuvo su origen en que así se llamaba el capitán don Juan Chavarría y Valero, nacido en la capital de la Nueva España en Junio de 1618, hijo de don Juan de Chavarría y Estolaza, oriundo de Garnica (Guipúzcoa, España) y de doña Leonor de Valero, originaria de México, siendo uno de esos vecinos de aquellos tiempos que, dueño de gran fortuna, la señalaba por emplearla por generosidad en socorrer a gente necesitada y desvalida.Poco antes de mediar el siglo XVII vino a vivir a la citada calle que él mismo llamó de los Donceles, en un escrito presentado al Ayuntamiento haciendo presente que se le había perdido el título de propiedad de la merced de agua que disfrutaba su casa de la calle de los Donceles, y que demandaba se le diera un certificado para suplir el documento extraviado, lo que en efecto se le dio. Como los nombres de las calles se mudaban con frecuencia en aquellos tiempos (y en estos mucho más), no es de extrañar el que tomara el nombre de este capitán Chavarría, por la estimación que supo granjearse de todos los vecinos cercanos al número 55 de la citada calle, que habitaba con su familia, su esposa doña Juana de Vivero y Toledo y tres hijas: una, doña María Leonor que se casó con don Luís de Velasco Altamirano y Legazpi, de noble abolengo; la segunda, muerta en temprana edad, apenas niña, y la tercera, doña María Juana, que tomó el hábito de novicia en el convento de San Lorenzo al que tenía su padre particular devoción. En esa iglesia se verificó el acto solemnísimo de tomar el hábito de la Noble Orden de Santiago, que concedió al señor Chavarría el Rey de España Felipe IV, por sus liberalidades y vida ejemplar, todo lo cual había llegado a oídos del monarca español, pues no sólo costeó la reedificación de este templo, sino que también dio en la Catedral una fiesta, a la Santísima Trinidad, con vísperas, rezos, procesión, misa y sermón, donando para ello una finca; y con el capital de cinco mil pesos y doscientos cincuenta de réditos, igual solemnidad en la Concepción de la Santísima Virgen, y cuando ya conoció que su vida terminaría en breve, dio seis mil pesos a los padres de la Unión con cargo de que los ciento veinte sacerdotes que la componían dijesen por él dos misas cada uno al año.Pero en donde el nombre de don Juan Chavarría llegó a la celebridad fue en el rasgo de valentía que tuvo el día 11 de diciembre de 1676, en el incendio de la iglesia de San Agustín, al estarse celebrando con una gran función religiosa el aniversario de la aparición de la Virgen de Guadalupe. El fuego tomó un incremento terrible, tanto más que se carecía de medios para sofocarlo; la muchedumbre se atropellaba por salir a la calle huyendo de las llamas que por doquiera destruían y quemaban imágenes, adornos, colgaduras; los frailes agustinos abandonaban el convento temiendo parecer en las celdas, y todas las calles cercanas estaban repletas de gente que presenciaba cuadro tan horroroso sin que le fuera posible hacer nada. Los regidores de la ciudad, los oidores, y el Virrey Arzobispo don Fr. Payo Enríquez de Rivera, que personalmente tomaba parte activa dando algunas disposiciones para evitar que el fuego se comunicara al convento que estaba a un lado, como en efecto se consiguió, daban a la catástrofe cierta ceremonia en medio de tanta desdicha. Mas cuando era mayor la confusión, y el fuego tomaba proporciones colosales saliendo por las puertas de la iglesia lenguas de llamas, y por dondequiera columnas de humo que asfixiaban a cuantos se acercaban, un hombre, un caballero por su porte y traje, tendría cincuenta y ocho años, y que era capitán según los símbolos que exhibía, abrió paso por entre la multitud allí amontonada, penetró en el templo cuyos muros ya negros por el incendio amenazaban venir al suelo, trepó a las gradas del altar mayor, alzó el brazo derecho y, con rapidez heroica, se apoderó de la custodia y empuñándola en la diestra, casi sin vida por las quemaduras sufridas, la depositó en las manos del Arzobispo. Toda aquella multitud se puso de rodillas atónita para adorarla, considerando como un milagro el que no se hubiera muerto tan valiente caballero. Tres días duró el incendio. Bastaron dos horas para destruir el templo, y con el tiempo se borró de las mentes suceso tan duro. Pero al reedificarse una de las casas, que era del capitán, se vio con sorpresa sobre la cornisa de la casa nueva un sepultura, y dentro de él un brazo de piedra en alto relieve, cuya mano empuñaba una custodia también de piedra. ¿Cómo fue que lució este distintivo en su casa el señor don Juan Chavarría? ¿Sería algún privilegio que le concedió, por su acto heroico el Virrey o el Arzobispo, o quizás el Monarca de España? La verdad no se sabe. Los investigadores más sagaces nada dicen. La casa actualmente existe y el nicho también. Algún tiempo después, el 29 de noviembre de 1682, falleció en su casa en México dejando una fortuna de más de quinientos mil pesos, y, como patrono que era de la iglesia de San Lorenzo, sobre su sepulcro creado en este templo se levantó una estatua de piedra que lo representaba hincado sobre un cojín y en actitud muy devota. Este monumento desapareció. Sólo quedó por mucho tiempo su nombre a una calle, y ya ni este existe, pues se llama ahora calle del Maestro Justo Sierra."];
    
    [chavarria setImageName:@"chavarria.png"];
    NSNumber *chavariialatitud=[NSNumber numberWithFloat:19.435243];
    NSNumber *chavarrialongitude=[NSNumber numberWithFloat:-99.128902];
    [chavarria setLatitude:chavariialatitud];
    [chavarria setLongitude:chavarrialongitude];
    [chavarria setTexttwitter:@"Cuentan que @decalleencalle se relata la Calle de Chavarria"];
    [chavarria setAudioLegend:@"chavarria"];
    
    Legend *factor=[NSEntityDescription insertNewObjectForEntityForName:@"Legend" inManagedObjectContext:context];
    [factor setLegendName:@"LA CALLE DEL FACTOR"];
    [factor setSummary:@"El título de esta calle ha sido motivo en los tiempos actuales de cierta discusión entre autores dedicados a esta clase de investigaciones, pues mientras don José María Marroquí afirmó que se llamaba así por haber vivido en la primera de las calles, el Factor Gonzalo de Salazar. La Dirección de Monumentos Nacionales puso una placa en que dice: “Aquí estuvo la casa del Factor Juan de Cervantes Casaus”. Visto esto por el ingeniero don Jesús Galindo y Villa, dijo no estar conforme esa leyenda con lo asentado por el autor antes citado, al que da la razón el acta de Cabildo de 22 de agosto de 1542 en que se lee: “… que a pedimento del licenciado Pedro López, médico, le hicieron merced de un solar en la traza de la ciudad, en la calle que va de la casa del Factor Gonzalo de Salazar, hacia las Atarazanas sobre la mano izquierda”.Otro escritor mexicano, don Francisco Fernández del Castillo, dice con fundamento que la casa de ese Factor Salazar estuvo en lo que se llamó calle de la Perpetua, ahora Rep. De Venezuela, alegando en pro de su aserto que, en los autos del concurso de acreedores de Hernández Pérez de Bocanegra y familiares, fijaron en inventario unas casas de su propiedad “delante de las casas y convento del señor de Santo Domingo, por las espaldas con casas de Gonzalo de Salazar… que el dicho Bocanegra, compró al Factor Juan Velázquez Salazar, que lindan con casa de Cristóbal de Oñate y “Casa de Gonzalo Salazar” y por delante con la Calle Real, que van de la plaza de esta ciudad, derecha a Nuestra Señora Santa Anna”.¿De qué provenía el error de los señores Marroquí, Fernández y Villa? Pues de la distinta ubicación de las calles, porque en el año de 1542 “una de las varias calles que salían de las atarazanas” era esta de la Perpetua, la que en esa época no estaba cerrada por el edificio donde tuvo asiento el Colegio de San Gregorio y el de San Pedro y San Pablo.La discusión a que antes aludimos aclaró el asunto, y quedamos por tanto que la calle del Factor recibió este nombre por haber tenido allí su residencia el Factor Juan Cervantes Casaus, y no el Factor Gonzalo de Salazar.El Factor era el oficial real que en las Indias recaudaba las rentas y rendía los tributos en especie pertenecientes a la Corona.A esta calle de que nos ocupamos se la llamó también de la Cruz del Factor, porque se hallaba dividida por una pequeña plaza donde existió una cruz que coronaba el surtidor de una fuente, plaza denominada por el vulgo “del Baratillo” porque al querer despejar el Conde de Revillagigedo, segundo de este título, la Plaza Mayor, de los diversos mercaderes allí aglomerados, resolvió que los vendedores de hierros viejos o de ropa o de artículos semejantes, pasaran a esta plaza; y como fuera pequeña para el destino que se le daba, a efecto de agrandarla, se compró una casita ruinosa que contigua a ella había en la segunda calle del Factor; los vendedores apuntados se trasladaron a las plazuelas de las Vizcaínas y de Jesús, hasta el 13 de Junio de 1793 que comenzaron a pasarse al Baratillo.A pesar de lo dicho quedó chico el Baratillo, sobre todo a ciertas horas del día, siendo una reunión de vagos y de gente maleante, lo cual dio motivo para que se determinara, en primer lugar, que se abriese la puerta que daba a la Canoa para la mejor vigilancia, y que se hiciera otra pequeña casa para el oficial que había de mandar la fuerza que se enviaría allí para sostener el orden. Pero como todo fue inútil, se quitó el Baratillo el año de 1851. Ahora veamos el origen del llamado Teatro de Iturbide levantado precisamente en la plazuela en que el Baratillo existió. En 1825 el Lic. Don Florentino Conejo compró las casas de la esquina de las calles del Factor y la Canoa, con el fin de hacer un teatro para hacer comedias, lo que le fue concedido, aunque no hay constancias de que realizara la idea. Observamos con este motivo que por aquel tiempo sólo había dos teatros en México: el antiguo llamado Principal, en la calle del Coliseo, y el nuevo llamado de Santa-Ana, hecho por aquellos días en la calle de Vergara, estando ambos en manos de una sola persona, el último citado por compra, y el primero por arrendamiento.Consecuencia de este monopolio era lo alto de los precios y el disgusto del publico por ello; y entonces don Francisco Arbeu, constructor que había sido del teatro de la calle de Vergara, presentó al Ayuntamiento un proyecto en cuya virtud cedía la corporación Municipal la plazuela del Factor adonde el teatro habría de hacerse y algunos de sus créditos activos, con facultad para solicitar su redención, supliendo los demás fondos Arbeu, o socios que al efecto pudieran buscar, y conservando la administración y aprovechamiento del Teatro cierto número de años al cabo de los cuales sería de la ciudad. Lasgas fueron las condiciones de este contrato para asegurar los intereses de ambas partes, pero la que si fue aprobada con toda fuerza fue la que nunca pasaría a ningún particular, para que no sucediese lo que aconteció con los otros teatros ya citados.Durante algún tiempo la anterior condición se cumplió al pie de la letra, pero vino la ley de 25 de junio de 1856 que fue causa de muchos males en diversos municipios, con sus normas de desamortización de los bienes de comunidades civiles, y el mismo señor Arbeu, que antes había insistido tanto en que no pasara a particulares el teatro que construyó, amparado con la dicha disposición legal, se otorgó aquel edificio alegando las cantidades que allí representaba.Formado después concurso a los bienes del señor Arbeu, volvió el teatro a poder de la Ciudad, que en seguida lo arrendó al Gobierno el año de 1872, para que allí pusiera la Cámara de Diputados, en razón de haberse quemado el techo del salín, en el Palacio en que celebraba sus sesiones dicha Cámara. Más tarde, por arreglos entre el Gobierno y la Ciudad, pasó el edificio a poder de la Nación en el cual se conserva. También debemos observar que cuando se hizo el Teatro de Iturbide, la Ciudad consintió en que se ocupara parte de la vía pública delante de él haciendo un vestíbulo para que entraran los coches. En Agosto de 1889, sin que se sepa con qué derecho, la Cámara apropióse lo que era del público, mandando cerrar el vestíbulo con una reja de hierro."];
    
    NSNumber *Latitudfactor=[NSNumber numberWithFloat:19.436367];
    NSNumber *longitudFactor=[NSNumber numberWithFloat:-99.137741];
    [factor setLatitude:Latitudfactor];
    [factor setLongitude:longitudFactor];
    [factor setImageName:@"factor.png"];
    [factor setTexttwitter:@"Cuentan que @decalleencalle se relata La Calle del Factor"];
    [factor setAudioLegend:@"factor"];
    
    Legend *burned=[NSEntityDescription insertNewObjectForEntityForName:@"Legend" inManagedObjectContext:context];
    
    [burned setLegendName:@"LA CALLE DE LA QUEMADA"];
    [burned setImageName:@"quemada.png"];
    [burned setSummary:@"En las biografías de los santos y santas cristianos se cita el caso de Santa Lucía que se arrancó los ojos para evitar la impureza de que estaba amenazada por un pretendiente enamorado localmente de ella, y algo parecido, pero aún más terrible sucedió en la capital de la Nueva España por el año de 1550 en que llegó a estas tierras un rico español, don Gonzalo Espinosa Guevara, acompañado de su hija Beatriz, de extraordinaria hermosura. Había nacido tan bella dama, que contaba unos veinte años por aquel entonces, en la Villa de Illescas, en donde era considerada como la Providencia de los necesitados, a los que socorría constantemente, cosa que continuó practicando en México. Se cuenta que al hacer un viaje a Texcoco y hallarse en su camino un gran número de infelices que le salían al paso demandando socorro, ella les dio todas las joyas que llevaba puestas para que las vendieran y con el producto remediaran sus necesidades. Muchos fueron los caballeros de alta posición que figuraron en la corte de admiradores que solicitaron la mano de doña Beatriz, pero ella prefirió a un noble joven italiano, don Martín de Scúpoli, Marqués de Piamonte y Franteschelo, al que conoció en una reunión dada en el palacio por el Virrey don Luís de Velasco, Caballero de la Casa del Condestable de Castilla, y no hay para que decir los diversos lances que tuvo con otros rivales, pues adoraba ciegamente a su amada y por nadie ni por nada en el mundo hubiera permitido que se casara con otro hombre que no fuera él. La virtuosa doña Beatriz amaba a aquel caballero de una manera intensa, lo quería con una pureza fuera de lo vulgar, soñando en todos estos ideales de perfección, poco humanos y corporales, y como don Marín sentía el amor de manera distinta, fascinado por tanta hermosura, atormentaba a Doña Beatriz la situación difícil en que se encontraba. Era necesario que su amado dejara de quererla, era preciso que aquellos encantos físicos dejaran de esclavizar al enamorado italiano, y para ello tomó heroica resolución: despachó de la casa a toda su servidumbre, un día en que sus padres estaban fuera de México, encerróse en una pieza en la cual había un brasero con mucha lumbre, que era lo que necesitaba para realizar su atrevida hazaña. Púsose de hinojos ante la imagen de Santa Lucía para que la diese valor y no claudicara en aquellos momentos su flaca naturaleza. El doloroso sacrificio de quemarse el rostro se consumó no sin que sus lamentos y gritos ante dolores agudísimos, hicieran que llegase Fray Marcos de Jesús mercedario que la oyó en los momentos en que entraba en la casa, encontrándola recostada en un amplio sillón, vestida de blanco, cubierta la cara con una obscura toca, y de los antiguos ojos de la doncella, que habían sido verdaderamente seductores, sólo quedaba una expresión vaga, apareciendo como dormidos.El amado de aquella cristiana mujer lo supo todo por el fraile mencionado. Despavorido, como loco, corrió a cerciorarse del acontecimiento, encontrándose con el cuadro que acabamos de describir. Sintió tocada su alma de idealismos celestes, abrazó a su novia, se sobrepuso a las miserias de la carne, y enamorado más que nunca de Beatriz, y admirando el sacrificio que había hecho, la hizo su esposa en nupcias verdaderamente divinas, consiguiendo en el mundo una felicidad que pocos obtienen, felicidad que es como una preparación para la eterna, para la infinita, en regiones inmortales. Y el vulgo que conoció de este suceso, que por verídico se tienen, llamó a la calle “Calle de la Quemada”"];
    NSNumber *burnedlatitud=[NSNumber numberWithFloat:19.427559];
    NSNumber *burnedlongitud=[NSNumber numberWithFloat:-99.128835];
    [burned setLatitude:burnedlatitud] ;
    [burned setLongitude:burnedlongitud];
    [burned setTexttwitter:@"Cuentan que @decalleencalle se relata La Calle de la Quemada"];
    [burned setAudioLegend:@"burned"];
    
    
    Legend *fiveavenue=[NSEntityDescription insertNewObjectForEntityForName:@"Legend" inManagedObjectContext:context];
    [fiveavenue setLegendName:@"AVENIDA DEL CINCO DE MAYO"];
    [fiveavenue setImageName:@"cinco.png"];
    [fiveavenue setSummary:@"Accidentada es la historia de esta gran arteria, que se formó más recientemente que otras; que desemboca hacia el oriente frente a la torre occidental de la Catedral de México, y que empieza ahora en el suntuoso Palacio de las Bellas Artes y antes, en el Teatro Nacional, ya desaparecido. Fue necesario destruir muchos edificios, sobre todo conventos, para la apertura de esta que antes fue calle y avenida hoy, obedeciendo el que la piqueta demoledora se diese gusto, como vulgarmente se dice, a que suprimidas en México desde enero de 1861 las corporaciones religiosas, quedaron vacíos los edificios que aquellas tenían, y como pensaran los autores de las Leyes de REFORMA, que el conservarlos como estaban sería tanto como sostener el deseo de ocuparlos otra vez, era preferible suprimirlos, y así se abrirían plazas y calles, que bien lo necesitaba la ciudad. Siguiendo esta línea de conducta se podría continuar la Alcaicería hacia el poniente, a reserva de hacer algo después en los muchos callejones que resultaran de la reforma. Acordóse prolongarla hasta la de Vergara por la parte del convento de Santa Clara, y como esto no fuese muy factible sin tocar el edificio conocido como con el nombre de la Profesa, por éste comenzó la demolición. Esta parte estaba dividida por una casa de Ejercicios, anexa al Oratorio de San Felipe Neri, y daba a la calle de San José el Real, y por otra la mansión de los PP. Felipenses que estaban por el callejón de Santa Cara, entonces, de una y otra parte, se tomó lo necesario para formar un calle ancha y espaciosa. Después de la ruptura de la Profesa se derribó la parte correspondiente del convento de Santa Clara, y entonces se encontraron con casas de particulares que no se pudo en el momento derribar; tres de éstas impedían la salida para la calle de Vergara, (hoy Bolívar), y dos estrechaban por el lado sur la entrada que había de darse a la nueva calle por el callejón. En medio de estas circunstancias, en el año de 1862, sucedió que llegó la fecha inolvidable de la retirada de los franceses de la ciudad de Puebla, y el Ayuntamiento de México para celebrar ese aniversario acordó dar ese nombre de “CINCO DE MAYO” a una calle de la capital eligiéndose la que dividió la Casa de la Profesa ya que por su situación estaba llamada a ser de las principales y así se hizo colocándose la placa correspondiente en su esquina sureste, placa que fue hecha pedazos al año siguiente cuando Puebla se perdió, y algunos soldados franceses a balazos la destrozaron. Como se estableciera definitivamente el gobierno liberal inicióse una era de mejoras en la ciudad de México y entonces se urbanizó la que podríamos llamar primera calle del Cinco de Mayo. Pero como no era posible que quedara en ruinas la que estaba comenzada –como antes dijimos- en el convento de Santa Clara, se puso mano al asunto de nuevo, entrándose en tratos con los dueños de las fincas que pedían bastante por sus edificios. Por fin se llegó a un arreglo y las obras comenzaron por parte del Ayuntamiento tardándose bastante hasta que, recortada la casa del Callejón de Santa Clara, quedó otra nueva calle del Cinco de Mayo terminada.Faltaba que desapareciera la Alcaicería, foco de suciedad en el centro de la población y para ello se presentaron varios proyectos; pero, por las penurias del Ayuntamiento, fueron irrealizables durante más de treinta años hasta que, siendo presidente Municipal don Pedro Rincón Gallardo, hombre de grandes iniciativas, logró llevar a la práctica lo que antes parecía imposible, derribando diez casas del lado sur de los callejones llamados de los Mecateros y el Arquillo; otras en las esquinas del Empedradillo y San José el Real; y otra que formaba la esquina del callejón que salía por la calle de Plateros. Total: un gasto de 250,000 pesos para la cual tuvo que hacerse un empréstito comprometiendo créditos municipales, unidos a donativos de propietarios de aquellas casas nuevas que comprendieron que con esa reforma sus predios valdrían más, y el día de mañana los podrían vender mejor. Total, que todo se llevó a cabo y, una vez terminado se ordenó que desde ese momento todas las calles conocidas con los nombres de Arquillo o Mecateros, y las dos del “Cinco de Mayo”, llevaran un solo nombre: el que acabamos de citar.Posteriormente se ha llamado “Avenida del Cinco de Mayo” y nada diremos de los hermosos edificios que la adornan y que tan conocidos son de los lectores, lo mismo que si añadimos lo transitada que es, aunque con respecto a esto último, algo hemos de indicar en el sentido de que antes, a raíz de la destrucción de tanto convento e iglesias, la gente se retraía de frecuentarla, y sobre todo de edificar allí, por las ideas fanáticas que por entonces dominaban en la mente de miles de gentes en México."];
    NSNumber *fivelatitud=[NSNumber numberWithFloat:19.434099];
    NSNumber *fivelongitud=[NSNumber numberWithFloat:-99.136302];
    [fiveavenue setLatitude:fivelatitud];
    [fiveavenue setLongitude:fivelongitud];
    [fiveavenue setTexttwitter:@"Cuentan que @decalleencalle se relata La Avenida del Cinco de Mayo"];
    [fiveavenue setAudioLegend:@"cinco"];
    

    [self saveContext];
*/
     
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController=[[HomeViewController alloc]initWithNibName:@"HomeViewController" bundle:nil];
    self.window.rootViewController=self.viewController; 
    [self.window makeKeyAndVisible];
    return YES;
    
    
        
    
    
    
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return [facebook handleOpenURL:url]; 
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}

- (void)saveContext
{
    NSError *error = nil;
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil)
    {
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error])
        {
            /*
             Replace this implementation with code to handle the error appropriately.
             
             abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. 
             */
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        } 
    }
}

#pragma mark - Core Data stack

/**
 Returns the managed object context for the application.
 If the context doesn't already exist, it is created and bound to the persistent store coordinator for the application.
 */
- (NSManagedObjectContext *)managedObjectContext
{
    if (__managedObjectContext != nil)
    {
        return __managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil)
    {
        __managedObjectContext = [[NSManagedObjectContext alloc] init];
        [__managedObjectContext setPersistentStoreCoordinator:coordinator];
    }
    return __managedObjectContext;
}

/**
 Returns the managed object model for the application.
 If the model doesn't already exist, it is created from the application's model.
 */
- (NSManagedObjectModel *)managedObjectModel
{
    if (__managedObjectModel != nil)
    {
        return __managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"DeCalleenCallee" withExtension:@"momd"];
    __managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return __managedObjectModel;
}

/**
 Returns the persistent store coordinator for the application.
 If the coordinator doesn't already exist, it is created and the application's store added to it.
 */
- (NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
    if (__persistentStoreCoordinator != nil)
    {
        return __persistentStoreCoordinator;
    }
    
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"DeCalleenCallee.sqlite"];
    

    NSString *storePath = [storeURL path];
    
    // Put down default db if it doesn't already exist
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:storePath]) {
        NSString *defaultStorePath = [[NSBundle mainBundle] 
                                      pathForResource:@"DeCalleenCallee" ofType:@"sqlite"];
        if (defaultStorePath) {
            [fileManager copyItemAtPath:defaultStorePath toPath:storePath error:NULL];
        }
    }
    
    NSError *error = nil;
    __persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    if (![__persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error])
    {
        /*
         Replace this implementation with code to handle the error appropriately.
         
         abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. 
         
         Typical reasons for an error here include:
         * The persistent store is not accessible;
         * The schema for the persistent store is incompatible with current managed object model.
         Check the error message to determine what the actual problem was.
         
         
         If the persistent store is not accessible, there is typically something wrong with the file path. Often, a file URL is pointing into the application's resources directory instead of a writeable directory.
         
         If you encounter schema incompatibility errors during development, you can reduce their frequency by:
         * Simply deleting the existing store:
         [[NSFileManager defaultManager] removeItemAtURL:storeURL error:nil]
         
         * Performing automatic lightweight migration by passing the following dictionary as the options parameter: 
         [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:YES], NSMigratePersistentStoresAutomaticallyOption, [NSNumber numberWithBool:YES], NSInferMappingModelAutomaticallyOption, nil];
         
         Lightweight migration will only work for a limited set of schema changes; consult "Core Data Model Versioning and Data Migration Programming Guide" for details.
         
         */
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }    
    
    return __persistentStoreCoordinator;
}

#pragma mark - Application's Documents directory

/**
 Returns the URL to the application's Documents directory.
 */
- (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}
- (void)fbDidNotLogin:(BOOL)cancelled{}
- (void)fbDidExtendToken:(NSString*)accessToken
               expiresAt:(NSDate*)expiresAt{}
- (void)fbDidLogout{}
- (void)fbSessionInvalidated{}
- (void)fbDidLogin{}

@end
