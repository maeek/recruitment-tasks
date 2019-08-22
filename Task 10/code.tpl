<!-- 
	File: templates/product.tpl
--> 

{assign "langletters" array('ą', 'ć', 'ę', 'ł', 'ś', 'ó', 'ż', 'ź', 'ń')}
{assign "letters" array('a', 'c', 'e', 'l', 's', 'o', 'z', 'z', 'n')}
{assign var="zmiennaSmarty" value="Drogi Marszałku, Wysoka Izbo. PKB rośnie. Różnorakie i realizacji obecnej sytuacji. Przez
ostatnie kilkanaście lat odkryliśmy że rozszerzenie naszej kompetencji w większym stopniu
tworzenie kierunków postępowego wychowania. MOJE_SLOWO_KLUCZ Podobnie, wzmocnienie i unowocześniania
istniejących kryteriów spełnia istotną rolę w większym stopniu tworzenie nowych propozycji. Gdy
za sobą proces wdrożenia i określenia istniejących kryteriów pomaga w restrukturyzacji
przedsiębiorstwa. W związku z szerokim aktywem zabezpiecza udział szerokiej grupie w
restrukturyzacji przedsiębiorstwa. Jak już mówiłem jasne jest to, iż wzmocnienie i rozwijanie
struktur przedstawia interpretującą próbę sprawdzenia modelu rozwoju."}
{assign var="tablica" value='MOJE_SLOWO_KLUCZ'|explode:$zmiennaSmarty}
{assign var="czescPierwsza" value=$tablica[0]|replace:' ':'_'}
{assign var="czescDruga" value=$tablica[1]|replace:$langletters:$letters}

.
.
.

<div class="container">
    <div class="column">{$czescPierwsza}</div>
    <div class="column">{$czescDruga}</div>
</div>