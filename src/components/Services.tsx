import { Plane, Globe, Hotel, MapPin } from 'lucide-react';
import { useLanguage } from '../contexts/LanguageContext';

export default function Services() {
  const { t } = useLanguage();

  const services = [
    {
      icon: Plane,
      titleKey: 'services.airline.title',
      descKey: 'services.airline.desc',
      destinations: ['China', 'Turkey', 'Europe', 'Asia Pacific', 'Americas'],
    },
    {
      icon: Globe,
      titleKey: 'services.visa.title',
      descKey: 'services.visa.desc',
      destinations: ['Schengen Visas', 'China Visas', 'Turkey Visas', 'UK & US Visas'],
    },
    {
      icon: Hotel,
      titleKey: 'services.hotel.title',
      descKey: 'services.hotel.desc',
      destinations: ['5-Star Hotels', 'Boutique Resorts', 'Heritage Properties', 'Beach Retreats'],
    },
    {
      icon: MapPin,
      titleKey: 'services.tours.title',
      descKey: 'services.tours.desc',
      destinations: ['Guided Tours', 'Adventure Travel', 'Cultural Experiences', 'Luxury Cruises'],
    },
  ];

  return (
    <section id="services" className="py-24 bg-slate-900/50">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center mb-20">
          <h2 className="text-4xl sm:text-5xl font-bold mb-6">
            <span className="text-slate-100">{t('services.title1')}</span>
            <br />
            <span className="text-gradient">{t('services.title2')}</span>
          </h2>
          <p className="text-lg text-slate-400 max-w-2xl mx-auto">
            {t('services.subtitle')}
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
          {services.map((service, index) => (
            <div
              key={index}
              className="group relative p-8 rounded-2xl bg-gradient-to-br from-slate-800/50 to-slate-900/30 border border-yellow-400/10 hover:border-yellow-400/30 transition-all duration-500 hover:luxury-shadow"
            >
              <div className="absolute inset-0 rounded-2xl bg-gradient-to-br from-yellow-400/5 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>

              <div className="relative z-10">
                <div className="w-16 h-16 rounded-xl bg-gradient-to-br from-yellow-400 to-amber-500 flex items-center justify-center mb-6 group-hover:shadow-lg group-hover:shadow-yellow-500/30 transition-all">
                  <service.icon className="w-8 h-8 text-slate-900" />
                </div>

                <h3 className="text-2xl font-bold text-slate-100 mb-3">{t(service.titleKey)}</h3>
                <p className="text-slate-300 mb-6 leading-relaxed">{t(service.descKey)}</p>

                <div className="space-y-3">
                  <p className="text-sm text-yellow-400/70 font-semibold">Featured Offerings:</p>
                  <div className="flex flex-wrap gap-2">
                    {service.destinations.map((dest, i) => (
                      <span
                        key={i}
                        className="px-4 py-2 rounded-full text-sm text-yellow-400/80 bg-yellow-400/10 border border-yellow-400/20 group-hover:border-yellow-400/40 transition-all"
                      >
                        {dest}
                      </span>
                    ))}
                  </div>
                </div>

                <button className="mt-6 text-yellow-400 hover:text-yellow-300 font-semibold text-sm flex items-center space-x-2 group/btn">
                  <span>{t('services.learn')}</span>
                  <span className="group-hover/btn:translate-x-1 transition-transform">→</span>
                </button>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
