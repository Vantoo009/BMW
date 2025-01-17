-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 17 2024 г., 09:40
-- Версия сервера: 8.3.0
-- Версия PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bmw`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `adress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `email`, `phone`, `adress`) VALUES
(1, 'e-mail\r\ninfo@bmwidealm.com', 'Графік роботи салону і сервісу:\n\nПн-пт: 09:00–18:00\nСб: 10:00 – 15:00\nНеділя: Вихідний\n\nвідділ продажу\n+38 050 328 49 90\nкорпоративного відділу\n+38 050 300 55 95\nвідділ сервісу\n+38 050 300 99 93\nвідділ продажу запасних частин\n+38 050 300 99 55\nАдміністрація сайту\nСвітлик Іван Іванович +380966287253\nСвітлик Наталія Іванівна +380679229304', 'Адреса:\nВул. Європейська 1, Ужгородський район, 89425, с. Баранинці\n(схема проїзду)');

-- --------------------------------------------------------

--
-- Структура таблицы `header`
--

DROP TABLE IF EXISTS `header`;
CREATE TABLE IF NOT EXISTS `header` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `header`
--

INSERT INTO `header` (`id`, `name`, `filename`) VALUES
(1, 'BMW', 'BMW - це німецька автомобільна компанія, яка виробляє автомобілі та мотоцикли. Компанія була заснована в 1916 році. BMW (Bayerische Motoren Werke AG) - німецька корпорація, що виготовляє автомобілі, Двигуни , мотоцикли та велосипеди. У російськомовній транскрипції: БМВ (Бе-ем-ве) — «баварські моторні заводи). Галузь: автопромисловість.Підстава: 7 березня 1916. Засновники: Карл Фрідріх Рапп, Густав Отто. Голова: Олівер Ципсе. Головний дизайнер: Йозеф Кабан. Штаб-офіс: Мюнхен, Баварія, Німеччина . Ринкова капіталізація: 49,98 млрд євро. Дохід:111,24 млрд євро. Чистий прибуток: 12,38 млрд євро. Дочірні підприємства: Mini, Rolls-Royce , BMW-M, BMWi, Alpina.        \r\n                                                                                                     ');

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `filename` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `milestones` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `car_building_history` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `moto_building_history` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `engine_production_history` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sports_history` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `iconic_cars_history` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `brand_identity_history` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `success_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`id`, `name`, `filename`, `milestones`, `car_building_history`, `moto_building_history`, `engine_production_history`, `sports_history`, `iconic_cars_history`, `brand_identity_history`, `success_secret`) VALUES
(1, 'Історія створення', 'Історія Bayerische Motoren Werke почався більше ста років тому, в 1916 році, коли Карл Фрідріх Рапп заснував свій невеликий завод з виробництва літакових моторів. Головний офіс завбачливо влаштували в Мюнхені, щоб працювати ближче з виробничими потужностями друга і компаньйона Густава Отто, що випускає повітряних гігантів.  Майже відразу молодій компанії вдалося укласти контракт на Виробництво двигунів для австро-Угорської льотної техніки-рідкісна удача. Але підприємець-початківець зіткнувся з нестачею фінансування, який вирішив заповнити залученням співзасновників. На жаль, рішення обернулося низкою проблем, що змусили Раппа відійти від керівництва — в 1918 воно перейшло до Франца Йозефа Попа.  Однак труднощі тільки починаються: програла Першу світову Німеччина була змушена укласти вкрай невигідний їй Версальський мирний договір. Він зробив виробництво літакової техніки в країні неможливим і Bayerische Motoren Werke довелося докорінно перебудуватися-почати поставляти гальмівні установки для залізничного транспорту.  BMW новий напрямок діяльності виявилося не до душі — компанія переключилася на мотоциклетну техніку. Перший мотоцикл зійшов з конвеєра вже в 1923. Здавалося, баварці знайшли своє покликання: їх мотомашини цінували за дивовижну продуманість, ефектний дизайн, вражаючу швидкість. Але це не та компанія, що зупиняється на досягнутому: в 1928 було вирішено налаштувати виробничі потужності на випуск власних автомобілів.', 'Перерахуємо найбільш значущі події і дати в історії легендарної автомобільної марки:  1951: випуск післявоєнної моделі 501. 1954: мотоцикли на колесах BMW перемагають у чемпіонаті світу з мотоциклетних гонок і тримають пальму першості ще 20 років поспіль. 1955: випуск першого післявоєнного масового авто — мініатюрної BMW Isetta. 1956: побачили світ спорткари 503 і 507. 1959: серійна модель 700 отримала величезну популярність у покупців. 1975: запуск третьої серії в кузові Е21. 1995: презентація BMW Z8, якому судилося стати зіркою Голлівуду, знятися в кінофраншизі про Агента 007. 1999: спуск з конвеєра першого легендарного позашляховика з повним приводом BMW X5. У 2013 компанія починає нову еру автовиробництва з електрокара BMW i3 і гібридного автомобіля i8.', 'Незважаючи на виробництво двигунів і мотоциклів, все ж найважливіший напрямок розвитку «Баварських моторних заводів» — автомобілі. Ними ми і продовжимо розповідь про компанію!  Спочатку були малолітражки У 1920-1920 найпопулярнішими і затребуваними були малолітражні авто — маневрені, економічні, прості в управлінні. Не дивно, що першою машиною BMW стала Dixi 3/15 PS:  20 кінських сил; 4-циліндровий двигун; Швидкість до 80 км / год; Бездоганний дизайн. Так як модель багато в чому скопіювали з британського прототипу, було вирішено впровадити і власну розробку, якою стала BMW 303 з потужністю в 30 кінських сил і з фірмовими «ніздрями» на радіаторній решітці. Після малолітражок компанія випускає якісні і зовсім не дешеві BMW 321 і 327 — повногабаритні, з двигуном на 2 л.  Після війни: важкі часи Друга світова війна на Bayerische Motoren Werke відбилася не менш негативними наслідками: заборона на випуск власної мото - і автотехніки діяв аж до 1948 року. Компанія намагається відновитися випуском першої післявоєнної BMW 501, але зазнає невдачі: на час сходу з конвеєра машина вже морально застаріла, поступалася в потужності конкурентам і ніяк не приваблювала свій високою ціною.  Але вперті баварці не бажають так просто здаватися: в 1954 представляють 502, обладнану 100% алюмінієвим двигуном V8, якого ще не було в історії світового автомобілебудування. Паралельно випускається (за італійською Ліцензією) однодверна «малютка» BMW Isetta з мотоциклетним двигуном — настільки популярна, що було зібрано 16 000 машин.  У п\'ятдесятих компанія приступає до розробки шикарних 503 і 507 Roadster, які не залишилися непоміченими для поважної публіки. Родстер визнали зіркою автовиставки у Франкфурті і однією з найкрасивіших машин планети за сумісництвом. Диво дизайну, розроблене графом Альбрехтом Герцем, зачарувало навіть самого Елвіса Преслі, який купив собі такий німецький автомобіль.  Однак стильні і якісні Седани БМВ коштували дуже дорого для середньостатистичного покупця — їх майже не купували. Баварським заводам загрожувало банкрутство-в 1959 вже стали говорити про продаж компанії. На щастя, прийшов порятунок» в особі \" моделі 700 з кузовом Michelotti і потужністю 30 к. с., в яку покупці відразу і беззастережно закохалися!  Відродження: швидко вгору! Після маленького, але надихаючого підйому в 1962 німецька марка BMW ступила на дорогу впевненого розвитку, щоб стати такою, якою ми її знаємо сьогодні. Не за горами випуск легендарної моделі 1500, яка прославила баварців на весь світ. Впізнавані обриси кузова, 4 — циліндровий двигун, «ніздрі», Задній привід-саме цією моделлю надихалися радянські інженери, створюючи свій «Москвич».  Німецькі ж колеги переключилися на ефектні купе і седани з чудовими тех. характеристиками: BMW 3200 CS-Bertone (1962), BMW 2000 (1965) — перша машина з автоматичною коробкою передач, BMW 2800 CS (1969), вільно розганяється до 200 км/год.  \"розкішний, дорогий, надійний\": BMW на піку Найяскравішими в історії баварської компанії по праву можна назвати 1970-1990:  BMW 3.0 CSL-гоночний болід з ABS-гальмами, що розганяється до 220 км/с. BMW 2000 Turbo — перша в лінійці з турбо-наддувом. BMW 3er-легендарна третя серія з вдосконаленими шасі, новим двигуном з охолоджуючим кулером. BMW 6er-спортивне купе з фірмовим мотором Big Six і вражаючими для свого часу новинками: кондиціонер, люк, дискові гальмівні колодки, салон з натуральної шкіри, Бортовий комп\'ютер. BMW 7er — седани лакшері-класу. Найяскравіші моделі-728, 730 і 733і з Check-control, індикаторами витрати палива і автоматом ZF. У 1986 саме на «сімку» вперше поставили 12-циліндровий двигун. BMW 3er-третя серія з універсалами, седанами, хетчбеками. BMW Х5 — легендарна «п\'ятірка»: однаково ідеальна на бездоріжжі і швидкісній трасі, ця машина стала справжнім бестселером у автовласників. У 2001 компанія випускає унікальну Е65 з інноваційною системою i-Drіve (координує до 700 параметрів одночасно), сервоприводним гальмом і 6-ступінчастою коробкою передач.  \"екологічні автомобілі майбутнього\": BMW сьогодні Відзначивши столітній ювілей, компанія поставила грандіозні цілі на»наступні 100 років\":  Розробка нових типів машин з використанням сучасних цифрових досягнень: це адитивні технології, робот-управління, штучний інтелект , повна автоматизація водіння; Охорона навколишнього середовища, впровадження електромобілів і машин, що працюють на нових типах палива. У сучасній історії бренду:  2009: презентація спорткара з гібридним мотором BMW Vision EfficientDynamics. 2009: новий седан П\'ЯТОЇ серії BMW 550i. 2011: інноваційний електромобіль BMW ActiveE. 2011: запуск інноваційного виробництва з випуску армованого вуглецевим волокном суперлегкого пластику для машин BMWi. 2013: випуск BMW i3 і BMW i8. У 2014 «вісімка» була офіційно визнана Top Gear «Автомобілем року».  Виробничі потужності автоконцерну поширені сьогодні по всьому світу:  Німеччина: Мюнхен, Дінгольфінг, Лейпциг, Регенсбург. США: Спартанбург. Єгипет. Таїланд . Малайзія. ПАР. Індія . В\'єтнам. Китай : Huacheng Auto Holding (виробник автомобілів Brilliance). Основними конкурентами \"Баварських моторних заводів\" залишаються Mercedes -Benz, Lexus і Audi.', 'Мотоциклетна історія бренду починається з інноваційної моделі R32, розробленої інженером Максом Фрізом в 1922. Він першим придумав ставити мотор не вздовж, а поперек поздовжньої осі. Новинка була гідно оцінена глядачами на мото-шоу 1923 року, проте компанія, за своїм звичаєм, не збиралася зупинятися на досягнутому. У 1935 вона представляє R12 і R17 з рамами з пресованого металу, додає амортизацію на вилку переднього колеса і збільшує об\'єм двигуна до 750 кубів.  Баварські мотоцикли зробили відомими на весь світ саме гонки — як німецькі, так і міжнародні. Про мототехніку BMW світ дізнався і за часів Другої світової. Так, спеціально для військових цілей розробили R75 — швидкий, легкий в управлінні і обслуговуванні. У післявоєнну пору мотоциклетний напрямок продовжував розвиватися:  В 1951 випускають R51/3 з удосконаленим мотором «Боксер» і плавним ходом, що забезпечує комфорт водія і пасажирів. R75/5 — швидкісний, легкий в управлінні, естетичний, з якісними комплектуючими. R 90s — обтічні форми, збільшений обсяг. R 100 RS — оновлена версія попередньої. R 80 G/S — з одинарним маятником колеса, який давав можливість на великій швидкості перетинати бездоріжжя. К100 — потужністю в 90 кінських сил. F650 — «підкорювач жіночих сердець». 1200 RS — чотирициліндрова модель потужністю в 130 кінських сил. Сучасний асортимент мотоциклів БМВ дуже широкий — спортивні, класичні, туристичні, елегантні, швидкісні.', 'Так як спочатку це були «моторні заводи», нічого дивного, що Баварська компанія самостійно конструювала, оновлювала і вдосконалювала двигуни для своєї мото - і автотехніки. Спочатку BMW випускала моторну продукцію для військових цілей, проте після укладення Версальського договору змінила специфіку:  М10-М50-перше покоління простих моторів; VANOS — вдосконалені движки з механізмом управління фазами газорозподілу впускного клапана. А М54, M52TU здатні працювати вже з високочутливою електронною педаллю газу.', 'БМВ яскраво заявляла про себе в автогоночному спорті протягом своєї історії: вперше німецькі машини взяли участь на Гран-Прі в Німеччині в 1952 році. Боліди BMW можна було помітити на змаганнях Формули-1, чемпіонату світу серед легкових автомобілів, чемпіонату Німеччини серед легкових автомобілів і пр.також компанія поставляє свої фірмові двигуни для установки на спорткари.  Перший спортмобіль від баварців, BMW 328, побачив світ ще в 1936 — легка, потужна і швидкісна машина. Після неї було випущено чимало болідів, поки в 1972 не було засновано спеціальний дочірній підрозділ BMW Motorsport GmbH, що займається виключно гоночними моделями. Його справжніми зірками стали BMW 3.0 CSL і BMW 2002 turbo. Не здають свої позиції і швидкісні баварські мотоцикли - більше п\'ятдесяти років розвивається гоночна програма BMW Motorsport.', 'Вибір найкращих машин БМВ завжди був справою смаку, тому що виробник намагався довести кожну модель до ідеалу. Однак, керуючись численними рейтингами і відгуками»бумер \" -власників, можна скласти топ-10:  BMW M1 — перший суперкар від баварців, сконструйований великим дизайнером Джуджаро виключно для автоперегонів. Шестициліндровий мотор об\'ємом в 3,5 літрів видавав ідеальну потужність в 273 кінські сили. BMW M3 (E30) - перед нами найвдаліше авто «Баварських моторних заводів». Машину сконструювали для гонок DTM: 4-циліндровий двигун на 2,3 літра, 210 кінських сил. Однак потім компанія прийняла рішення про серійний випуск М3. BMW 507 (1950 — ті) - мабуть, найкрасивіший автомобіль, випущений автоконцерном. Двигун об\'ємом 3,2 літра, Задній привід. Родстер був занадто дорогим для свого часу, чому і був випущений тиражем в 252 машини. Саме він став натхненням для Z8. BMW M5, Е34 (1989-1995) — експерти кажуть, що це найкраща М5 за всі роки існування баварської компанії: потужний 6-циліндровий мотор, Задній привід, об\'єм 3,6 л, механічна коробка передач, потужність 310 кінських сил. BMW i8 - \"кращий гіперкар планети», \"технологічне диво\". Як тільки не називали цей гібрид (бензиновий турбо-двигун + електромотор, що дозволяє споживати 3 л бензину на 100 км дороги). Потужність \"малятка\" — 357 кінських сил, максимальна швидкість-250 км/ч.вільно розганяється до сотні за 4 секунди. BMW Z8 (1999) — гідна спадкоємиця родстера 507, випущена малим тиражем в 5703 примірника. Машина з 4,9-літровим двигуном могла розганятися до 400 кінських сил. Не дивно, що така «красуня» знялася у фільмі про Агента 007 «і цілого світу мало». BMW 2002 Turbo (1973) — спеціальне видання, яке стало передвісником знаменитої третьої серії: Потужність 170 кінських сил, дволітровий турбодвигун, оновлена аеродинамічна форма. BMW 1 серії M (2011) — початок нової ери дводверних купе (компактних авто). Незважаючи на порівняно широкий кузов і колісну базу, машина важила «всього» 1496 кг.у ній стояв трилітровий 6-циліндровий мотор, здатний видати потужність в 335 кінських сил. BMW 3.0 CSL (1972) — модель була сконструйована спеціально для участі в знакових гонках Touring Car. Полегшений спорткар міг похвалитися аеродинамічною обвіскою і мотором на 3,2 л. BMW 328 (1936) - спорткар, який не один раз дебютував у престижних автоперегонах. Машина вагою 830 кг була оснащена 6-циліндровим двигуном, що видає потужність в 79 кінських сил. Крім названих, цінителі баварського автопрому виділяють BMW: безкомпромісний 328, інноваційний 850i, «старий добрий» 3200 CS, «золоту середину» 1500, справжній автомобіль для подорожей 1800 SA, дивовижний GINA, футуристичний 328 HOMMAGE, перший фастбек 5 серії GT (F07), елегантний 3.0 CSI, «несподіваний сюрприз» 6 серії (E24), павуковий 2800 SPICUP і космічний VISION NEXT 100.', 'Нейм розшифровується просто: BMW — Bayerische Motoren Werke, «баварські моторні заводи». Українською мовою компанію прийнято називати» Бе-Ем-ве«, а не» бе-Ем-Дабл-Ю\", як здається правильніше. Цікаво, що в різних куточках світу ці німецькі автомобілі мають власні неофіційні назви:  Україна : «Бумер», «Беха». Англомовні країни:» Бімер «(beemer) для мотоциклів,» біммер \" (bimmer) для автомобілів. Арабський світ: ВМ. Греція: beba. Також баварські машини нерідко називають згідно їх серії — «Трійка» або «п\'ятірка».  З логотипом історія цікавіше-в мережі є відразу дві версії:  «це пропелер». Так як спочатку компанія займалася розробкою авіадвигунів, цілком природно, що лого вирішили розробити в «небесному» стилі. Це мінімалістичне зображення швидко обертається пропелера на тлі блакитного неба, спрощене до біло-блакитних ромбів. «це Прапор Баварії». Білий і блакитний — кольори баварського Прапора і герба. Кожна з версій має своє право на існування — в будь-якому випадку, цей логотип залишається одним з найбільш впізнаваних на планеті.', 'Вони створюють автомобілі, що змінюють хід подій і надихаючі на звершення. Як це вдається команді Bayerische Motoren Werke AG, розповідає дизайнер корпорації Адріан ван Хойдонк:  Розкіш - це щось само собою зрозуміле. Ми ніколи не будемо нав\'язувати нашим клієнтам своє розуміння вишуканості, амбітності та переваги. Ми враховуємо, що в кожному куточку світу власне сприйняття розкішного. Але знаємо, що скрізь цінність особистого простору тільки зростає з часом-воно стало одним з найважливіших активів сучасного світу. Швидкість. БМВ прагне бути швидшим за конкурентів: 9 з 10 інновацій, що тут впроваджуються, незмінно пов\'язані з найсучаснішими електронними розробками. У дизайні немає другорядних деталей. Наше прагнення до вишуканості та досконалості абсолютно. І ніяк не відбивається на мобільності автомобілів: в них все повинно залишатися ідеальним за всіма параметрами. Крос-функціональні підрозділи. У Баварській компанії різної спрямованості фахівці не працюють в різних відділах — у нас практикуються міжфункціональні підрозділи. Це дозволяє вирішувати виниклу проблему тут і зараз, не чекаючи схвалення всіх керівників. Бажання клієнта є першорядним. Наші покупці бажають оточити себе незмінно якісними речами-і ми втілюємо їх бажання в життя. Ми робимо свої автомобілі саме такими, щоб ви відчували себе в них як вдома! Ми любимо і вміємо ризикувати. У 2001 році ви вклали 25 млн доларів в ролики, де було всього два головних героя — автомобіль і водій. Ці відео не були ні освітніми, ні рекламними. Але ми вирішили ризикнути-і вони стали вірусними в мережі, що яскраво відбилося на нашому позитивному іміджі. Сильні емоції. Це перше, що повинен викликати дизайн: якщо кожен елемент авто наповнений естетикою і красою, то весь образ укупі буде сприйматися яскраво. Але краса ніколи не повинна бути на шкоду надійності і високій якості. Ідеї керують балом. Кожен з нашої команди може висловити свіжі ідеї, яку б посаду він не займав. У нас немає формальностей і нескінченних нарад — інноваційні пропозиції ми відразу беремо в роботу. Тенденція до мінімалізму. Розкіш не повинна кидатися в очі — вона цінна і приваблива, лише будучи ледь помітною. Ми за емоційний сучасний дизайн: достатньо лише пару легких ліній, щоб акцентувати увагу на потужності, динаміці або вишуканості авто. Ми знаємо, хто ви. У БМВ пишаються тим, що розуміють свою аудиторію — саме тому всі наші PR-ролики потрапляють чітко в ціль: як іронічні, несподівані, так гостросюжетні і нестандартні. BMW будує «екосистему розкоші»: величезний штат з 700 співробітників щодня зайнятий пошуком нових ідей для її створення в різноманітних формах від седанів до спорткарів. Баварські автомобілі-зразок для наслідування, що і пояснює їх популярність і навіть культ у всьому світі.');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'admin', '$2y$10$EQ7KhGxdWEye5xg9TjYW9..Oeyt5UbCKHZPGZ5nsoCdFyL1un1o0C');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
