# Default: serve locally with correct base URL
serve-local:
    zola serve -i 0.0.0.0 --base-url /

# Build the site
build:
    zola build

# Serve on localhost only
serve:
    zola serve
