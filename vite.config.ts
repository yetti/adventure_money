import vue from '@vitejs/plugin-vue'
import { defineConfig } from 'vite'
import RubyPlugin from 'vite-plugin-ruby'
import { resolve } from 'path';

export default defineConfig({
  plugins: [
    vue(),
    RubyPlugin()
  ],
  resolve: {
    alias: {
      '@': resolve(__dirname, 'app/frontend')
    }
  }
})
