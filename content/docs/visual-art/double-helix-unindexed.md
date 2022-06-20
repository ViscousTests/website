# Double Helix

<div id="double-helix"></div>
<script src="/cljs-out/all-main.js"></script>
<!--
The goog.require calls written by all-main.js should generate all these script
tags. They don't for a reason I don't yet understand, so I put them in
manually.
-->
<script src="/cljs-out/all/goog/string/string.js">
</script>
<script src="/cljs-out/all/goog/debug/error.js">
</script>
<script src="/cljs-out/all/goog/dom/nodetype.js">
</script>
<script src="/cljs-out/all/goog/asserts/asserts.js">
</script>
<script src="/cljs-out/all/goog/array/array.js">
</script>
<script src="/cljs-out/all/goog/debug/errorcontext.js">
</script>
<script src="/cljs-out/all/goog/labs/useragent/util.js">
</script>
<script src="/cljs-out/all/goog/object/object.js">
</script>
<script src="/cljs-out/all/goog/labs/useragent/browser.js">
</script>
<script src="/cljs-out/all/goog/labs/useragent/engine.js">
</script>
<script src="/cljs-out/all/goog/labs/useragent/platform.js">
</script>
<script src="/cljs-out/all/goog/reflect/reflect.js">
</script>
<script src="/cljs-out/all/goog/useragent/useragent.js">
</script>
<script src="/cljs-out/all/goog/debug/debug.js">
</script>
<script src="/cljs-out/all/goog/debug/logrecord.js">
</script>
<script src="/cljs-out/all/goog/debug/logbuffer.js">
</script>
<script src="/cljs-out/all/goog/debug/logger.js">
</script>
<script src="/cljs-out/all/goog/debug/relativetimeprovider.js">
</script>
<script src="/cljs-out/all/goog/dom/htmlelement.js">
</script>
<script src="/cljs-out/all/goog/dom/tagname.js">
</script>
<script src="/cljs-out/all/goog/dom/tags.js">
</script>
<script src="/cljs-out/all/goog/string/typedstring.js">
</script>
<script src="/cljs-out/all/goog/string/const.js">
</script>
<script src="/cljs-out/all/goog/html/safescript.js">
</script>
<script src="/cljs-out/all/goog/fs/url.js">
</script>
<script src="/cljs-out/all/goog/i18n/bidi.js">
</script>
<script src="/cljs-out/all/goog/html/trustedresourceurl.js">
</script>
<script src="/cljs-out/all/goog/html/safeurl.js">
</script>
<script src="/cljs-out/all/goog/html/safestyle.js">
</script>
<script src="/cljs-out/all/goog/html/safestylesheet.js">
</script>
<script src="/cljs-out/all/goog/html/safehtml.js">
</script>
<script src="/cljs-out/all/goog/html/uncheckedconversions.js">
</script>
<script src="/cljs-out/all/goog/debug/formatter.js">
</script>
<script src="/cljs-out/all/goog/debug/console.js">
</script>
<script src="/cljs-out/all/goog/structs/structs.js">
</script>
<script src="/cljs-out/all/goog/functions/functions.js">
</script>
<script src="/cljs-out/all/goog/math/math.js">
</script>
<script src="/cljs-out/all/goog/iter/iter.js">
</script>
<script src="/cljs-out/all/goog/structs/map.js">
</script>
<script src="/cljs-out/all/goog/uri/utils.js">
</script>
<script src="/cljs-out/all/goog/uri/uri.js">
</script>
<script src="/cljs-out/all/goog/math/integer.js">
</script>
<script src="/cljs-out/all/goog/string/stringbuffer.js">
</script>
<script src="/cljs-out/all/goog/math/long.js">
</script>
<script src="/cljs-out/all/goog/../cljs/core.js">
</script>
<script src="/cljs-out/all/goog/disposable/idisposable.js">
</script>
<script src="/cljs-out/all/goog/disposable/disposable.js">
</script>
<script src="/cljs-out/all/goog/debug/entrypointregistry.js">
</script>
<script src="/cljs-out/all/goog/events/browserfeature.js">
</script>
<script src="/cljs-out/all/goog/events/eventid.js">
</script>
<script src="/cljs-out/all/goog/events/event.js">
</script>
<script src="/cljs-out/all/goog/events/eventtype.js">
</script>
<script src="/cljs-out/all/goog/events/browserevent.js">
</script>
<script src="/cljs-out/all/goog/events/listenable.js">
</script>
<script src="/cljs-out/all/goog/events/listener.js">
</script>
<script src="/cljs-out/all/goog/events/listenermap.js">
</script>
<script src="/cljs-out/all/goog/events/events.js">
</script>
<script src="/cljs-out/all/goog/events/eventtarget.js">
</script>
<script src="/cljs-out/all/goog/dom/browserfeature.js">
</script>
<script src="/cljs-out/all/goog/dom/asserts.js">
</script>
<script src="/cljs-out/all/goog/dom/safe.js">
</script>
<script src="/cljs-out/all/goog/math/coordinate.js">
</script>
<script src="/cljs-out/all/goog/math/size.js">
</script>
<script src="/cljs-out/all/goog/dom/dom.js">
</script>
<script src="/cljs-out/all/goog/useragent/product.js">
</script>
<script src="/cljs-out/all/goog/dom/dataset.js">
</script>
<script src="/cljs-out/all/goog/../clojure/string.js">
</script>
<script src="/cljs-out/all/goog/../cljs/pprint.js">
</script>
<script src="/cljs-out/all/goog/promise/thenable.js">
</script>
<script src="/cljs-out/all/goog/async/freelist.js">
</script>
<script src="/cljs-out/all/goog/async/workqueue.js">
</script>
<script src="/cljs-out/all/goog/async/nexttick.js">
</script>
<script src="/cljs-out/all/goog/async/run.js">
</script>
<script src="/cljs-out/all/goog/promise/resolver.js">
</script>
<script src="/cljs-out/all/goog/promise/promise.js">
</script>
<script src="/cljs-out/all/goog/../figwheel/tools/heads_up.js">
</script>
<script src="/cljs-out/all/goog/log/log.js">
</script>
<script src="/cljs-out/all/goog/../clojure/set.js">
</script>
<script src="/cljs-out/all/goog/string/stringformat.js">
</script>
<script src="/cljs-out/all/goog/mochikit/async/deferred.js">
</script>
<script src="/cljs-out/all/goog/../figwheel/core.js">
</script>
<script>
goog.require("figwheel.main");</script>
<script src="/cljs-out/all/goog/../figwheel/main.js">
</script>
<script>
goog.require("figwheel.repl.preload");</script>
<script src="/cljs-out/all/goog/timer/timer.js">
</script>
<script src="/cljs-out/all/goog/json/json.js">
</script>
<script src="/cljs-out/all/goog/json/hybrid.js">
</script>
<script src="/cljs-out/all/goog/net/errorcode.js">
</script>
<script src="/cljs-out/all/goog/net/eventtype.js">
</script>
<script src="/cljs-out/all/goog/net/httpstatus.js">
</script>
<script src="/cljs-out/all/goog/net/xhrlike.js">
</script>
<script src="/cljs-out/all/goog/net/xmlhttpfactory.js">
</script>
<script src="/cljs-out/all/goog/net/wrapperxmlhttpfactory.js">
</script>
<script src="/cljs-out/all/goog/net/xmlhttp.js">
</script>
<script src="/cljs-out/all/goog/net/xhrio.js">
</script>
<script src="/cljs-out/all/goog/storage/mechanism/errorcode.js">
</script>
<script src="/cljs-out/all/goog/storage/mechanism/mechanism.js">
</script>
<script src="/cljs-out/all/goog/storage/mechanism/iterablemechanism.js">
</script>
<script src="/cljs-out/all/goog/storage/mechanism/html5webstorage.js">
</script>
<script src="/cljs-out/all/goog/storage/mechanism/html5sessionstorage.js">
</script>
<script src="/cljs-out/all/goog/net/jsloader.js">
</script>
<script src="/cljs-out/all/goog/html/legacyconversions.js">
</script>
<script src="/cljs-out/all/goog/storage/mechanism/html5localstorage.js">
</script>
<script src="/cljs-out/all/goog/storage/mechanism/ieuserdata.js">
</script>
<script src="/cljs-out/all/goog/storage/mechanism/prefixedmechanism.js">
</script>
<script src="/cljs-out/all/goog/storage/mechanism/mechanismfactory.js">
</script>
<script src="/cljs-out/all/goog/net/websocket.js">
</script>
<script src="/cljs-out/all/goog/../figwheel/repl.js">
</script>
<script src="/cljs-out/all/goog/../figwheel/repl/preload.js">
</script>
<script>
goog.require("devtools.preload");</script>
<script src="/cljs-out/all/goog/../devtools/protocols.js">
</script>
<script src="/cljs-out/all/goog/../devtools/context.js">
</script>
<script src="/cljs-out/all/goog/../devtools/format.js">
</script>
<script src="/cljs-out/all/goog/../devtools/defaults.js">
</script>
<script src="/cljs-out/all/goog/../devtools/prefs.js">
</script>
<script src="/cljs-out/all/goog/../devtools/munging.js">
</script>
<script src="/cljs-out/all/goog/../devtools/formatters/helpers.js">
</script>
<script src="/cljs-out/all/goog/../devtools/formatters/state.js">
</script>
<script src="/cljs-out/all/goog/../devtools/formatters/printing.js">
</script>
<script src="/cljs-out/all/goog/../devtools/version.js">
</script>
<script src="/cljs-out/all/goog/../clojure/data.js">
</script>
<script src="/cljs-out/all/goog/../devtools/util.js">
</script>
<script src="/cljs-out/all/goog/../clojure/walk.js">
</script>
<script src="/cljs-out/all/goog/../devtools/formatters/templating.js">
</script>
<script src="/cljs-out/all/goog/../devtools/formatters/markup.js">
</script>
<script src="/cljs-out/all/goog/../devtools/toolbox.js">
</script>
<script src="/cljs-out/all/goog/../devtools/async.js">
</script>
<script src="/cljs-out/all/goog/../devtools/reporter.js">
</script>
<script src="/cljs-out/all/goog/../devtools/formatters/budgeting.js">
</script>
<script src="/cljs-out/all/goog/../devtools/formatters/core.js">
</script>
<script src="/cljs-out/all/goog/../devtools/formatters.js">
</script>
<script src="/cljs-out/all/goog/../cljs/stacktrace.js">
</script>
<script src="/cljs-out/all/goog/../devtools/hints.js">
</script>
<script src="/cljs-out/all/goog/../devtools/core.js">
</script>
<script src="/cljs-out/all/goog/../devtools/preload.js">
</script>
<script>
goog.require("process.env");</script>
<script src="/cljs-out/all/goog/../process/env.js">
</script>
<script>
goog.require("sketches.all");</script>
<script src="/cljs-out/all/goog/../cljsjs/p5/development/p5.inc.js">
</script>
<script src="/cljs-out/all/goog/../quil/middlewares/deprecated_options.js">
</script>
<script src="/cljs-out/all/goog/dom/vendor.js">
</script>
<script src="/cljs-out/all/goog/math/box.js">
</script>
<script src="/cljs-out/all/goog/math/irect.js">
</script>
<script src="/cljs-out/all/goog/math/rect.js">
</script>
<script src="/cljs-out/all/goog/style/style.js">
</script>
<script src="/cljs-out/all/goog/../quil/util.js">
</script>
<script src="/cljs-out/all/goog/../quil/sketch.js">
</script>
<script src="/cljs-out/all/goog/../quil/core.js">
</script>
<script src="/cljs-out/all/goog/../quil/middlewares/navigation_3d.js">
</script>
<script src="/cljs-out/all/goog/../quil/middlewares/navigation_2d.js">
</script>
<script src="/cljs-out/all/goog/../quil/middlewares/fun_mode.js">
</script>
<script src="/cljs-out/all/goog/../quil/middleware.js">
</script>
<script src="/cljs-out/all/goog/../sketches/perlin_flow.js">
</script>
<script src="/cljs-out/all/goog/../sketches/common.js">
</script>
<script src="/cljs-out/all/goog/../sketches/double_helix.js">
</script>
<script src="/cljs-out/all/goog/../sketches/all.js">
</script>

