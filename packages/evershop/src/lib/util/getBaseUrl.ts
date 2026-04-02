import { normalizeUrl } from '@evershop/evershop/bin/lib/url.js';
import { normalizePort } from '../../bin/lib/normalizePort.js';
import { getConfig } from './getConfig.js';

export function getBaseUrl(): string {
  const baseUrl = normalizeUrl();
  return baseUrl;
}
