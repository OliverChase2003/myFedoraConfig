// === 页面推荐、广告相关 ===
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false); // 禁用“推荐阅读”
user_pref("browser.newtabpage.activity-stream.showSponsored", false);            // 禁用赞助内容
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);           // 禁用底部消息
user_pref("extensions.pocket.enabled", false);                                   // 禁用 Pocket
user_pref("browser.newtabpage.activity-stream.feeds.pocket", false);             // 不从 Pocket 拉文章

// === 隐私增强、禁用遥测 ===
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("browser.ping-centre.telemetry", false);
user_pref("browser.urlbar.suggest.quicksuggest.sponsored", false);
user_pref("browser.urlbar.suggest.quicksuggest.nonsponsored", false);

// === 启动行为和界面 ===
user_pref("browser.startup.page", 0);                   // 启动时打开空白页
user_pref("browser.startup.homepage", "about:blank");
user_pref("browser.newtabpage.enabled", false);         // 新标签页也是空白
user_pref("startup.homepage_welcome_url", "");
user_pref("startup.homepage_welcome_url.additional", "");
user_pref("browser.aboutwelcome.enabled", false);

// === 搜索引擎和地址栏建议 ===
user_pref("browser.search.suggest.enabled", false);     // 禁用搜索建议
user_pref("browser.urlbar.suggest.bookmark", true);
user_pref("browser.urlbar.suggest.history", true);
user_pref("browser.urlbar.suggest.openpage", false);
user_pref("browser.urlbar.suggest.topsites", false);

// === 禁止插件推荐 & 默认扩展推荐 ===
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);

// === 用户体验相关优化 ===
user_pref("browser.tabs.closeWindowWithLastTab", false); // 最后一个标签不关闭窗口
user_pref("browser.download.useDownloadDir", true);      // 默认保存到下载目录
user_pref("general.smoothScroll", true);                 // 启用平滑滚动
