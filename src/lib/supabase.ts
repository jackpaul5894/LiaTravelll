import { createClient } from '@supabase/supabase-js';

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

export const supabase = createClient(supabaseUrl, supabaseAnonKey);

export interface Translation {
  id: string;
  key: string;
  en: string;
  ru: string;
  hy: string;
  created_at: string;
  updated_at: string;
}
