# Craft Beer Api

A way for me to practice creating an API.

The API will be able to return information about different craft beers and breweries.
The data is populated via my Untappd Scraper and will return beers based on criteria
such as ABV, syle, IBU, brewery etc.

Request usage:

All beers:
*url*/api/v1/beers

Specific beer by ID:
*url*/api/v1/beers/{ID}

Search all beers (name, brewery, style, description):
*url*/api/v1/search?q={query}
Limit by ABV range (or just select max or min)
*url*/api/v1/search?q={query}&maxABV=10&minABV=2


Random beer:
*url*/api/v1/random

TODO:
* Add search by IBU like above
* Add Search just by style

