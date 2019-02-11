FROM nginx
HEALTHCHECK --interval=30s --timeout=3s --start-period=1s CMD curl -f http://localhost/ || exit 1

