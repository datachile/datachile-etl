# coding: utf-8
import re, roman, unicodecsv, sys


# taken from:
#  https://www.aduana.cl/arancel-aduanero-2007/aduana/2007-02-14/133855.html
SECC = """SECCION I Capítulos 1 AL 5
Animales vivos y productos del reino animal

SECCION II Capítulos 6 al 14
Productos del reino vegetal

SECCION III Capítulo 15
Grasas y aceites animales o vegetales; productos de su desdoblamiento; grasas alimenticias elaboradas; ceras de origen animal o vegetal.

SECCION IV Capítulos 16 al 24
Productos de las industrias alimentarias; bebidas, líquidos alcohólicos y vinagre; tabaco y sucedáneos del tabaco

SECCION V Capítulos 25 al 27
Productos Minerales

SECCION VI Capítulos 28 al 38
Productos de las industrias químicas o de las industrias conexas

SECCION VII Capítulos 39 al 40
Plástico y sus manufacturas; caucho y sus manufacturas

SECCION VIII Capítulos 41 al 43
Pieles, cueros, peletería y manufacturas de estas materias; artículos de talabartería o guarnicionería; artículos de viaje, bolsos de mano (carteras) y continentes similares; manufacturas de tripa

SECCION IX Capítulos 44 al 46
Madera, carbón vegetal y manufacturas de madera; corcho y sus manufacturas; manufacturas de espartería o cestería

SECCION X Capítulos 47 al 49
Pasta de madera o de las demás materias fibrosas celulósicas; papel o cartón para reciclar (desperdicios y desechos); papel o cartón y sus aplicaciones

SECCION XI Capítulos 50 al 63
Materias textiles y sus manufacturas

SECCION XII Capítulos 64 al 67
Calzado, sombreros y demás tocados, paraguas, quitasoles, bastones, látigos, fustas, y sus partes; plumas preparadas y artículos de plumas; flores artificiales; manufacturas de cabello

SECCION XIII Capítulos 68 al 70
Manufacturas de piedra, yeso fraguable, cemento, amianto (asbesto), mica o materias análogas; productos cerámicos; vidrio y sus manufacturas

SECCION XIV Capítulo 71
Perlas finas (naturales)* o cultivadas, piedras preciosas o semipreciosas, metales preciosos, chapados de metal precioso (plaqué) y manufacturas de estas materias; bisutería; monedas

SECCION XV Capítulos 72 al 83
Metales comunes y manufacturas de estos metales.

SECCION XVI Capítulos 84 al 85
Máquinas y aparatos, material eléctrico y sus partes; aparatos de grabación o reproducción de sonido, aparatos de grabación o reproducción de imagen y sonido en televisión, y las partes y accesorios de estos aparatos

SECCION XVII Capítulos 86 al 89
Material de transporte

SECCION XVIII Capítulos 90 al 92
Instrumentos y aparatos de óptica, fotografía o cinematografía, de medida, control o precisión; instrumentos y aparatos medicoquirúrgicos; aparatos de relojería; instrumentos musicales; partes y accesorios de estos instrumentos o aparatos.

SECCION XIX Capítulo 93
Armas, municiones, y sus partes y accesorios.

SECCION XX Capítulos 94 al 96
Mercancías y productos diversos.

SECCION XXI Capítulos 97 al 99
Objetos de arte o colección y antigüedades.
"""


out = unicodecsv.DictWriter(sys.stdout, ['num_seccion', 'desc_seccion', 'chapter_from', 'chapter_to'])
re_seccion = re.compile(r'SECCION (?P<seccion>[IXV]+)[^\d]*(?P<from>\d+)[^\d]*(?P<to>\d+)?')
matched_s = None

out.writeheader()

for l in SECC.split('\n'):
    if l == '':
         continue

    m = re_seccion.match(l)
    if matched_s is not None:
        out.writerow({
            'num_seccion': '%02d' % roman.fromRoman(matched_s['seccion']),
            'desc_seccion': l,
            'chapter_from': '%02d' % int(matched_s['from']),
            'chapter_to': '%02d' % int(matched_s['to']) if matched_s['to'] is not None else None
        })
        matched_s = None
    elif m is not None:
        matched_s = m.groupdict()
