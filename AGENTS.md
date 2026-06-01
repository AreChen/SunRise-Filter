# SunRise Filter Localization Agent Guide

本文档用于维护 SunRise / EasternSunLAN 的 D2RLAN 过滤器汉化、规则修复和发版流程。以后进入本仓库时，先按这里的约束检查，再改过滤脚本。

## 项目范围

- 当前仓库源文件：`SunRise-Filter.lua`
- 上级 MOD 根目录：`H:\D2RLAN\D2R\Mods\EasternSunLAN`
- MOD 内加载副本：`H:\D2RLAN\D2R\Mods\EasternSunLAN\EasternSunLAN.mpq\data\D2RLAN\Filters\SunRise Filter.lua`
- 本机运行配置：`H:\D2RLAN\D2R\lootfilter_config.lua`
- 本机加载器：`H:\D2RLAN\D2R\lootfilter.lua`
- D2RLAN 官方规则文档：`https://locbones.github.io/D2RLAN-LootFilterGuide/`

## 分支职责

- `main`：正式 SunRise 过滤器，用户自动更新主要走这个分支。
- `sully-original-zhcn`：Sully 原版规则汉化分支，只硬编码中文显示文本，尽量保持原版规则行为。

切换分支前后都要运行：

```powershell
git status --short --branch
git branch --show-current
```

## 硬性规则

- 每次发布必须 bump 过滤器版本号；启动器自动更新依赖版本号变化。
- `filter_titles` 必须保留英文，否则启动器/游戏内可能显示乱码。
- 过滤等级字段只允许写 `filter_levels`；不要写 `filterlevels` 或 `filter_lvels`。
- 翻译专用改动不要改变掉落规则、等级阈值、药水显示逻辑或高亮逻辑，除非用户明确要求。
- `language = "enUS"` 可以保留；为避免某些环境中文乱码，显示文字可硬编码中文，但标题仍用英文。
- 过滤器里使用 `{red}`、`{blue}`、`{name}` 这类 D2RLAN 标记；不要在 Lua 过滤器里直接写 `ÿc1`、`ÿc2` 这类游戏内原始颜色码。
- Level 1 应显示普通红药/蓝药；Level 2 及以上可以只显示 25% 紫瓶和 50% 全恢复瓶。改药水规则时必须单独验证。
- 无孔的优质职业底材也应按需求显示，因为玩家会自行打孔；不要只匹配带孔底材。
- 法师相关底材要覆盖法杖、职业衣服、女巫法力刃等明确提过的项。

## 术语准则

- `Amulet` 译为 `护身符` 或 `护符`，不要译为 `项链`。
- `Charm` 译为 `咒符`。
- `Jewel` 译为 `珠宝`。
- `Kris` 应按暗黑语境译为 `波形刀`，不要音译为 `克里斯`。
- `Energy Blade` 使用暗黑语境的 `能量之刃`。
- `Ancient Coupon` 译为 `古代券`。
- `Normal Coupon` 译为 `普通券`。
- `Crafting Reagent` 译为 `制作材料`。
- `Reagent` 统一译为 `材料`，不要误写成 `Reagant`。
- 符文在简体中文环境下统一显示英文符文名，例如 `Mal Rune`、`Ber Rune`、`Su Rune`；不要覆盖成中文符文名。
- 宝石名优先使用基础汉化的 `{name}`；只有最高级才可称为 `完美宝石`，不要把次高级宝石写成完美宝石。
- 若基础汉化已经标准，过滤器里优先保留 `{name}`，只额外增加前缀、颜色、提示，不要重复覆盖物品名。

## 常见风险

- `function or expression needs too many registers near '255'` 通常不是中文本身导致，而是 Lua 表结构或字段写法触发 D2RLAN 加载失败。先查最近改动、字段拼写和大块表项。
- 游戏崩溃不一定来自过滤器，可能来自 string JSON、怪物/地图/贴图或启动器配置。过滤器只负责显示和提示时，优先验证 Lua 能否被 D2RLAN 加载。
- `ÿc1`、`ÿc2`、`ÿc3`、`ÿc0` 是 D2R 原始颜色码，过滤器源文件里不应新写；如果它们存在于游戏字符串 JSON，先判断是否为原始资源内容。
- 不要把 `**`、Markdown 或说明文档格式直接塞进游戏显示文本。

## 修改流程

1. 确认当前分支和脏文件。
2. 读取相关规则块，不凭记忆改。
3. 翻译文本时只改显示字段，例如 `name_override`、`prefix`、`suffix`、`notify`。
4. 规则修复时只改必要字段，例如 `filter_levels`、`quality`、`class`、`item_level`、`min_level`。
5. 改完后检查 diff，确认没有无关重排。
6. bump 版本号，例如 `v1.0.2` 到 `v1.0.3`。
7. 运行验证命令。
8. 提交并推送对应分支。
9. 推送后用 raw URL 验证远端版本号。

## 验证命令

基础检查：

```powershell
rg -n "filter_lvels|filterlevels" SunRise-Filter.lua
rg -n "Filter Title|reload|filter_titles|language|filter_level" SunRise-Filter.lua
```

术语抽查：

```powershell
rg -n "项链|\\*完宝\\*|马尔符文|伊司特符文|古尔符文|伐克斯符文|欧姆符文|贝符文|乔符文|查姆符文|萨德符文" SunRise-Filter.lua
```

Lua 加载检查可用 Node + fengari：

```powershell
node -e "const fs=require('fs');const fengari=require('fengari');const lauxlib=fengari.lauxlib,lualib=fengari.lualib,to_luastring=fengari.to_luastring;const L=lauxlib.luaL_newstate();lualib.luaL_openlibs(L);const s=fs.readFileSync('SunRise-Filter.lua','utf8');if(lauxlib.luaL_loadstring(L,to_luastring(s))!==0){throw new Error(fengari.to_jsstring(fengari.lua.lua_tolstring(L,-1)))}console.log('lua load ok')"
```

如果本机没有依赖，先在上级目录检查 `package.json` 和 `node_modules`，不要临时改全局环境。

## 发版流程

正式版 `main`：

1. 切到 `main`。
2. 修改 `SunRise-Filter.lua`。
3. 同步到 MOD 加载副本：`H:\D2RLAN\D2R\Mods\EasternSunLAN\EasternSunLAN.mpq\data\D2RLAN\Filters\SunRise Filter.lua`。
4. 需要本机立刻测试时，同步到 `H:\D2RLAN\D2R\lootfilter_config.lua`。
5. bump 版本号。
6. 运行验证命令。
7. `git commit` 并 `git push origin main`。
8. 用 raw URL 检查远端标题和 reload 版本号。

`sully-original-zhcn` 分支：

1. 切到 `sully-original-zhcn`。
2. 保持 Sully 原版规则行为，只更新中文显示、字段拼写和明确 bug。
3. `filter_titles` 仍保持英文。
4. bump 该分支自己的版本号。
5. 运行验证命令。
6. `git commit` 并 `git push origin sully-original-zhcn`。
7. 完成后按需要切回 `main`。

## 分发说明

- 使用启动器自动更新时，确保 GitHub raw 链接上的 `SunRise-Filter.lua` 已推送且版本号变化。
- 打包 MOD 给别人时，如果过滤器也改了，需要包含 MOD 内加载副本；如果只是 GitHub 远程过滤器更新，则用户能通过启动器拉取。
- 不要把本地 `localization-work` 备份目录当作分发必需内容。
