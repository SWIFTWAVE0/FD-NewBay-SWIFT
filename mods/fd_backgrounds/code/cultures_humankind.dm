#define CULTURE_HUMAN_KIPERIUSMINER     "Kiperius, Miner Colony"
#define CULTURE_HUMAN_KIPERIUSPRISONER  "Kiperius, Prison"
#define CULTURE_HUMAN_MEOT              "Meonian"
#define CULTURE_HUMAN_REPUBL            "Republican"
#define CULTURE_HUMAN_MARTIAN_FD        "Martian, Surfacer"
#define CULTURE_HUMAN_MARSTUN_FD        "Martian, Tunneller"
#define CULTURE_HUMAN_LUNAPOOR_FD       "Luna, Lower Class"
#define CULTURE_HUMAN_LUNARICH_FD       "Luna, Upper Class"
#define CULTURE_HUMAN_VENUSIAN_FD       "Venusian, Zoner"
#define CULTURE_HUMAN_VENUSLOW_FD       "Venusian, Surfacer"
#define CULTURE_HUMAN_BELTER_ALT        "Belter, Ceres"
#define CULTURE_HUMAN_PLUTO_ALT         "Plutonian"
#define CULTURE_HUMAN_EARTH_ALT         "Earther"
#define CULTURE_HUMAN_CETI_ALT          "Cetite"
#define CULTURE_HUMAN_FOSTER_ALT        "Fostersman"

#define HUMAN_CULTURES_TO_DELETE					list(CULTURE_HUMAN_AVACOMMON, \
														CULTURE_HUMAN_AVANOBLE, \
														CULTURE_HUMAN_LORRIMAN, \
														CULTURE_HUMAN_LORDUP, \
														CULTURE_HUMAN_LORDLOW, \
														CULTURE_HUMAN_MIRANIAN, \
														CULTURE_HUMAN_MARTIAN, \
														CULTURE_HUMAN_MARSTUN, \
														CULTURE_HUMAN_LUNAPOOR, \
														CULTURE_HUMAN_LUNARICH, \
														CULTURE_HUMAN_VENUSIAN, \
														CULTURE_HUMAN_VENUSLOW, \
														CULTURE_HUMAN_BELTER, \
														CULTURE_HUMAN_PLUTO, \
														CULTURE_HUMAN_EARTH, \
														CULTURE_HUMAN_CETIN, \
														CULTURE_HUMAN_CETIS, \
														CULTURE_HUMAN_CETII, \
														CULTURE_HUMAN_FOSTER, \
														CULTURE_HUMAN_PIRXL, \
														CULTURE_HUMAN_PIRXB, \
														CULTURE_HUMAN_PIRXF, \
														CULTURE_HUMAN_NYXIAN)
#define HUMAN_CULTURES_TO_ADD						list(CULTURE_HUMAN_KIPERIUSMINER, \
														CULTURE_HUMAN_KIPERIUSPRISONER, \
														CULTURE_HUMAN_MEOT, \
														CULTURE_HUMAN_MARTIAN_FD, \
														CULTURE_HUMAN_MARSTUN_FD, \
														CULTURE_HUMAN_LUNAPOOR_FD, \
														CULTURE_HUMAN_LUNARICH_FD, \
														CULTURE_HUMAN_VENUSIAN_FD, \
														CULTURE_HUMAN_VENUSLOW_FD, \
														CULTURE_HUMAN_BELTER_ALT, \
														CULTURE_HUMAN_PLUTO_ALT, \
														CULTURE_HUMAN_EARTH_ALT, \
														CULTURE_HUMAN_CETI_ALT, \
														CULTURE_HUMAN_FOSTER_ALT, \
														CULTURE_HUMAN_REPUBL)

/datum/map/New()
	available_cultural_info[TAG_CULTURE] += HUMAN_CULTURES_TO_ADD
	. = ..()

/datum/species/human/New()
	available_cultural_info[TAG_CULTURE] += HUMAN_CULTURES_TO_ADD
	..()
	available_cultural_info[TAG_CULTURE] -= HUMAN_CULTURES_TO_DELETE

//OUR OWN CULTURES//
//START//

/singleton/cultural_info/culture/human/kiperius_miner
	name = CULTURE_HUMAN_KIPERIUSMINER
	nickname = "Киперианец, шахтёр"
	description = "You were born in the golden age of the Kiperius. Probably, as a child of workers family or one of the many vat-grown kids, used by corpos for various labor. \
	Either way, you were pretty much used to harsh conditions of the planet and it logistical problems as well. You spent most of your life inside the dark, steel corridors of underground outposts, \
	rarely seeing any sunlight or stars. Thanks to the people that lived by your side - you also pretty used to hard work, most of the time spending HOURS on polishing one single thing. Someone can even call you workaholic. \
	When economical crisis hit the door, your familiy somehow managed to leave planet, bringing aside pretty big amount of phoron crystals, which helped to get new home and probably some kind of long-term buisness."
	economic_power = 1.4

/singleton/cultural_info/culture/human/kiperius_prisoner
	name = CULTURE_HUMAN_KIPERIUSPRISONER
	nickname = "Киперианец, заключённый"
	description = "You are from Kiperius, biggest prison in entire SCG. Not important were you brought here due to some government disagreements, or borned inside its underground caves - this planet changed you alot. \
	Living under always present death scythe, people from todays 'Ice Cage' is either broken and silent, or mad and mute. There is no sun, no grass, and no trace of the planet founders. \
	Being independent and forgotten in the same time brings us to the point, where most of the newborn generations not only can't speak due to the fact there is no one who can say them how, \
	but also don't know anything about SolGov itself. If you somehow leaved Kiperius - you are probably not the same person that entered it anymore. Well, if you even BEEN a person. \
	Kiperians are pretty cold people, not much into the all this chit-chat thing. The only thing that they know in life - is work for the sake of their dying home."
	economic_power = 0.8
	language = LANGUAGE_SIGN

/singleton/cultural_info/culture/human/meotourne
	name = CULTURE_HUMAN_MEOT
	nickname = "Меонец"
	description = "You are from Meotourne, one of the frontier worlds relatively close to humanity's core. \
	Being from either authoritarian city of Treone, industrialist Loinmont, liberalist Algonquin, shiny new Manhattan or one of tiny villages in between, your fellows are \
	mostly warm and welcoming to most, but distrustful to anyone deep inside. \
	Meonians are often seen as resourceful, diplomatic and highly aggressive in any hostilities. \
	Although recently they're seen in both SCG and GCC more often due to corporate influence on their homeworld, the nation still stands relatively unknown by most."
	economic_power = 1
	language = LANGUAGE_SPACER

/singleton/cultural_info/culture/human/pospolita
	name = CULTURE_HUMAN_REPUBL
	nickname = "Республиканец"
	description = "You are from Nova Respublica, the tight conglomerate of several frontier colonies and many space installations relatively close to humanity's core. \
	Republic was never exactly known for any of its strong suits, although it owes its sovereign existence to its aggressive expansion during the early 23rd century. \
	Nowadays it stands peacefully, having decent relations with frontier nations it once called enemies, and even incorporating some of them into itself. \
	With most of its space running dry of minerals from almost two centuries of mining, Republic struggles to reform itself into a less industrialist economy."
	economic_power = 0.8
	language = LANGUAGE_SPACER

//END//

//REWRITED SIERRA AND OFF-BAY ONES//
//START//
/singleton/cultural_info/culture/human/martian_surfacer_alt
	name = CULTURE_HUMAN_MARTIAN_FD
	nickname = "Марсианин, Монсийец"
	description = "Вам посчастливилось оказаться среди тех, кто родился на поверхности, либо вы зарабатываете достаточно, чтобы поселиться там. \
	Здесь - люди не нуждаются практически ни в чём. Государство обеспечивает их абсолютно всеми благами, спонсируя любую их деятельность. \
	Это олигархи и прочие сливки общества, едва ли видевшие обратную сторону медали. Впрочем, их нельзя назвать эгоистичными или самовлюблёнными, \
	ведь они прекрасно понимают, что их блага - это чужие слёзы и часы. Скорее, подобно своим предкам - Гидеонцам, они не спешат отказываться от \
	утопичной, комфортной жизни в пользу борьбы за равенство и справедливость. \
	------------------------------------------------------------------------------ \
	Не смотря на то, что Марс был колонизирован ещё двести с лишним лет назад, как и на Луне - жизнь вне специальных городов-куполов на нём невозможна. \
	Большая часть Монсийцев распределена между тремя локациями - Горой Олимп, Провинцией Фарсида и Кратером Эллады, в то время как остальные поселения - \
	это преимущественно коммерческие и административные зоны, или же крупные фермерские угодья."
	economic_power = 1

/singleton/cultural_info/culture/human/martian_tunneller_alt
	name = CULTURE_HUMAN_MARSTUN_FD
	nickname = "Марсианин, Туннелер"
	description = "Так уж сложилось, что вы угодили сюда, на самое дно ИХ \"утопического\" мира - в старые рабочие туннели. \
	Так называемое \"временное\" решение вопроса работы и проживания, которое покинули с возведением первых белых шпилей на поверхности Марса. \
	Теперь, здесь живут лишь бедняки и нелегальные деятели, что сыты по горло подобной \"платой\" за собственный труд. \
	И тем не менее, они всё равно продолжают работать на неродивое государство, не только производя больше половины всех бытовых товаров \
	планеты, но также занимаясь и добычей таких жизненноважных ресурсов как \"Марсианский лёд\". Не потому, что верят в то, что ситуация наладится, \
	а потому что иных вариантов, кроме как податься в Фронтир - у них нет. А если кого они и не любят больше богачей - так это \"иностранцев\". \
	Туннелеры - ворчливые скряги, привыкшие считать каждый таллер в своём кармане. Они упрямы, горделивы, и предпочитают стоять на своём до момента, \
	пока их опоннент не признает их правоту или не начнёт молить о пощаде."
	economic_power = 0.9

/singleton/cultural_info/culture/human/luna_poor_alt
	name = CULTURE_HUMAN_LUNAPOOR_FD
	nickname = "Селениан, Гетто"
	description = "Вы родом с Луны - естественного спутника Земли, где своё гнёздышко свили известнейшие \
	личности корпоративной индустрии. К сожалению, вы совершенно точно к ним не относитесь... \
	Не смотря на то, что Луна носит гордое звание культурной столицы Сола, вполне обыденным явлением здесь \
	являются бесхозные рабочие и мафиози, что по-своему пытаются струсить с вас денег, да побольше. \
	Больше половины населения спутника находится за чертой бедности, пребывая в постоянных конфликтах друг с другом. \
	Банды сражаются за территорию, наёмники выполняют грязную работу для \"Конгломерата Четырёх\", а хакеры снабжают их информацией \
	и новыми контрактами. \
	------------------------------------------------------------------------------ \
	Здесь нет хороших и плохих, есть только те, кто едят и те кто сдыхают с голоду. Если верхушка рвёт глотки \
	ради статуса и славы, то здесь это делают из чистого желания жить, ведь так и устроены \"подворотни\". \
	Если вам удалось дожить хотя бы до двадцати и выбраться из этой дыры - то это действительно достижение. Для кого-то. \
	Местные же, вероятно, назовут вас просто трусом."
	economic_power = 1
	language = LANGUAGE_HUMAN_SELENIAN

/singleton/cultural_info/culture/human/luna_rich_alt
	name = CULTURE_HUMAN_LUNARICH_FD
	nickname = "Селениан, Звёздое дитя"
	description = "Вы родом с Луны - естественного спутника Земли, где своё гнёздышко свили известнейшие \
	личности корпоративной индустрии. Вероятнее всего, вы являетесь частью какой-то богатой династии, или  \
	состоите в одной из четырёх крупнейших корпораций на средних позициях и выше. Вам не приходиться жаловаться \
	на недостаток денег, но тем не менее, вокруг вас постоянно крутятся те, кто хотят эти деньги отобрать. \
	С самого рождения вы впутаны в их \"Игру\". Интриги, политические манёвры, предательства и пособничество криминалитету - \
	это то, чем живёт местная элита. Так уж тут заведено, что те, кто не готов идти по чужим головам - всегда будут оставаться на дне. \
	------------------------------------------------------------------------------ \
	Вероятно, вы крайне начитанный и умный человек, посвещавший не мало времени своему культурному развитию и различного рода творчеству. \
	Это отражается не только в ваших взглядах на мир, но и в характере. Многие отмечают, что звёздные дети персоны крайне меркантильные, мелочные, и капризные."
	economic_power = 1.3
	language = LANGUAGE_HUMAN_SELENIAN

/singleton/cultural_info/culture/human/venusian_upper_alt
	name = CULTURE_HUMAN_VENUSIAN_FD
	nickname = "Венерианец, житель \"Зоны\""
	description = "Если Марс административная столица, а Луна культурная - то Венеру можно по-праву назвать туристическим центром. \
	Не смотря на мёртвые пустоши, покрывающие всю планету, её величественные пузыри, парящие среди облаков ежемесячно привлекают десятки отдыхающих. \
	Для многих, Венера является не столько местом работы, сколько жилищем. Под её куполами располагаются целые районы, состоящие исключительно из \
	особняков высокопставленных офицеров, государственных представителей и глав корпораций. По этой же причине, не редко именно данная планета \
	становится центров для переговоров и решения важных дипломатических вопросов. Уровень преступности здесь, в практически полностью изолированной среде - \
	близится к нулю. И тем не менее, олигархи не чураются меряться размерами своих частных дивизионов, чаще всего состоящих из контрактников \"PCRC\". \
	------------------------------------------------------------------------------ \
	Какой-то устоявшейся бюрократической цепочки, законов, или вида управления на Венере нет, ведь каждая Зона(за некоторыми исключениями) уже давно \
	выкуплена частными предпринимателями и богатыми семьями, что сами обеспечивают своё снабжение, безопасность, и соблюдение прав гражданина. \
	Поэтому, средний класс, чаще всего, работает в соответствующих своим \"владельцам\" сферах, будь то пансионаты, казино, или огромные клубы. \
	Венерианцы взрощены культурой потребления, и поэтому часто ждут того же уровня жизни от других уголков галактики."
	economic_power = 1.4

/singleton/cultural_info/culture/human/venusian_surfacer_alt
	name = CULTURE_HUMAN_VENUSLOW_FD
	nickname = "Венерианец, житель поверхности"
	description = "Так уж сложилось, что вы родились здесь, глубоко в пучинах Венеры, среди потомственных должников. \
	Пещеры, что раньше служили способом выкупить свою шкуру у корпоратов, ныне являются главной производственной мощностью всей планеты. \
	Многие из здешний вовсе давно позабыли то, как они здесь оказались и ради чего пашут каждый день, передавая свои кредитные обязательства \
	от деда к отцу, и от отца к сыну. Многие из сегодняшних \"поверхностников\" вовсе не видели внешнего мира, собирая картину о нём по мусору, \
	что поступает сюда с верхов. \
	------------------------------------------------------------------------------ \
	Жителей этих старых шахт можно охарактеризовать как крайне трудолюбивых, справедливых мужей и женщин, что чтят традиции своих предков и вкладывают \
	всего себя в превращении этих ветхих тоннелей в прекрасный сад для своих будущих детей. Впрочем, как бы демократичны и уверены в себе они не были, \
	едва ли живущие там, в облаках, будут согласны поделиться с шахтёрами частичкой своей роскоши. И всё же, те не оставляют своих попыток достучаться до правительства."
	economic_power = 0.9

/singleton/cultural_info/culture/human/belter_alt
	name = CULTURE_HUMAN_BELTER_ALT
	nickname = "Белтер"
	description = "Вам довелось родиться на Церере, среди сотен лавирующих небесных тел. \
	В этом выражается почти вся жизнь «Белтеров» - шатании от одного жилого блока до другого, в поисках некого глубинного смысла существования. \
	Местные на протяжении столетий работали в промышленной сфере - сначала как шахтёры, а ныне как кораблестроители. \
	Корпорация Falco Designs значительно поспособствовала тому, что сегодня Церериане практические повсеместно считаются мастерами своего дела, \
	благодаря чему те имеют достаточно большой спрос на рынке труда как среди частников, так и у государства. \
	------------------------------------------------------------------------------ \
	Тем не менее, культура Белтеров в первую очередь ассоциируется с переменами, ведь живя на огромной верфи - ты не имеешь особого контроля \
	над теми кто приходит и уходит. Церера - подобно клетке - является отличной платформой для старта, зоной комфорта, но не даёт своим жителям \
	абсолютно никаких перспектив. В этом, отчасти, они прохожи на своих ближайших родственников - Спейсеров."
	economic_power = 1

/singleton/cultural_info/culture/human/plutonian_alt
	name = CULTURE_HUMAN_PLUTO_ALT
	nickname = "Плутонец"
	description = "Вы - плутонец, один из девяти миллионов несчастных, кому не посчастливилось тут оказаться. \
	В результате утраты былого экономического потенциала, некогда популярная среди экспедиционных флотилий планета, \
	на данный момент, доживает свои последние дни будучи наименее развитым членом ЦПСС. В 2302 году Сол потерял \
	контроль над планетой, вследствие чего Плутон стал убежищем для большинства преступных элементов со всего \
	человеческого космоса. На планете уже несколько лет как отсутствуют официальные органы власти, на смену которым \
	пришли преступные группировки самых различных мастей, ведущие нескончаемую борьбу за влияние. Подавляющая часть местного \
	населения привыкла жить под \"крышей\" местных группировок, считая тех, де-факто, своими хозяевами. Плутон стал \
	самой огромной свалкой, крупнейшим чёрным рынком, и объектом интереса тех, кому очень охотно сэкономить на \
	обслуживании транспорта, ведь местные сами создали вокруг этого индустрию, утилизируя заброшенную десятилетия назад инфраструктуру."
	economic_power = 0.8
	secondary_langs = list (LANGUAGE_HUMAN_EURO,
		LANGUAGE_HUMAN_CHINESE,
		LANGUAGE_HUMAN_ARABIC,
		LANGUAGE_HUMAN_INDIAN,
		LANGUAGE_HUMAN_IBERIAN,
		LANGUAGE_HUMAN_RUSSIAN,
		LANGUAGE_SPACER,
		LANGUAGE_GUTTER,
		LANGUAGE_SIGN)

/singleton/cultural_info/culture/human/earthling_alt
	name = CULTURE_HUMAN_EARTH_ALT
	nickname = "Землянин"
	description = "Вы уродились среди руин постепенно возраждающейся колыбели человечества - Земли. \
	Несмотря на то, что она давным-давно не является столицей человеческой цивилизации, \
	да и едва ли играет хоть какую-то роль в её политической жизни, планета по-прежнему разделена между государствами старого мира. \
	Те, скорее, выступают своего рода живым музеем для небожителей. Образ жизни здесь также слабо изменился, \
	разве что стоит заметить факт того, что местные стали с куда большей заботой относиться к экологии их родного мира. \
	Пускай на данный момент их успехи не слишком велики, и многочисленные проблемы с стихией значительно усложняют процесс \
	восстановления планеты - несколько крупных кусков Евразии уже подверглось полной терраформации, открывая возможность для \
	завоза первых травоядных. Большая часть Земли обитает в крупных аркологиях, разбросанных тут и там. Таковые \
	часто носят названия существовавших в истории городов или стран, используя приписку Нью и Олд. \
	------------------------------------------------------------------------------ \
	Земляне крайне приятные в общении и чуткие люди, уважающие чужие культуры. Они редко вступают в конфликты и привыкли вести достаточно \
	мирный образ жизни, наученные горьким опытом предыдущих ошибок. В их распоряжении не редко можно найти крайне старые, уже давно \
	не работающие устройства и вещи, хранимые исключительно из желания почтить усилия и достижения их предков."
	economic_power = 1.1

/singleton/cultural_info/culture/human/ceti_alt
	name = CULTURE_HUMAN_CETI_ALT
	nickname = "Цетит"
	description = "Вы выросли в технологическом Раю - на Цети Эпсилон. Здесь, лучшие умы всего человечества ежедневно трудятся над тем, чтобы \
	улучшить жизнь своих граждан, пока Сол любезно использует их наработки для более глобальных, военных целей. Во многом, за свой текущий уровень \
	развития люди обязаны именно Цетитам, пускай те и не особо разделяют подобное мнение в угоду того, КАК их дары используются остальной галактикой. \
	Эпсилон известен своими молодыми умами и изобретательным подходом практически ко всему, что есть в нашей жизни. Сложно назвать хотя бы одну вещь, \
	которую местные не смогли бы оптимизировать. Что уж говорить, если их столичный город - Иакон - лёг в основу многих сегодняшних колоний как эталон \
	практичности и логистической эффективности. \
	------------------------------------------------------------------------------ \
	Впрочем, несмотря на выше перечисленное, чаще всего Цетитов можно разделить на две группы - безумцев и зануд, что в принципе хорошо отражает их планету."
	economic_power = 1.3

/singleton/cultural_info/culture/human/foster_alt
	name = CULTURE_HUMAN_FOSTER_ALT
	nickname = "Мир Фостера, Натив"
	description = "С великой вероятностью, вы стоите у самых истоков колонизации системы Санура, или являетесь одним из немногих детей, успевших \
	родиться непосредственно на планете - за то малое время, что провёл на ней человек. Подобно Земной Аляске, Мир Фостера является крайне негостеприимной локацией для проживания, \
	тем не менее захватывающей своими красотами и туристическими возможностями. Фостерианцы крайне весёлые, полные энергии личности, которые ищут в жизни простоты и свободы от \
	забот сегодняшнего корпоративного мира. \
	------------------------------------------------------------------------------ \
	Стоит заметить, что жители Сануры редко покидают свою родную систему, дорожа своей зоной комфорта и стараясь получать от неё максимум. Если Фостерианец всё-таки оказался за \
	пределами своей уютной хай-тек хибары посреди тундры, то, вероятно, по работе или из-за вынужденных мер."
	economic_power = 1.4

#undef CULTURE_HUMAN_KIPERIUSMINER
#undef CULTURE_HUMAN_KIPERIUSPRISONER
#undef CULTURE_HUMAN_MEOT
#undef CULTURE_HUMAN_REPUBL
#undef CULTURE_HUMAN_MARTIAN_FD
#undef CULTURE_HUMAN_MARSTUN_FD
#undef CULTURE_HUMAN_LUNAPOOR_FD
#undef CULTURE_HUMAN_LUNARICH_FD
#undef CULTURE_HUMAN_VENUSIAN_FD
#undef CULTURE_HUMAN_VENUSLOW_FD
#undef CULTURE_HUMAN_BELTER_ALT
#undef CULTURE_HUMAN_PLUTO_ALT
#undef CULTURE_HUMAN_EARTH_ALT
#undef CULTURE_HUMAN_CETI_ALT
#undef CULTURE_HUMAN_FOSTER_ALT

#undef HUMAN_CULTURES_TO_DELETE
#undef HUMAN_CULTURES_TO_ADD
