# Changelog

## [1.0.1](https://github.com/yetti/adventure-money/compare/1.0.0...1.0.1) (2023-02-09)


### Bug Fixes

* remove `frozen_string_literal` from email templates ([f27eaeb](https://github.com/yetti/adventure-money/commit/f27eaeb211c95a37859fbcfc1c0a77c29b1f5278))


### Miscellaneous

* upgrade esbuild ([baaba51](https://github.com/yetti/adventure-money/commit/baaba517bab73a442817abb9515d45f94b3ebd6e))

## 1.0.0 (2023-02-09)


### Features

* adds homepage index controller ([33e503b](https://github.com/yetti/adventure-money/commit/33e503b146fd3386550c2125ff673fdf62db079d))
* configure Errors controller and views ([ccadab4](https://github.com/yetti/adventure-money/commit/ccadab43442e6ce2ead9d484fa067416c63f4153))
* configure mailgun for email delivery ([9a52829](https://github.com/yetti/adventure-money/commit/9a528293e120efa1cfbeaf62f0f914896ef58c2f))
* configure protected paths ([28ece7a](https://github.com/yetti/adventure-money/commit/28ece7a4147945633f62664482a9d7d9a51b1b7b))
* configure UUIDs as the primary key ([a0decbd](https://github.com/yetti/adventure-money/commit/a0decbd2880d66bf5322541c42e361610d901374))
* integrate Bootstrap ([fd266f5](https://github.com/yetti/adventure-money/commit/fd266f51e13da5eecf02fe3b34ae6ccee7b94abe))
* integrate Devise ([9ed59bc](https://github.com/yetti/adventure-money/commit/9ed59bc0ab7a11d7f972cde534ce293a500990d2))
* integrate Rodauth ([916b17c](https://github.com/yetti/adventure-money/commit/916b17c5c2cb35dd91096821195967f56812f64a))
* integrate Rodauth ([646264f](https://github.com/yetti/adventure-money/commit/646264f9776f19bc4d8753a919aec56044d2058b))
* scaffold ExpenseAccounts ([8aa5579](https://github.com/yetti/adventure-money/commit/8aa5579d7316db655bbbdb54c80a31c48512789e))
* set mailer default URL ([cb21625](https://github.com/yetti/adventure-money/commit/cb2162520dfae474ed2348508cd28655703129b8))


### Bug Fixes

* add "lang" attribute to mail template ([00ce4a4](https://github.com/yetti/adventure-money/commit/00ce4a435fd86fa2bbf5639773f3dbac63536789))
* adds "lang" attribute to template "html" tag ([fc50451](https://github.com/yetti/adventure-money/commit/fc50451884c20d6fda661e6ce9ec4445c63503a8))
* adds lang tag to error pages ([111fd50](https://github.com/yetti/adventure-money/commit/111fd50f2d049a21736ca8d8b1d7f482af025d71))
* fix hostname used in Rodauth emails ([84e867f](https://github.com/yetti/adventure-money/commit/84e867f4ee5af956bfa6957b0cd9d92a5f2da029))
* fix linting issues ([b37da5d](https://github.com/yetti/adventure-money/commit/b37da5d6909d26bc1b570e7809b96d3589b15ea0))


### Tests

* adds server errors controller and routing tests ([2e99be8](https://github.com/yetti/adventure-money/commit/2e99be8e2bebf41897a1542d1cbd407f9ca068d5))


### Documentation

* add badges to README.md ([227a579](https://github.com/yetti/adventure-money/commit/227a579dffc04a80cdc75e01880bd5ef3a436dfd))
* add foreman and overcommit to README.md ([f00b12e](https://github.com/yetti/adventure-money/commit/f00b12e2b845f3a0c7d7e257c778109c27ca8f1b))
* updated SonarCloud badge ([b5cdb88](https://github.com/yetti/adventure-money/commit/b5cdb88805d9e2859c27a4c7f9a9dfc7b98b2bbd))


### Code Refactoring

* renames PageController to PagesController ([5b6c3c9](https://github.com/yetti/adventure-money/commit/5b6c3c9639378da01a5b64848b224ce4ec89200f))


### Miscellaneous

* clean up dependencies and unnecessary files ([4a3b065](https://github.com/yetti/adventure-money/commit/4a3b065e37e83b528e91f2313d962df1b4a86f9e))
* configure Redis caching ([baaa4c3](https://github.com/yetti/adventure-money/commit/baaa4c3be4b20cfedda9379e85a740752687f78d))
* configure Simplecov for Codecov ([7987d8b](https://github.com/yetti/adventure-money/commit/7987d8baab91b2486d07efcada09e33a9834c2fb))
* configures overcommit ([46ea28a](https://github.com/yetti/adventure-money/commit/46ea28ae253c548cadf85be7c9fd40dd8e5ec131))
* **deps-dev:** bump faker from 3.0.0 to 3.1.0 ([87e20d2](https://github.com/yetti/adventure-money/commit/87e20d2358ba1526853b3075db267bf68de68d38))
* **deps-dev:** bump rubocop from 1.41.1 to 1.42.0 ([b64661b](https://github.com/yetti/adventure-money/commit/b64661bd8d35f525a5840cf55510187ed625e5f1))
* **deps-dev:** bump rubocop-performance from 1.15.1 to 1.15.2 ([e0cf50a](https://github.com/yetti/adventure-money/commit/e0cf50a672f99dbdde115d72b1d6fc122868d487))
* **deps-dev:** bump rubocop-rails from 2.17.3 to 2.17.4 ([7b35618](https://github.com/yetti/adventure-money/commit/7b356185d7160e03213cbb9b1175b73893c9dcf4))
* **deps-dev:** bump simplecov from 0.21.2 to 0.22.0 ([d67d859](https://github.com/yetti/adventure-money/commit/d67d8596b2503ebe209326cdd9c8bf74b05f751e))
* **deps:** bump esbuild from 0.16.10 to 0.16.12 ([6fb77c3](https://github.com/yetti/adventure-money/commit/6fb77c3680c691cc2dca8ef887728d30dc76713d))
* **deps:** bump puma from 5.6.5 to 6.0.1 ([eef6bfc](https://github.com/yetti/adventure-money/commit/eef6bfcabfbb11e19391a6fa218bffaacda3f9a5))
* **deps:** bump puma from 6.0.1 to 6.0.2 ([8e28a04](https://github.com/yetti/adventure-money/commit/8e28a04d29e08e0749ab667014e951e72cd03b17))
* **deps:** bump redis from 4.8.0 to 5.0.5 ([797a878](https://github.com/yetti/adventure-money/commit/797a878f1d1bcd1d1f62220e07beeb6e00909f29))
* ignore Simplecov directory ([86d4428](https://github.com/yetti/adventure-money/commit/86d4428e7d7655b9fbef61169e0cad72648f43fd))
* initial commit ([d11c925](https://github.com/yetti/adventure-money/commit/d11c92560216593bf9dc30bde6f0df8871101106))
* rebase from `main` and fix account table timestamps ([c3822ef](https://github.com/yetti/adventure-money/commit/c3822ef4fc2c74669221287f43d634a23d6aebdb))
* turn off CapitalizedSubject in overcommit ([2a1e0a8](https://github.com/yetti/adventure-money/commit/2a1e0a87b8ac1e57b53452567c4819b762e05b53))
* update deps in Docker compose.yml and Gemfile ([8464369](https://github.com/yetti/adventure-money/commit/8464369b92dd1e9717877bcddc83ce3cd9c344e2))


### Continuous Integration

* add automated release workflow ([1a2a890](https://github.com/yetti/adventure-money/commit/1a2a890ae94b1819a984547a01a987b2fb318764))
* add coverage to SolrCloud analysis ([dfdf812](https://github.com/yetti/adventure-money/commit/dfdf81245e654f798eefc2049f57ec63219dbdf2))
* adds CircleCI config ([c7e6096](https://github.com/yetti/adventure-money/commit/c7e6096e1ecb2144f0bf8546b67b714999b9d3cb))
* adds render-build.sh script ([dfd3e83](https://github.com/yetti/adventure-money/commit/dfd3e8365231a504e85423eada42f0c697a3b8f8))
* allow remote database testing URL ([f9f11db](https://github.com/yetti/adventure-money/commit/f9f11db164f5d6cd1a95084d307acbc780253adf))
* configure LCov formatter for Coveralls ([56c02e6](https://github.com/yetti/adventure-money/commit/56c02e62c5faabc1ecd58d9742004989fe370519))
* configure Redis for CircleCI ([94cdb78](https://github.com/yetti/adventure-money/commit/94cdb7840af054a54cb610afacf38d559120e6b9))
* fix CI ([bc8f2ae](https://github.com/yetti/adventure-money/commit/bc8f2ae62fc7a23c021b60800fa72d9750760240))
* fix coverage calculation ([c7c0fed](https://github.com/yetti/adventure-money/commit/c7c0fed5c987d5daa51b40e037fa85c348b7d36a))
* fixes linting and specs ([fe9ebd0](https://github.com/yetti/adventure-money/commit/fe9ebd01f8a25164c99b369dd0c852890d572c91))
* ignore Turbo Devise controller hack ([9bdd511](https://github.com/yetti/adventure-money/commit/9bdd5113b2e20679e20ba559c4317a38f417043e))
* increase resource class for CI jobs ([a7d7ff8](https://github.com/yetti/adventure-money/commit/a7d7ff86e8605a4b5d1e2686cb5d5c72c5ea152e))
* modify coverage reports ([0cedc0a](https://github.com/yetti/adventure-money/commit/0cedc0a2e7f1908a0ebcfce2ae754d7e0fd9965f))
* modify SonarCloud analysis ([671b9a6](https://github.com/yetti/adventure-money/commit/671b9a6a05cc164374689a960501fc19c9bc0d5b))
* precompile assets in CircleCI ([010cb22](https://github.com/yetti/adventure-money/commit/010cb22d5005bcfd71a5734ea99d49e306f673c3))
* reconfigure Sonar ([88fc1f7](https://github.com/yetti/adventure-money/commit/88fc1f73cb372917cd04b33db6c16e91faa413aa))
* remove 'coverage' step in CircleCI config ([78dd8f4](https://github.com/yetti/adventure-money/commit/78dd8f43ad4bfc4502830977f14ba48c88184372))
* remove coveralls from CI workflow ([26f2d04](https://github.com/yetti/adventure-money/commit/26f2d04bd0cd3a157ce017aa6307777bd7320097))
* remove linting and test steps from GitHub workflow ([09db287](https://github.com/yetti/adventure-money/commit/09db2876ed516e436f719775236a3023620f6b39))
* removes "coveralls" from spec_helper.rb ([391f51c](https://github.com/yetti/adventure-money/commit/391f51c0abd93452988808a972f10291efe5cccf))
* rename CircleCI workflow to 'verify' ([9d6893d](https://github.com/yetti/adventure-money/commit/9d6893db882297ae88ffbd02ecd85381455e27f5))
* replaces 'build' step with 'security' ([aea384a](https://github.com/yetti/adventure-money/commit/aea384ae697b03ec762ccdaef8e8dcb59aa4bd48))
* set character encoding for SonarCloud ([cd4b8c4](https://github.com/yetti/adventure-money/commit/cd4b8c4b5fea80f513502884a777aa9d8091ce92))
* setup coveralls via CircleCI ([4722fc9](https://github.com/yetti/adventure-money/commit/4722fc975e67f38d3bce1954ad5c233982b5478f))
* setup GitHub Actions ([e29c3ec](https://github.com/yetti/adventure-money/commit/e29c3ec069468512bb8302290176bf7ee64f302d))
* update version of CircleCI Ruby image ([521c1b4](https://github.com/yetti/adventure-money/commit/521c1b410c8e94900e06e6afb5c1f98972330f89))
* upgrade CircleCI image for "test" job ([ee90855](https://github.com/yetti/adventure-money/commit/ee9085593d6cc9b73c8e5c51872e0ae284621617))
* upgrade Ruby version in CircleCI config ([af1df8a](https://github.com/yetti/adventure-money/commit/af1df8ac8e919808c1e0959665b8bb59e19abc48))
