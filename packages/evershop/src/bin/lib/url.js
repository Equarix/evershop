import { getConfig } from '@evershop/evershop/lib/util/getConfig.js';

export function normalizeUrl() {
  const url =
    process.env.TARGET_URL || `http://localhost:${process.env.PORT || 3000}`;

  const urlConfig = getConfig('shop.url', url);

  return urlConfig.replace(/\/+$/, ''); // Remove trailing slashes
}
