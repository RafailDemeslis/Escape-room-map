# Escape Rooms Map

An interactive map application for discovering escape rooms.

## GitHub Pages Deployment

This site is automatically deployed to GitHub Pages using GitHub Actions.

### Deployment URL

Once the repository owner enables GitHub Pages, the site will be available at:
- **https://RafailDemeslis.github.io/Escape-room-map/**

### How it works

1. When changes are pushed to the `main` or `master` branch, the GitHub Actions workflow automatically triggers
2. The workflow builds and deploys the site to GitHub Pages
3. The site is publicly accessible at the URL above

### Manual Deployment

You can also trigger a manual deployment:
1. Go to the "Actions" tab in the GitHub repository
2. Select the "Deploy to GitHub Pages" workflow
3. Click "Run workflow"

### Enabling GitHub Pages

To enable GitHub Pages for this repository:
1. Go to repository Settings
2. Navigate to "Pages" section
3. Under "Build and deployment", select "GitHub Actions" as the source
4. The site will be deployed automatically

## Development

This is a static HTML application that uses:
- Leaflet.js for map functionality
- Marker clustering for better performance
- No build process required - just edit `index.html`

## License

Please see the repository for license information.
