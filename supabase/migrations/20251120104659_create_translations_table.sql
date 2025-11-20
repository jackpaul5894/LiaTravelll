/*
  # Create translations table for multilingual support

  1. New Tables
    - `translations`
      - `id` (uuid, primary key)
      - `key` (text, unique) - Translation key identifier
      - `en` (text) - English translation
      - `ru` (text) - Russian translation
      - `hy` (text) - Armenian translation
      - `created_at` (timestamp)
      - `updated_at` (timestamp)

  2. Security
    - Enable RLS on `translations` table
    - Add policy for public read access (translations are public data)
    - Add policy for authenticated admin users to manage translations

  3. Initial Data
    - Populate with all website translations for navigation, hero, services, about, contact, and footer sections
*/

CREATE TABLE IF NOT EXISTS translations (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  key text UNIQUE NOT NULL,
  en text NOT NULL,
  ru text NOT NULL,
  hy text NOT NULL,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

ALTER TABLE translations ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Translations are publicly readable"
  ON translations
  FOR SELECT
  TO public
  USING (true);

CREATE POLICY "Authenticated users can manage translations"
  ON translations
  FOR ALL
  TO authenticated
  USING (true)
  WITH CHECK (true);

-- Insert navigation translations
INSERT INTO translations (key, en, ru, hy) VALUES
  ('nav.home', 'Home', 'Главная', 'Գլխավոր'),
  ('nav.services', 'Services', 'Услуги', 'Ծառայություններ'),
  ('nav.about', 'About', 'О нас', 'Մեր մասին'),
  ('nav.contact', 'Contact', 'Контакты', 'Կապ');

-- Insert hero section translations
INSERT INTO translations (key, en, ru, hy) VALUES
  ('hero.badge', 'Premium Global Travel', 'Премиум Глобальные Путешествия', 'Պրեմիում Համաշխարհային Ճամփորդություններ'),
  ('hero.title1', 'Experience Luxury', 'Испытайте Роскошь', 'Զգացեք Շքեղությունը'),
  ('hero.title2', 'Travel at Best Prices', 'Путешествия по Лучшим Ценам', 'Ճամփորդություններ Լավագույն Գներով'),
  ('hero.description', 'LiaTravel — Your trusted gateway to affordable premium travel experiences worldwide. With 8+ years of excellence, we craft unforgettable journeys across China, Turkey, Europe, and beyond.', 'LiaTravel — Ваш надежный путь к доступным премиальным путешествиям по всему миру. С более чем 8-летним опытом мы создаем незабываемые путешествия в Китай, Турцию, Европу и другие страны.', 'LiaTravel — Ձեր հուսալի դարպասը մատչելի պրեմիում ճամփորդությունների համաշխարհում: Ավելի քան 8 տարվա գերազանցությամբ՝ մենք ստեղծում ենք անմոռանալի ճանապարհորդություններ Չինաստան, Թուրքիա, Եվրոպա և այլուր:'),
  ('hero.btn.explore', 'Explore Our Services', 'Изучить Услуги', 'Ծառայություններ'),
  ('hero.btn.contact', 'Contact Our Consultants', 'Связаться с Консультантами', 'Կապվել Խորհրդատուների Հետ'),
  ('hero.trusted', 'Trusted By Travelers Worldwide', 'Доверие Путешественников по Всему Миру', 'Վստահելի Համաշխարհի Ճանապարհորդների Կողմից'),
  ('hero.years', 'Years Experience', 'Лет Опыта', 'Տարի Փորձ'),
  ('hero.travelers', 'Happy Travelers', 'Довольных Путешественников', 'Երջանիկ Ճանապարհորդներ'),
  ('hero.destinations', 'Destinations', 'Направлений', 'Ուղղություններ');

-- Insert services section translations
INSERT INTO translations (key, en, ru, hy) VALUES
  ('services.title1', 'Our Premium', 'Наши Премиум', 'Մեր Պրեմիում'),
  ('services.title2', 'Services', 'Услуги', 'Ծառայություններ'),
  ('services.subtitle', 'Personalized travel solutions crafted by our expert consultants. Every service backed by our commitment to excellence.', 'Персонализированные туристические решения от наших экспертных консультантов. Каждая услуга подкреплена нашей приверженностью к совершенству.', 'Անհատականացված ճամփորդական լուծումներ՝ մեր փորձագետ խորհրդատուների կողմից: Յուրաքանչյուր ծառայություն ապահովված է մեր հանձնառությամբ գերազանցության հանդեպ:'),
  ('services.airline.title', 'Airline Tickets Worldwide', 'Авиабилеты по Всему Миру', 'Ավիատոմսեր Համաշխարհով Մեկ'),
  ('services.airline.desc', 'Access to competitive fares across global carriers. Special expertise in routes to China, Turkey, and Europe with our personal consultation service.', 'Доступ к конкурентным тарифам глобальных авиакомпаний. Особая экспертиза в маршрутах в Китай, Турцию и Европу с нашей персональной консультационной службой.', 'Մուտք մրցակցային սակագներին գլոբալ ավիափոխադրողների միջոցով: Հատուկ փորձագիտություն Չինաստան, Թուրքիա և Եվրոպա ուղղություններով՝ մեր անձնական խորհրդատվական ծառայությամբ:'),
  ('services.visa.title', 'Visa Services', 'Визовые Услуги', 'Վիզայական Ծառայություններ'),
  ('services.visa.desc', 'Expert guidance through complex visa procedures. Our experienced consultants handle all documentation and application processes with precision.', 'Экспертное руководство по сложным визовым процедурам. Наши опытные консультанты обрабатывают всю документацию и процессы подачи заявлений с точностью.', 'Փորձագետի ուղեցույց բարդ վիզայի ընթացակարգերի միջոցով: Մեր փորձառու խորհրդատուները մշակում են բոլոր փաստաթղթերը և դիմումների ընթացակարգերը ճշգրտությամբ:'),
  ('services.hotel.title', 'Hotel Reservations', 'Бронирование Отелей', 'Հյուրանոցների Ամրագրում'),
  ('services.hotel.desc', 'Curated selection of premium accommodations worldwide. From boutique hotels to luxury resorts, we secure the best rates for our clients.', 'Курированный выбор премиальных размещений по всему миру. От бутик-отелей до роскошных курортов, мы обеспечиваем лучшие цены для наших клиентов.', 'Ընտրված պրեմիում կացարանների շտեմարան ամբողջ աշխարհում: Բուտիկ հյուրանոցներից մինչև շքեղ հանգստավայրեր՝ մենք ապահովում ենք լավագույն սակագները մեր հաճախորդների համար:'),
  ('services.tours.title', 'Tours & Experiences', 'Туры и Впечатления', 'Շրջագայություններ և Փորձառություններ'),
  ('services.tours.desc', 'Bespoke travel itineraries crafted by our travel experts. Immersive experiences that go beyond typical tourist attractions.', 'Индивидуальные туристические маршруты, созданные нашими экспертами по путешествиям. Захватывающие впечатления, выходящие за рамки типичных туристических достопримечательностей.', 'Անհատական ​​ճամփորդական երթուղիներ՝ մեր ճամփորդական փորձագետների կողմից: Խորը փորձառություններ, որոնք գնում են դուրս տիպիկ տուրիստական գրավչություններից:'),
  ('services.learn', 'Learn More', 'Узнать Больше', 'Իմանալ Ավելին');

-- Insert about section translations
INSERT INTO translations (key, en, ru, hy) VALUES
  ('about.badge', 'About LiaTravel', 'О LiaTravel', 'LiaTravel-ի Մասին'),
  ('about.title1', 'Your Trusted Partner in', 'Ваш Надежный Партнер в', 'Ձեր Վստահելի Գործընկերը'),
  ('about.title2', 'Premium Travel', 'Премиум Путешествиях', 'Պրեմիում Ճամփորդություններում'),
  ('about.p1', 'With over 8 years of distinguished service in the travel industry, LiaTravel has built a reputation as a trusted advisor for discerning travelers. We combine industry expertise with personalized attention to deliver exceptional travel experiences.', 'С более чем 8-летним выдающимся опытом работы в туристической индустрии, LiaTravel зарекомендовал себя как надежный консультант для требовательных путешественников. Мы сочетаем отраслевой опыт с персонализированным вниманием для создания исключительных туристических впечатлений.', 'Ավելի քան 8 տարվա առանձնահատուկ սպասարկումով ճամփորդական ինդուստրիայում՝ LiaTravel-ը կառուցել է վստահելի խորհրդատուի համբավ պահանջկոտ ճանապարհորդների համար: Մենք համատեղում ենք ինդուստրիայի փորձագիտությունը անհատականացված ուշադրության հետ՝ առաջարկելու բացառիկ ճամփորդական փորձառություններ:'),
  ('about.p2', 'Our team of professional consultants works directly with each client to understand their unique preferences and requirements. We leverage our global network of partnerships to secure competitive rates without compromising on quality or service.', 'Наша команда профессиональных консультантов работает напрямую с каждым клиентом, чтобы понять их уникальные предпочтения и требования. Мы используем нашу глобальную сеть партнерств для обеспечения конкурентоспособных цен без ущерба для качества или обслуживания.', 'Մեր պրոֆեսիոնալ խորհրդատուների թիմը անմիջականորեն աշխատում է յուրաքանչյուր հաճախորդի հետ՝ հասկանալու նրանց եզակի նախասիրությունները և պահանջները: Մենք օգտագործում ենք մեր գլոբալ գործընկերային ցանցը՝ ապահովելու մրցակցային գներ՝ առանց որակի կամ սպասարկման վրա կոմպրոմիսի:'),
  ('about.stat1', 'Thousands of Satisfied Travelers', 'Тысячи Довольных Путешественников', 'Հազարավոր Գոհ Ճանապարհորդներ'),
  ('about.stat1.desc', 'Our clients range from leisure seekers to corporate travelers', 'Наши клиенты варьируются от любителей отдыха до корпоративных путешественников', 'Մեր հաճախորդները ներառում են ինչպես հանգստի հետապնդողներ, այնպես էլ կորպորատիվ ճանապարհորդներ'),
  ('about.stat2', '50+ Destinations Covered', '50+ Направлений', '50+ Ուղղություններ'),
  ('about.stat2.desc', 'From iconic cities to hidden gems worldwide', 'От знаковых городов до скрытых жемчужин по всему миру', 'Խորհրդանշական քաղաքներից մինչև թաքնված գոհարներ ամբողջ աշխարհում'),
  ('about.stat3', '24/7 Travel Support', 'Поддержка 24/7', 'Աջակցություն 24/7'),
  ('about.stat3.desc', 'Always available when you need us most', 'Всегда доступны, когда мы вам больше всего нужны', 'Միշտ հասանելի՝ երբ ամենաշատն եք կարիք ունենում մեզ'),
  ('about.years.badge', 'Years of Excellence', 'Лет Совершенства', 'Տարի Գերազանցություն'),
  ('about.highlight1.title', '8+ Years Excellence', '8+ Лет Совершенства', '8+ Տարի Գերազանցություն'),
  ('about.highlight1.desc', 'Proven expertise in premium travel services and client satisfaction', 'Доказанная экспертиза в премиальных туристических услугах и удовлетворенности клиентов', 'Ապացուցված փորձագիտություն պրեմիում ճամփորդական ծառայություններում և հաճախորդների գոհունակությունում'),
  ('about.highlight2.title', 'Expert Consultants', 'Экспертные Консультанты', 'Փորձագետ Խորհրդատուներ'),
  ('about.highlight2.desc', 'Dedicated professionals providing personalized travel planning', 'Преданные профессионалы, обеспечивающие персонализированное планирование путешествий', 'Նվիրված մասնագետներ՝ տրամադրելով անհատականացված ճամփորդական պլանավորում'),
  ('about.highlight3.title', 'Global Partnerships', 'Глобальные Партнерства', 'Գլոբալ Գործընկերություններ'),
  ('about.highlight3.desc', 'Strategic alliances with premium providers worldwide', 'Стратегические союзы с премиальными поставщиками по всему миру', 'Ռազմավարական դաշինքներ պրեմիում մատակարարների հետ ամբողջ աշխարհում'),
  ('about.highlight4.title', 'Competitive Pricing', 'Конкурентные Цены', 'Մրցակցային Գներ'),
  ('about.highlight4.desc', 'Luxury experiences without the luxury price tag', 'Роскошные впечатления без роскошной цены', 'Շքեղ փորձառություններ՝ առանց շքեղ գնի պիտակի');

-- Insert contact section translations
INSERT INTO translations (key, en, ru, hy) VALUES
  ('contact.badge', 'Get in Touch', 'Свяжитесь с Нами', 'Կապվեք Մեզ Հետ'),
  ('contact.title1', 'Visit Our Office', 'Посетите Наш Офис', 'Այցելեք Մեր Գրասենյակ'),
  ('contact.title2', 'For Personalized Consultations', 'Для Персональных Консультаций', 'Անհատականացված Խորհրդատվությունների Համար'),
  ('contact.subtitle', 'Experience premium service firsthand. Our expert consultants are ready to craft your perfect journey.', 'Испытайте премиальное обслуживание из первых рук. Наши экспертные консультанты готовы создать ваше идеальное путешествие.', 'Զգացեք պրեմիում սպասարկումը ուղղակիորեն: Մեր փորձագետ խորհրդատուներն պատրաստ են ստեղծել ձեր կատարյալ ճամփորդությունը:'),
  ('contact.office.title', 'Our Office', 'Наш Офис', 'Մեր Գրասենյակ'),
  ('contact.contact.title', 'Contact Us', 'Свяжитесь с Нами', 'Կապվեք Մեզ Հետ'),
  ('contact.whatsapp', 'WhatsApp Available', 'WhatsApp Доступен', 'WhatsApp Հասանելի Է'),
  ('contact.hours.title', 'Working Hours', 'Часы Работы', 'Աշխատանքային Ժամեր'),
  ('contact.hours.weekdays', 'Monday - Friday: 9:00 AM - 6:00 PM', 'Понедельник - Пятница: 9:00 - 18:00', 'Երկուշաբթի - Ուրբաթ: 9:00 - 18:00'),
  ('contact.hours.saturday', 'Saturday: 10:00 AM - 4:00 PM', 'Суббота: 10:00 - 16:00', 'Շաբաթ: 10:00 - 16:00'),
  ('contact.hours.sunday', 'Sunday: Closed', 'Воскресенье: Закрыто', 'Կիրակի: Փակ'),
  ('contact.experience.title', 'Experience Premium Travel Planning', 'Испытайте Премиум Планирование Путешествий', 'Զգացեք Պրեմիում Ճամփորդության Պլանավորում'),
  ('contact.experience.desc', 'Step into our luxurious office and discover how we''ve been crafting unforgettable journeys for over 8 years. Our expert consultants will guide you through every detail of your dream vacation.', 'Зайдите в наш роскошный офис и узнайте, как мы создаем незабываемые путешествия уже более 8 лет. Наши экспертные консультанты проведут вас через каждую деталь вашего отпуска мечты.', 'Մտեք մեր շքեղ գրասենյակ և բացահայտեք, թե ինչպես ենք մենք ստեղծում անմոռանալի ճանապարհորդություններ ավելի քան 8 տարի: Մեր փորձագետ խորհրդատուները ձեզ կուղեկցեն ձեր երազանքի արձակուրդի յուրաքանչյուր մանրամասնության միջոցով:'),
  ('contact.feature1', 'One-on-one consultation with travel experts', 'Индивидуальная консультация с экспертами по путешествиям', 'Անձնական խորհրդատվություն ճամփորդական փորձագետների հետ'),
  ('contact.feature2', 'Exclusive deals not available online', 'Эксклюзивные предложения, недоступные онлайн', 'Բացառիկ առաջարկներ, որոնք հասանելի չեն առցանց'),
  ('contact.feature3', 'Personalized travel itineraries tailored to your preferences', 'Персонализированные туристические маршруты, адаптированные к вашим предпочтениям', 'Անհատականացված ​​ճամփորդական երթուղիներ՝ համապատասխանեցված ձեր նախասիրություններին'),
  ('contact.feature4', 'Premium service with competitive pricing', 'Премиальное обслуживание с конкурентными ценами', 'Պրեմիում սպասարկում մրցակցային գներով'),
  ('contact.btn.schedule', 'Schedule Your Consultation', 'Запланировать Консультацию', 'Պլանավորել Ձեր Խորհրդատվությունը');

-- Insert footer translations
INSERT INTO translations (key, en, ru, hy) VALUES
  ('footer.description', 'Premium travel experiences at competitive prices. Your trusted companion for global adventures.', 'Премиальные туристические впечатления по конкурентным ценам. Ваш надежный спутник для глобальных приключений.', 'Պրեմիում ճամփորդական փորձառություններ մրցակցային գներով: Ձեր վստահելի ուղեկիցը գլոբալ արկածների համար:'),
  ('footer.rights', '© 2025 LiaTravel. All rights reserved.', '© 2025 LiaTravel. Все права защищены.', '© 2025 LiaTravel. Բոլոր իրավունքները պաշտպանված են:'),
  ('footer.quick', 'Quick Links', 'Быстрые Ссылки', 'Արագ Հղումներ'),
  ('footer.crafted', 'Crafted for luxury travelers who demand excellence', 'Создано для роскошных путешественников, требующих совершенства', 'Ստեղծված շքեղ ճանապարհորդների համար, ովքեր պահանջում են գերազանցություն')
ON CONFLICT (key) DO NOTHING;