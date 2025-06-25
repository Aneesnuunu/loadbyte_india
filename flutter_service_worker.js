'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "c6412a7644abb909337596dc39e96eee",
".git/config": "1596ce34f7a9601b19f7823a28e6b4f0",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "e45259516e075a99f288ef060e75ed70",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "a39398c78b352a9fe66f4f38cb5d34ce",
".git/logs/refs/heads/gh-pages": "9af0ff28bb56c16974a70e9148ce65c0",
".git/logs/refs/remotes/origin/gh-pages": "9cec77fd7cb9e7ffa70634bd9383ed64",
".git/objects/13/8404ed2b21dd35b4cd0885d577f810de22e403": "3051b9a87adf0ae7911562c0b036aa13",
".git/objects/15/ff6c393d688f676d2a534a1c9fc9bd0d463d5c": "c59b5497b8e052439ca03dbf75f60c65",
".git/objects/1a/d7683b343914430a62157ebf451b9b2aa95cac": "94fdc36a022769ae6a8c6c98e87b3452",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/27/aa2ceb44c11100cb4826a7ed6c06d7ecb0ffcc": "7311ed02924fc38341fc743a7fb1d220",
".git/objects/27/c77250df0d65e622fe284d248a335c810f0605": "a55501367cd634e1350fde5f4d89069b",
".git/objects/2b/4ac55a20f03c523acc8b85c5238c227d5528c7": "c4e59c829098f87c384aa679b5f89030",
".git/objects/30/ff379b9944b7f60d641a622885b2b0371abec5": "e0cfd3153be95318902d6e18b97eb0a2",
".git/objects/34/baf2f58d56e529fe2da571f6b6ce8baf87ba03": "465d74715361c3e5f595c1bb66ebf104",
".git/objects/4a/5edb805307e1b698a562b687821d0f6d347215": "f21b945eb97ff51c4775dba4b317ed06",
".git/objects/4c/51fb2d35630595c50f37c2bf5e1ceaf14c1a1e": "a20985c22880b353a0e347c2c6382997",
".git/objects/53/18a6956a86af56edbf5d2c8fdd654bcc943e88": "a686c83ba0910f09872b90fd86a98a8f",
".git/objects/53/3d2508cc1abb665366c7c8368963561d8c24e0": "4592c949830452e9c2bb87f305940304",
".git/objects/54/15a329062f8ed61e4432b747b10243b8c9f9d2": "a481aaa6f1b3726d24bb6e148e2e64c8",
".git/objects/5e/bf37944a56f2b5e479e3858392c6e9030da2da": "d874f5ce1eb6512c7b77ebd17b676f00",
".git/objects/60/24616990acc46aa2687acd7ab294ce95a8e9ff": "14165f219f5eb25866d72579954050b2",
".git/objects/66/7d3a17e571ea733aaf28c28815940847b2db05": "d08eb2a04b4987d54c737772508eef6a",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/6c/d8792b535eb82d3df9b894b3f4fdcbe739db4b": "cc8013b69415e505e46ff801dbfc6f59",
".git/objects/70/a234a3df0f8c93b4c4742536b997bf04980585": "d95736cd43d2676a49e58b0ee61c1fb9",
".git/objects/73/c63bcf89a317ff882ba74ecb132b01c374a66f": "6ae390f0843274091d1e2838d9399c51",
".git/objects/75/452ac84f3f04b101d95c41bcf5a4bf6af0a74b": "3c260e5718c1ef35945720dfdad54657",
".git/objects/77/0b1a18f8e7d6fe4b210f7ac54c25fb27806743": "5153a6a818975f8dfc21601c43dda910",
".git/objects/7a/41d560db156219588c1a4aee13f5a0365a81a1": "0e0f96bd308c5ee4f53e459fd8dfc0a5",
".git/objects/84/0e8380bdc4d65bcc571e9a49c3ced4aed00728": "1515b5eac3324ef254fd06ed8890acbd",
".git/objects/88/81d67d2e8299bd7e627d8f72157b6a4d5e2698": "107513f0f63901fa755ecc81eadc12d4",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8e/3c7d6bbbef6e7cefcdd4df877e7ed0ee4af46e": "025a3d8b84f839de674cd3567fdb7b1b",
".git/objects/90/0f2e8b28e6845309d6ff30cd6ec6a9e78af37e": "06a874788bc11b4334f546ed8bd14ef3",
".git/objects/91/ad13f989fde37af87aad85b13c42e33ab67da3": "de40c635cce59a15421661d8c4848848",
".git/objects/93/88a4105beb969699cc8d4d345612616edba353": "2b15e4dbf2d95bfe47572d53121114af",
".git/objects/93/e7cf6fda35eac03c871dee1ef931ca54100bce": "bfd72681639938d19f8f0c339cb1484d",
".git/objects/96/0a7276d3727ed6ec22ed34d151d4285eb39032": "81e7289e13568618fa0442c68c428bd6",
".git/objects/9b/d3accc7e6a1485f4b1ddfbeeaae04e67e121d8": "784f8e1966649133f308f05f2d98214f",
".git/objects/a8/1b4f56eefa30b0b4f74ae15536b6217352d596": "7e413580e8408eba5dc9bce32565690b",
".git/objects/b1/9001fb01bf64c353b8bc4ed698a6079153bc63": "926d470560087da0cd5969fca3939ed2",
".git/objects/b4/a80ffe48b2eef5c65bc148c8c379e72c2e5d6c": "2e047f97db4393479b8fe7a90b7058f9",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/6a5236065a6c0fb7193cb2bb2f538b2d7b4788": "4227e5e94459652d40710ef438055fe5",
".git/objects/ba/28d13149f2a954ca246fe144d9497739ef26ab": "ee0279ab03a5a3e26cf1d95236f07723",
".git/objects/c1/c7daa7e069ddc989d09ba94e156652f86190ea": "234a2b96d6c946281a1fb41918357052",
".git/objects/c8/08fb85f7e1f0bf2055866aed144791a1409207": "92cdd8b3553e66b1f3185e40eb77684e",
".git/objects/cb/e0f57b553fe46e31be84f4c139c61b60cfd2f2": "330b83fa9a1ce02f0a156085805bf1e1",
".git/objects/ce/e3c5bb4ad9ca1b7e02e3391cc1cbba998308b7": "8e23cc0d8eea61c17a30b19ec3ccb417",
".git/objects/cf/5a377e358c635b37367b9144231ecf2a8a0b78": "23fb65c1bf392d1adc724ef05f48f9b6",
".git/objects/d3/b6a4e02e9b3a1801f32b0416c74d0f5c28f738": "d4efe5b0f305cae5c83e1b01b2a3ad8f",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d8/d5a0ed3b1c5398aa0d1aac32da8414b479dda5": "8139c7986a5ac0567eaf7e40e9775d74",
".git/objects/d9/b0f2168d80f2c65e9518ae925d5a45a3266887": "1330f0852ac7a4bcc1749269e1abbeb3",
".git/objects/dc/11fdb45a686de35a7f8c24f3ac5f134761b8a9": "761c08dfe3c67fe7f31a98f6e2be3c9c",
".git/objects/de/394fb5faa332eabb53dc3686758659213b35d8": "06641fb2820387e3be04dce38b379fbf",
".git/objects/e0/7ac7b837115a3d31ed52874a73bd277791e6bf": "74ebcb23eb10724ed101c9ff99cfa39f",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/ea/c96511c326f54ad7fb43a1baf29dc802bec768": "cd3d23d9df38f3febec5c0d7bd0f62cf",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ef/1c05bbf507baea20d74ed6211df83a28d76a42": "ab048804d2e18666528104934c479aa2",
".git/objects/ef/df6e22651875096238c51fd6d54e827167c4ac": "565a7976fc7964fcd756985d939fcb8f",
".git/objects/f1/981d4464d67d1baf8a403087cc0839f02cbce4": "44f79f1f5204eecd7f46d1b8a275792c",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/fb/53cfd53d572d62d6e6edf253deec5ca07b0b65": "0511d2119d89ae9b1f41d2e988113f87",
".git/objects/fb/d5b0cbfb69ac2bf0112b82607fc89cabf61cc4": "a79ff8d50e325f8c1ca5ff647c326f79",
".git/refs/heads/gh-pages": "2709cfbfa843cc7b235c7cfed773d659",
".git/refs/remotes/origin/gh-pages": "2709cfbfa843cc7b235c7cfed773d659",
"assets/AssetManifest.bin": "9b80d817afb1df7f41e352c53c83d69d",
"assets/AssetManifest.bin.json": "b7cc5df4bcb827d03bc38e8d3cfe06d2",
"assets/AssetManifest.json": "e249bca9fbe2ea5f61274f25d632bc6b",
"assets/assets/logo.png": "c8a13b34c8d1b5bfdcd1f7a8a90a4e0f",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "327f045381026f909694cdb801bcdd65",
"assets/NOTICES": "f1ae34ed21331c5875b9888d1c66c07c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "df2df32c6d6d06246a90b7f061173847",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "a2a644e5b6a06aff3cb6f59a9b42fe19",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "b3ac18a339ff722c9855a47c18781824",
"/": "b3ac18a339ff722c9855a47c18781824",
"main.dart.js": "e4a17220b7a3534da74c7d1a1f75b4cd",
"manifest.json": "d82887f113432b4b5d993191e1a58c7c",
"version.json": "140fe6951f41b220f2909b82f37044df"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
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
