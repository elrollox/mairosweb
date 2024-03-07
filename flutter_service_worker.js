'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "189a0fff64bde6e076ebe90f3456a6bb",
"splash/img/light-2x.png": "9ca8b69923d6383938688ca1ae992e78",
"splash/img/dark-4x.png": "b049c89c1da5e2117c41282253d58a37",
"splash/img/light-3x.png": "5b81733daea12abbecf6101edc1ce30b",
"splash/img/dark-3x.png": "5b81733daea12abbecf6101edc1ce30b",
"splash/img/light-4x.png": "b049c89c1da5e2117c41282253d58a37",
"splash/img/dark-2x.png": "9ca8b69923d6383938688ca1ae992e78",
"splash/img/dark-1x.png": "cc19b3bc8b20903f85edc1319e3645c4",
"splash/img/light-1x.png": "cc19b3bc8b20903f85edc1319e3645c4",
"index.html": "7fd9bbf161e38b498514b6ff37ab2d24",
"/": "7fd9bbf161e38b498514b6ff37ab2d24",
"main.dart.js": "00ea2d77955c109d2b8a2e9590adefc5",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"favicon.png": "cc14197857893227cbe6b17e2d6ec2a1",
"icons/Icon-192.png": "0f768d38d2e39f58b8935e3e9010860f",
"icons/Icon-maskable-192.png": "0f768d38d2e39f58b8935e3e9010860f",
"icons/Icon-maskable-512.png": "9ca8b69923d6383938688ca1ae992e78",
"icons/Icon-512.png": "9ca8b69923d6383938688ca1ae992e78",
"manifest.json": "b9e17055ec011459417cbb331007e251",
"assets/AssetManifest.json": "d2b5b0f5c48c9f34483dddb03bd6d406",
"assets/NOTICES": "9f00c0f4a7fcc85c78f1bf3205cce127",
"assets/FontManifest.json": "951c316f84a757c082de1835fcd705de",
"assets/AssetManifest.bin.json": "63b889b2205d49b2caede51efb5be709",
"assets/flutter_launcher_icons.yaml": "9e04a501a5b247eac62ebe4ef776ef2c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/lib/examplote.dart": "cb8ceff92b3ec1e5a1a8ba22c804544a",
"assets/lib/components/get_productos.dart": "567e3ee230a593ce945b87e4186ccd81",
"assets/lib/components/categorias_tab_bar.dart": "5b661cd1dd3c4f091a5bf9c5f136b092",
"assets/lib/components/productos_lista.dart": "8cf74f10ca2ba754412159d3428852f9",
"assets/lib/pages/servicios_residenciales.dart": "8e9a558af69e4e1502017dc292becb79",
"assets/AssetManifest.bin": "e6bb79a4f88a7ef116fcd5a091d85577",
"assets/flutter_native_splash.yaml": "1488fd28844255d70161e471512ae0bd",
"assets/fonts/MaterialIcons-Regular.otf": "a144f151851da32c6948e60757e19061",
"assets/assets/images/acero.png": "eea6631a5c272265a45e852ae16c6957",
"assets/assets/images/planta-de-energia.png": "0d7d34bf164a70aa2495e70e0aeb0cce",
"assets/assets/images/icon.png": "52d39e2388c04ec3e3ab83991b9ab4cb",
"assets/assets/images/electricidad.png": "ddfdf5acdf52cdbdd08c04aab6dc1ab4",
"assets/assets/images/ladrillos.png": "bdd7e07495f6f8ded82885225cc23702",
"assets/assets/images/cemento.png": "092c878dfe0986e1d1325393614ff311",
"assets/assets/images/mezcladora.png": "bd1b245d2d5db2b1044d48b64a56cbce",
"assets/assets/images/herramienta.png": "415626858badadf1d5772743ded5b5e0",
"assets/assets/images/ligera.png": "802499bfa046255fb2ca6b3bbc52ac2b",
"assets/assets/images/mairosicon.png": "ca6fedf15138b125fe6d97f104f1bbe5",
"assets/assets/images/troncos.png": "6bf4c3f1bc0ee19deb3c34170f1c8600",
"assets/assets/images/pegamento.png": "15622723617b5ba97a5ec7571b067a43",
"assets/assets/images/tabique.png": "859b1a00950eff02955523603b5a6063",
"assets/assets/images/block.png": "a0409103932c7b541df80066bec06c81",
"assets/assets/images/splash.png": "52d39e2388c04ec3e3ab83991b9ab4cb",
"assets/assets/images/ligeros.png": "6c72488cbd3f7bd0b7b630248eda5fd0",
"assets/assets/images/prefabricado.png": "a9ff03c9eb27bbcfca674c32de2059e3",
"assets/assets/images/arena.png": "79808699fdac75175aca71597f8ff537",
"assets/assets/images/camionsito.png": "34afebbd89da4c256e3dd1185e7da44d",
"assets/assets/images/POSTRE2.jpg": "989b0f98e9cdd9d861207ec4b8887ee5",
"assets/assets/images/soldador.png": "bdcddd899687419fd92d37eb68eb99ac",
"assets/assets/images/ladrillo.png": "e28c56792b49a65d74357a91ae90d1a6",
"assets/assets/images/6396.jpg": "e314f54858957380333363229c6a4c34",
"assets/assets/images/plomeria.png": "fdfb36480bfc62dbf3a0ea040ddca157",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/ProductSans-Regular.ttf": "ad656da8058c1cdfd68f1e95e574dc0e",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
