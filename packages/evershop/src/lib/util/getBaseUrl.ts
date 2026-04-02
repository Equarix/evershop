import { normalizeUrl } from '../../bin/lib/url.js';

export function getBaseUrl(): string {
  const baseUrl = normalizeUrl();
  return baseUrl;
}
