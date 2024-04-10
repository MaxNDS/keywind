import './index.css';

import Alpine from 'alpinejs';
import focus from '@alpinejs/focus';
import userCodeData from './user_code';

window.Alpine = Alpine;
Alpine.plugin(focus);
Alpine.data('userCodeData', userCodeData);
Alpine.start();
