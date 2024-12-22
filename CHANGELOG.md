# Changelog

## 1.0.0 (2024-12-22)


### Features

* add and configure simple_form to generate Bootstrap styled forms ([0ffd335](https://github.com/yetti/adventure_money/commit/0ffd3350512226e4fcb9f56c860f5e6182fea7c7))
* add categories management ([#43](https://github.com/yetti/adventure_money/issues/43)) ([febe7b6](https://github.com/yetti/adventure_money/commit/febe7b67da33b3e685c8abd77ee16e267229c90a))
* add user accounts and style log in/out and profile views ([3d630b7](https://github.com/yetti/adventure_money/commit/3d630b7b31c96015f6eb7259e2d1100e549e662e))
* basic layout ([fc997e0](https://github.com/yetti/adventure_money/commit/fc997e053f65a1483a59b105a2258398daec0431))
* require authentication sitewide ([7aa77fb](https://github.com/yetti/adventure_money/commit/7aa77fb35adf798ab7d8cb46d7739a5cf12637f0))
* require authentication sitewide ([2be3be9](https://github.com/yetti/adventure_money/commit/2be3be9f07ca3e1635bbc1476b417b59cc9b26d9))
* scaffold Person ([7fffe28](https://github.com/yetti/adventure_money/commit/7fffe28c0cd3f7090108c1b8c67bdca1f93cc444))
* style flashes with Bootstrap alerts ([a0d3db4](https://github.com/yetti/adventure_money/commit/a0d3db4d42e36338f8d163a9e1dda9f30159ff02))


### Bug Fixes

* add lang to mailer template ([2092982](https://github.com/yetti/adventure_money/commit/209298270db2b5d9b743d068e433719622bec051))
* don't make profile link a DELETE request ([e5d0032](https://github.com/yetti/adventure_money/commit/e5d0032bc7e988978870b0cfe06d019c4e1d3b2b))
* resolve linting errors ([67fe036](https://github.com/yetti/adventure_money/commit/67fe036887ab816c6031285f012512d20c1be97d))


### Styles

* fix linting error ([6238481](https://github.com/yetti/adventure_money/commit/6238481818fa319c7b3f922fd44ea82868ee09d0))


### Miscellaneous

* add flash-key data attribute to determine unknown flash message type ([1310bf0](https://github.com/yetti/adventure_money/commit/1310bf0c962e0b7e11de7fd70e44187c21f0b002))
* collate unit and system tests into a single report ([84ddbc1](https://github.com/yetti/adventure_money/commit/84ddbc175c3127a867a964587b67a3e70dafbd65))
* configure VCR fixtures ([117542a](https://github.com/yetti/adventure_money/commit/117542a4cf21ca63c23d5f1807f5a3996e9bfe38))
* **deps:** bump codecov/codecov-action from 4.5.0 to 5.1.1 ([45b2d90](https://github.com/yetti/adventure_money/commit/45b2d9002a1095684c18b33839c6f5bfd2fef932))
* **deps:** bump mutex_m from 0.2.0 to 0.3.0 in the dependencies group ([5c5f359](https://github.com/yetti/adventure_money/commit/5c5f3594ca2b3a3f6227ed2e486364f65247f51e))
* **deps:** bump sass from 1.81.0 to 1.82.0 in the dependencies group ([626b6fc](https://github.com/yetti/adventure_money/commit/626b6fc77ecf06a5b5272bd5e1bf0baf7f2dad71))
* **deps:** bump the dependencies group with 2 updates ([#41](https://github.com/yetti/adventure_money/issues/41)) ([2d04cb0](https://github.com/yetti/adventure_money/commit/2d04cb0c2e8a3b2e66be1af3bc4820cecdd73b6c))
* don't automatically start server when running setup ([f01b212](https://github.com/yetti/adventure_money/commit/f01b21221afa0f71d8d063d291f1686cb1815297))
* initial commit ([ac2fbd0](https://github.com/yetti/adventure_money/commit/ac2fbd0dc33498a66846e119612968cf0f5e8a0c))
* reconfigure system tests and simplecov reporting ([d6ba044](https://github.com/yetti/adventure_money/commit/d6ba044be3db23226fbbe1f8e896102517e0c72a))
* remove node_modules mount in devcontainer compose file ([0e7f56f](https://github.com/yetti/adventure_money/commit/0e7f56f245234c9af65b3e4a30fa47808d5c1d6e))


### Code Refactoring

* change navbar title and organise links ([653d4e9](https://github.com/yetti/adventure_money/commit/653d4e97de33721274c31815ade3e51f7ab75e7b))
* improve tests, hide unknown flash messages, fix coverage report collation ([b3abaf0](https://github.com/yetti/adventure_money/commit/b3abaf0992d4d10be14d18a5937ecc5977cd86da))
* remove invitable functionality ([#42](https://github.com/yetti/adventure_money/issues/42)) ([81d1e5c](https://github.com/yetti/adventure_money/commit/81d1e5c1a215b832c127fb35c036e63a9cc6f1a3))


### Tests

* add generated email to user factory ([9a5a05f](https://github.com/yetti/adventure_money/commit/9a5a05fddf2d60d917daa20c4fc8be5b6f97a6c3))
* add test for User delete when associated with Person ([7f90458](https://github.com/yetti/adventure_money/commit/7f904585bb7bbab37984755698c9e50d757efa33))
* alert message styling ([4cca0ac](https://github.com/yetti/adventure_money/commit/4cca0ac8b6926a4594c18e0a368996c000688a41))
* fix PagesController test to take into account authentication ([ee8f40f](https://github.com/yetti/adventure_money/commit/ee8f40f7569331f844b583eda58ee0028ff1b3e5))
* fix test execution in CI ([1eb38ad](https://github.com/yetti/adventure_money/commit/1eb38adae20494ba7b1ba2eddb9108625fbf7127))
* fix test execution in CI ([0e93894](https://github.com/yetti/adventure_money/commit/0e93894600eba19ce45dc4254f18299e3f0e5c17))
* improve invitation tests ([0df2728](https://github.com/yetti/adventure_money/commit/0df27286304d7cb650b3d4364fad28e0d0051016))
* improve tests ([#40](https://github.com/yetti/adventure_money/issues/40)) ([b7f35c4](https://github.com/yetti/adventure_money/commit/b7f35c4a05f0348c3c1144f4046e9c8370ab896c))
* refactor imports ([8aa18bb](https://github.com/yetti/adventure_money/commit/8aa18bba7c04047a45bf30e11c3b4a1632c8d11d))
* remove uuid from tests since it's generated ([#44](https://github.com/yetti/adventure_money/issues/44)) ([2dd000a](https://github.com/yetti/adventure_money/commit/2dd000adcc48fa66e1101058b0d9fb95ee3adfaf))


### Build System

* add and configure devise_invitable ([4600be4](https://github.com/yetti/adventure_money/commit/4600be4c97ddc06afa7ecb1fd1dc3cbab8a7ac79))


### Continuous Integration

* reconfigure Codecov ([9595884](https://github.com/yetti/adventure_money/commit/9595884fff2f87c18c63ab51e7f25d2b7abd215d))
