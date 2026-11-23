# Telegram Emoji Library

A simple gallery of animated Telegram emoji in Lottie JSON format.

## Publish with GitHub Pages
1. Upload the contents of this ZIP to the root of your repository.
2. Go to **Settings → Pages**.
3. Set Source to **Deploy from a branch**, Branch to `main`, Folder to `/ (root)`, and Save.
4. Wait for Pages deployment.

Expected URL: https://sepahna.github.io/emojis/

## HTML usage
```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/lottie-web/5.12.2/lottie.min.js"></script>
<div id="emoji" style="width:64px;height:64px"></div>
<script>
lottie.loadAnimation({container:document.getElementById('emoji'),renderer:'svg',loop:true,autoplay:true,path:'./assets/Proxy_PJ2_140.json'});
</script>
```

Use the gallery to copy the asset path for a specific emoji.
