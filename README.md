# Telegram Animated Emoji Library

A searchable browser gallery for 17 Telegram Lottie JSON animations.

## GitHub Pages

Open **Settings → Pages**, choose **Deploy from a branch**, select `main` and `/ (root)`, then save. The gallery URL will be:

https://sepahna.github.io/emojis/

## HTML usage

```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/lottie-web/5.12.2/lottie.min.js"></script>
<div id="emoji" style="width:64px;height:64px"></div>
<script>
lottie.loadAnimation({
  container: document.getElementById('emoji'),
  renderer: 'svg',
  loop: true,
  autoplay: true,
  path: './assets/Proxy_PJ2_140.json'
});
</script>
```

The gallery includes search, animation previews, direct JSON links and copyable asset paths.

## Rights

Check permission before redistributing third-party logos, brand marks or artwork.