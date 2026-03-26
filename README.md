# Apple Mist Rime Theme

这是一个为 `小狼毫（Weasel）` 制作的 Rime 主题，已经整理成可以直接使用的发布结构。

仓库文件说明：

- `weasel.custom.yaml`：可直接安装到 Rime 配置目录的主题文件
- `install.ps1`：Windows 一键安装脚本
- `weasel.apple-share.yaml`：主题源文件，方便二次修改或分享

主题特点：

- 提供 8 套配色方案
- 同时支持浅色和深色模式
- 已预设字体、圆角、阴影、间距等界面样式

## 适用环境

本主题适用于 Windows 下的 `小狼毫（Weasel）`。

## 一键安装

如果你希望尽量少操作，直接运行仓库中的 `install.ps1` 即可。

它会做下面几件事：

1. 自动定位你的 Rime 用户目录 `%APPDATA%\\Rime`
2. 如果已存在 `weasel.custom.yaml`，先自动备份
3. 将仓库中的 `weasel.custom.yaml` 复制到 Rime 目录

运行完成后，你只需要：

1. 右键任务栏中的小狼毫图标
2. 选择“重新部署”

## 手动安装

如果你不想运行脚本，也可以手动安装：

1. 打开 `%APPDATA%\\Rime`
2. 将本仓库中的 `weasel.custom.yaml` 复制到该目录
3. 如果提示覆盖，先确认你是否需要保留原有自定义配置
4. 右键小狼毫托盘图标，选择“重新部署”

## 重要说明

`install.ps1` 和手动复制 `weasel.custom.yaml` 的方式，都会以这个主题文件作为你的 `weasel.custom.yaml`。

这意味着：

- 对普通用户来说，这是最省事、最接近一键使用的方式
- 如果你原本的 `weasel.custom.yaml` 里还有其他自定义配置，安装前应先备份或手动合并

脚本已经会自动备份旧文件，备份文件名类似：

```text
weasel.custom.yaml.bak.20260326-161500
```

## 当前默认主题

当前默认使用：

- 浅色主题：`apple-mist-light-sage`
- 深色主题：`apple-mist-dark-sky`

## 可选配色

可用的浅色主题：

- `apple-mist-light-sage`
- `apple-mist-light-sky`
- `apple-mist-light-lilac`
- `apple-mist-light-sand`

可用的深色主题：

- `apple-mist-dark-sage`
- `apple-mist-dark-sky`
- `apple-mist-dark-lilac`
- `apple-mist-dark-sand`

## 如何切换默认配色

打开 `weasel.custom.yaml`，找到下面两行：

```yaml
"style/color_scheme": "apple-mist-light-sage"
"style/color_scheme_dark": "apple-mist-dark-sky"
```

将引号中的主题名称改成你想使用的配色，然后重新部署即可。

例如：

```yaml
"style/color_scheme": "apple-mist-light-sky"
"style/color_scheme_dark": "apple-mist-dark-lilac"
```

## 如果主题没有生效

可以按下面顺序检查：

1. 确认 `%APPDATA%\\Rime\\weasel.custom.yaml` 已经被替换或复制成功
2. 确认保存后执行了“重新部署”
3. 确认当前小狼毫确实在使用 `weasel` 外观配置
4. 如果仍未生效，可以重启一次小狼毫再试

## 说明

- 主题作者：`yester-code`
- 该主题主要修改的是小狼毫外观样式，不影响输入方案本身
