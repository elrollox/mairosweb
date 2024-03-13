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
"index.html": "3452d72f9ad784385390f2fa927b2ffa",
"/": "3452d72f9ad784385390f2fa927b2ffa",
"main.dart.js": "f5845952321f00ae69f538d6eab8dcbc",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"favicon.png": "cc14197857893227cbe6b17e2d6ec2a1",
"icons/Icon-192.png": "0f768d38d2e39f58b8935e3e9010860f",
"icons/Icon-maskable-192.png": "0f768d38d2e39f58b8935e3e9010860f",
"icons/Icon-maskable-512.png": "9ca8b69923d6383938688ca1ae992e78",
"icons/Icon-512.png": "9ca8b69923d6383938688ca1ae992e78",
"manifest.json": "6a10d44b484281a861574ffd04cb535c",
"assets/AssetManifest.json": "a1fba47029be1636c77cb3f0e49e7468",
"assets/NOTICES": "6892d8d8291fea3d194319a67f49f533",
"assets/FontManifest.json": "5b2b0d1ffd0f0a940ed004d19d0ffa58",
"assets/AssetManifest.bin.json": "ac31ab52641db2007e4531de0eebceb8",
"assets/flutter_launcher_icons.yaml": "ebb403a18ef4f356cd7c0e49d7a9f472",
"assets/packages/flutter_map/lib/assets/flutter_map_logo.png": "208d63cc917af9713fc9572bd5c09362",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/lib/app_drawer.dart": "f971adfc794018456fa272472ebc0d72",
"assets/lib/components/get_productos_adhesivos.dart": "e757ff7d7f9a0eb05390490d658f6b10",
"assets/lib/components/caja_decorada.dart": "bca2cb85a3e7e588e67bd1a3ae46cf98",
"assets/lib/components/get_productos_artefactos.dart": "8bd8b0326ff67916c9d569057cd00b81",
"assets/lib/components/examplote3.dart": "d74a5e865bb0ca51621cdf2a73b71943",
"assets/lib/components/categorias_tab_bar.dart": "b8519473c4ce1466a47dd3774bfa8b7d",
"assets/lib/components/examplote.dart": "cb8ceff92b3ec1e5a1a8ba22c804544a",
"assets/lib/components/get_productos_acero.dart": "a8f1388a8a29d85f7696472300fb1536",
"assets/lib/components/examplote2.dart": "be3abc26c068936c749f0bbdaf11824b",
"assets/lib/components/image_card_content.dart": "61c06dd30cf733dbbb5535619d3b6143",
"assets/lib/components/interactive_background.dart": "e0b5d280c7aebc5c9a4f2fcaa984bef5",
"assets/lib/components/fill_image_card.dart": "1279ab4b56b7fd67a5a42d72c0d8b3d4",
"assets/lib/components/productos_lista.dart": "1e90a92cf1c5fd626b28bc48744bcdf7",
"assets/lib/assets/images/design.png": "1267fc2a30331e8c620c16dd98cffaca",
"assets/lib/assets/images/primeras/acero.png": "eea6631a5c272265a45e852ae16c6957",
"assets/lib/assets/images/primeras/planta-de-energia.png": "0d7d34bf164a70aa2495e70e0aeb0cce",
"assets/lib/assets/images/primeras/icon.png": "52d39e2388c04ec3e3ab83991b9ab4cb",
"assets/lib/assets/images/primeras/electricidad.png": "ddfdf5acdf52cdbdd08c04aab6dc1ab4",
"assets/lib/assets/images/primeras/ladrillos.png": "bdd7e07495f6f8ded82885225cc23702",
"assets/lib/assets/images/primeras/mezcladora.png": "bd1b245d2d5db2b1044d48b64a56cbce",
"assets/lib/assets/images/primeras/herramienta.png": "415626858badadf1d5772743ded5b5e0",
"assets/lib/assets/images/primeras/ligera.png": "802499bfa046255fb2ca6b3bbc52ac2b",
"assets/lib/assets/images/primeras/mairosicon.png": "ca6fedf15138b125fe6d97f104f1bbe5",
"assets/lib/assets/images/primeras/troncos.png": "6bf4c3f1bc0ee19deb3c34170f1c8600",
"assets/lib/assets/images/primeras/pegamento.png": "15622723617b5ba97a5ec7571b067a43",
"assets/lib/assets/images/primeras/img.png": "57e562a7a84542f6d74e05a11233869a",
"assets/lib/assets/images/primeras/tabique.png": "859b1a00950eff02955523603b5a6063",
"assets/lib/assets/images/primeras/block.png": "a0409103932c7b541df80066bec06c81",
"assets/lib/assets/images/primeras/splash.png": "52d39e2388c04ec3e3ab83991b9ab4cb",
"assets/lib/assets/images/primeras/ligeros.png": "6c72488cbd3f7bd0b7b630248eda5fd0",
"assets/lib/assets/images/primeras/prefabricado.png": "a9ff03c9eb27bbcfca674c32de2059e3",
"assets/lib/assets/images/primeras/arena.png": "79808699fdac75175aca71597f8ff537",
"assets/lib/assets/images/primeras/camionsito.png": "34afebbd89da4c256e3dd1185e7da44d",
"assets/lib/assets/images/primeras/POSTRE2.jpg": "989b0f98e9cdd9d861207ec4b8887ee5",
"assets/lib/assets/images/primeras/soldador.png": "bdcddd899687419fd92d37eb68eb99ac",
"assets/lib/assets/images/primeras/ladrillo.png": "e28c56792b49a65d74357a91ae90d1a6",
"assets/lib/assets/images/primeras/6396.jpg": "e314f54858957380333363229c6a4c34",
"assets/lib/assets/images/primeras/plomeria.png": "fdfb36480bfc62dbf3a0ea040ddca157",
"assets/lib/assets/images/planos%2520ejecutivos.png": "541b9116d036ed73df19fd847b5a788f",
"assets/lib/assets/images/icono%2520personas.png": "a605aadcc2bf38bb8cd4c0487e6f3921",
"assets/lib/assets/images/icono%2520acero.png": "d4987de4f1811368dd9db628702a32d6",
"assets/lib/assets/images/icono%2520oficios.png": "cf7270591a35add69d681135a055eedd",
"assets/lib/assets/images/materiales%2520carlin.png": "8c439663cf755a77b0bd627ecfce612f",
"assets/lib/assets/images/cemento.png": "01514d742da7472b5fc7610e25d2b35c",
"assets/lib/assets/images/icono%2520remodelacion.png": "755ad8552f16e753feffb4d6667af4f9",
"assets/lib/assets/images/materiales_herramientas.png": "2e94885a53fd230b2f816a2febd16272",
"assets/lib/assets/images/icono%2520ARQUITECTURA%2520Y%2520CONSTRUCCI%25C3%2593N.png": "1e6bb3a0a09d891ad2f8ee04d31cafe6",
"assets/lib/assets/images/icono%2520carpinteria.png": "a59f38063179ebd99b6f94db163803a2",
"assets/lib/assets/images/icono%2520PINTURA.png": "b84cab3b3174b45c18a40adffb0bc85e",
"assets/lib/assets/images/icono%2520maquina%2520ligera.png": "b07996934deb44a2576aec0e53135eb3",
"assets/lib/assets/images/icono%2520tabiques.png": "a5ad6e0fac299150eeae29c798e2fff2",
"assets/lib/assets/images/icono%2520tramites.png": "9239382d5cc526e8dd0d687fae5b6a2f",
"assets/lib/assets/images/icono%2520gestion%2520de%2520obra.png": "e05c6180c924a13675e4ae8e00dd190a",
"assets/lib/assets/images/icono%2520topografia.png": "f8113b598139a91d59af24026b1c67f7",
"assets/lib/assets/images/trejo%2520materiales.png": "b91a23c684d4e80731082086c498cee2",
"assets/lib/assets/images/Materiales%2520zubia.png": "61f40ddb973d8cf50168131606c15149",
"assets/lib/assets/images/arquitectonico.png": "1267fc2a30331e8c620c16dd98cffaca",
"assets/lib/assets/images/icono%2520electricos.png": "8f4c461336f8f4a52cd6c25c8571813b",
"assets/lib/assets/images/celular.png": "26db3e695a616fceb9034aa74993a110",
"assets/lib/assets/images/madera.png": "99e79c48cbc17590670a3488511dda84",
"assets/lib/assets/images/plomeria.png": "60c437ab331b648edd4570973ff8c0dc",
"assets/lib/assets/images/icono%2520estudios%2520t%25C3%25A9cnicos.png": "8559fbc6cc20b240ba34bf72a77d82bb",
"assets/lib/assets/images/Group%25208.png": "88080375009111648b58a73bf9ddf140",
"assets/lib/assets/images/port%2520blog%25202.png": "5496f7ee14c8da8ba19bd6fab258f7db",
"assets/lib/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/lib/assets/fonts/ProductSans-Regular.ttf": "ad656da8058c1cdfd68f1e95e574dc0e",
"assets/lib/pages/inicio.dart": "b4c687d9dcc9e873630cf1e3cbc748c6",
"assets/lib/pages/otra_page.dart": "98e946bf4dd84bc9de1d914676e7ebfa",
"assets/lib/pages/productos_page.dart": "57749bde49f6531344292c3709acc9b2",
"assets/lib/pages/Servicios/servicios_residenciales.dart": "631690431089ae4928ac518f9dbc9193",
"assets/lib/pages/Servicios/servicios.dart": "5920541f39513b4682d98561b0f5a002",
"assets/lib/pages/materiales.dart": "cb6240d714495435a5c663b531971e4a",
"assets/lib/pages/calendario.dart": "69ad53b772f5b0cb21c145e9d74d8a5e",
"assets/AssetManifest.bin": "743af54fd9d0c947420cb1a0ef952797",
"assets/flutter_native_splash.yaml": "c621719c0a520ca397fa80f7d70877a2",
"assets/fonts/MaterialIcons-Regular.otf": "84db2eb8b130ea49d433a347d62f31c4",
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
