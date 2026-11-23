# Telegram Animated Emoji Library

A browser-based gallery for Lottie JSON animations extracted from Telegram custom emoji packs.

## Online demo

Enable GitHub Pages in **Settings → Pages** and choose `main` / root.

## Files

See `assets/` for the source Lottie JSON animations.

## Usage

```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/lottie-web/5.12.2/lottie.min.js"></script>
<div id="emoji" style="width:96px;height:96px"></div>
<script>
lottie.loadAnimation({
  container: document.getElementById('emoji'),
  renderer: 'svg', loop: true, autoplay: true,
  path: './assets/Proxy_PJ2_140.json'
});
</script>
```

Use the included `index.html` gallery to preview, search, copy file paths and snippets.

## Attribution and rights

The animation files are supplied by the repository owner. Ensure you have permission to redistribute any third-party logos or artwork.