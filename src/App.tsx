import Hero from './components/Hero';
import Services from './components/Services';
import About from './components/About';
import Contact from './components/Contact';
import Footer from './components/Footer';
import Navbar from './components/Navbar';
import { LanguageProvider } from './contexts/LanguageContext';

function App() {
  return (
    <LanguageProvider>
      <div className="min-h-screen bg-slate-950 text-slate-100">
        <Navbar />

        <main>
          <Hero />
          <Services />
          <About />
          <Contact />
          <Footer />
        </main>
      </div>
    </LanguageProvider>
  );
}

export default App;
