import { Award, Users, Globe, Zap } from 'lucide-react';
import { useLanguage } from '../contexts/LanguageContext';

export default function About() {
  const { t } = useLanguage();

  const highlights = [
    {
      icon: Award,
      titleKey: 'about.highlight1.title',
      descKey: 'about.highlight1.desc',
    },
    {
      icon: Users,
      titleKey: 'about.highlight2.title',
      descKey: 'about.highlight2.desc',
    },
    {
      icon: Globe,
      titleKey: 'about.highlight3.title',
      descKey: 'about.highlight3.desc',
    },
    {
      icon: Zap,
      titleKey: 'about.highlight4.title',
      descKey: 'about.highlight4.desc',
    },
  ];

  return (
    <section id="about" className="py-24">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-16 items-center mb-20">
          <div>
            <div className="inline-block mb-6">
              <div className="px-4 py-2 rounded-full border border-yellow-400/30 bg-yellow-400/5 backdrop-blur">
                <span className="text-yellow-400 text-sm font-semibold">{t('about.badge')}</span>
              </div>
            </div>

            <h2 className="text-4xl sm:text-5xl font-bold mb-6 leading-tight">
              <span className="text-slate-100">{t('about.title1')}</span>
              <br />
              <span className="text-gradient">{t('about.title2')}</span>
            </h2>

            <p className="text-lg text-slate-400 mb-6 leading-relaxed">
              {t('about.p1')}
            </p>

            <p className="text-lg text-slate-400 mb-8 leading-relaxed">
              {t('about.p2')}
            </p>

            <div className="space-y-4">
              <div className="flex items-start space-x-4">
                <div className="w-6 h-6 rounded-full bg-gradient-to-br from-yellow-400 to-amber-500 flex-shrink-0 mt-1"></div>
                <div>
                  <p className="text-slate-300 font-semibold">{t('about.stat1')}</p>
                  <p className="text-slate-400 text-sm">{t('about.stat1.desc')}</p>
                </div>
              </div>
              <div className="flex items-start space-x-4">
                <div className="w-6 h-6 rounded-full bg-gradient-to-br from-yellow-400 to-amber-500 flex-shrink-0 mt-1"></div>
                <div>
                  <p className="text-slate-300 font-semibold">{t('about.stat2')}</p>
                  <p className="text-slate-400 text-sm">{t('about.stat2.desc')}</p>
                </div>
              </div>
              <div className="flex items-start space-x-4">
                <div className="w-6 h-6 rounded-full bg-gradient-to-br from-yellow-400 to-amber-500 flex-shrink-0 mt-1"></div>
                <div>
                  <p className="text-slate-300 font-semibold">{t('about.stat3')}</p>
                  <p className="text-slate-400 text-sm">{t('about.stat3.desc')}</p>
                </div>
              </div>
            </div>
          </div>

          <div
            className="relative h-96 rounded-2xl overflow-hidden border border-yellow-400/20"
          >
            <div
              className="absolute inset-0 z-0"
              style={{
                backgroundImage: `url('https://images.pexels.com/photos/3714904/pexels-photo-3714904.jpeg?auto=compress&cs=tinysrgb&w=1600')`,
                backgroundSize: 'cover',
                backgroundPosition: 'center',
              }}
            >
              <div className="absolute inset-0 bg-gradient-to-br from-slate-950/20 to-slate-950/50"></div>
            </div>
            <div className="absolute inset-0 flex items-center justify-center">
              <div className="text-center">
                <div className="text-6xl font-bold text-yellow-400 mb-2">8+</div>
                <p className="text-slate-300 font-semibold">{t('about.years.badge')}</p>
              </div>
            </div>
          </div>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          {highlights.map((item, index) => (
            <div
              key={index}
              className="p-6 rounded-2xl bg-gradient-to-br from-slate-800/40 to-slate-900/20 border border-yellow-400/10 hover:border-yellow-400/30 transition-all duration-300"
            >
              <div className="w-12 h-12 rounded-lg bg-gradient-to-br from-yellow-400 to-amber-500 flex items-center justify-center mb-4">
                <item.icon className="w-6 h-6 text-slate-900" />
              </div>
              <h3 className="text-lg font-bold text-slate-100 mb-2">{t(item.titleKey)}</h3>
              <p className="text-slate-400 text-sm">{t(item.descKey)}</p>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
