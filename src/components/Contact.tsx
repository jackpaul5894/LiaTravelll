import { MapPin, Phone, Mail, Clock, MessageSquare } from 'lucide-react';
import { useLanguage } from '../contexts/LanguageContext';

export default function Contact() {
  const { t } = useLanguage();
  return (
    <section id="contact" className="py-24 bg-gradient-to-br from-slate-900/50 to-slate-950 border-y border-yellow-400/10">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center mb-16">
          <div className="inline-block mb-6">
            <div className="px-4 py-2 rounded-full border border-yellow-400/30 bg-yellow-400/5 backdrop-blur">
              <span className="text-yellow-400 text-sm font-semibold">{t('contact.badge')}</span>
            </div>
          </div>

          <h2 className="text-4xl sm:text-5xl font-bold mb-6">
            <span className="text-slate-100">{t('contact.title1')}</span>
            <br />
            <span className="text-gradient">{t('contact.title2')}</span>
          </h2>

          <p className="text-lg text-slate-400 max-w-2xl mx-auto">
            {t('contact.subtitle')}
          </p>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8 mb-16">
          <div className="group p-8 rounded-2xl bg-gradient-to-br from-slate-800/50 to-slate-900/30 border border-yellow-400/10 hover:border-yellow-400/30 transition-all duration-500 text-center">
            <div className="w-16 h-16 rounded-xl bg-gradient-to-br from-yellow-400 to-amber-500 flex items-center justify-center mb-6 mx-auto group-hover:shadow-lg group-hover:shadow-yellow-500/30 transition-all">
              <MapPin className="w-8 h-8 text-slate-900" />
            </div>
            <h3 className="text-xl font-bold text-slate-100 mb-2">{t('contact.office.title')}</h3>
            <p className="text-slate-400">
              123 Travel Boulevard<br />
              Premium Plaza, Suite 450<br />
              International City
            </p>
          </div>

          <div className="group p-8 rounded-2xl bg-gradient-to-br from-slate-800/50 to-slate-900/30 border border-yellow-400/10 hover:border-yellow-400/30 transition-all duration-500 text-center">
            <div className="w-16 h-16 rounded-xl bg-gradient-to-br from-yellow-400 to-amber-500 flex items-center justify-center mb-6 mx-auto group-hover:shadow-lg group-hover:shadow-yellow-500/30 transition-all">
              <Phone className="w-8 h-8 text-slate-900" />
            </div>
            <h3 className="text-xl font-bold text-slate-100 mb-2">{t('contact.contact.title')}</h3>
            <p className="text-slate-400 mb-4">
              <a href="tel:+1234567890" className="text-yellow-400 hover:text-yellow-300 transition-colors">
                +1 (234) 567-8900
              </a>
            </p>
            <p className="text-slate-400">
              <a href="https://wa.me/1234567890" className="text-yellow-400 hover:text-yellow-300 transition-colors flex items-center justify-center space-x-2">
                <MessageSquare className="w-4 h-4" />
                <span>{t('contact.whatsapp')}</span>
              </a>
            </p>
          </div>

          <div className="group p-8 rounded-2xl bg-gradient-to-br from-slate-800/50 to-slate-900/30 border border-yellow-400/10 hover:border-yellow-400/30 transition-all duration-500 text-center">
            <div className="w-16 h-16 rounded-xl bg-gradient-to-br from-yellow-400 to-amber-500 flex items-center justify-center mb-6 mx-auto group-hover:shadow-lg group-hover:shadow-yellow-500/30 transition-all">
              <Clock className="w-8 h-8 text-slate-900" />
            </div>
            <h3 className="text-xl font-bold text-slate-100 mb-2">{t('contact.hours.title')}</h3>
            <p className="text-slate-400">
              {t('contact.hours.weekdays')}<br />
              {t('contact.hours.saturday')}<br />
              {t('contact.hours.sunday')}
            </p>
          </div>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-2 gap-8">
          <div className="relative h-96 rounded-2xl overflow-hidden border border-yellow-400/20">
            <div
              className="absolute inset-0"
              style={{
                backgroundImage: `url('https://images.pexels.com/photos/2398220/pexels-photo-2398220.jpeg?auto=compress&cs=tinysrgb&w=1600')`,
                backgroundSize: 'cover',
                backgroundPosition: 'center',
              }}
            >
              <div className="absolute inset-0 bg-gradient-to-br from-slate-950/30 to-slate-950/60"></div>
            </div>
          </div>

          <div className="p-8 rounded-2xl bg-gradient-to-br from-slate-800/40 to-slate-900/20 border border-yellow-400/10 flex flex-col justify-center">
            <h3 className="text-3xl font-bold text-slate-100 mb-4">{t('contact.experience.title')}</h3>

            <p className="text-lg text-slate-400 mb-6 leading-relaxed">
              {t('contact.experience.desc')}
            </p>

            <div className="space-y-4 mb-8">
              <div className="flex items-start space-x-4">
                <div className="w-2 h-2 rounded-full bg-gradient-to-br from-yellow-400 to-amber-500 mt-2 flex-shrink-0"></div>
                <p className="text-slate-300">{t('contact.feature1')}</p>
              </div>
              <div className="flex items-start space-x-4">
                <div className="w-2 h-2 rounded-full bg-gradient-to-br from-yellow-400 to-amber-500 mt-2 flex-shrink-0"></div>
                <p className="text-slate-300">{t('contact.feature2')}</p>
              </div>
              <div className="flex items-start space-x-4">
                <div className="w-2 h-2 rounded-full bg-gradient-to-br from-yellow-400 to-amber-500 mt-2 flex-shrink-0"></div>
                <p className="text-slate-300">{t('contact.feature3')}</p>
              </div>
              <div className="flex items-start space-x-4">
                <div className="w-2 h-2 rounded-full bg-gradient-to-br from-yellow-400 to-amber-500 mt-2 flex-shrink-0"></div>
                <p className="text-slate-300">{t('contact.feature4')}</p>
              </div>
            </div>

            <button className="luxury-button-primary w-full">
              {t('contact.btn.schedule')}
            </button>
          </div>
        </div>
      </div>
    </section>
  );
}
