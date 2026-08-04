---
layout: post
title: AI news summary for March 2026
date: 2026-04-03 23:00:00
description: A summary of ai news for March 2026
tags: AI
categories: internal-posts
pretty_table: true
toc:
  sidebar: left
---

> 报告周期：2026 年 3 月 1 日 - 3 月 31 日  
> 生成时间：2026 年 4 月 3 日

---

## 1. 月度核心事件时间线

| 日期       | 事件                                                                    | 影响等级 |
| ---------- | ----------------------------------------------------------------------- | -------- |
| 3 月 1 日  | Anthropic 因拒绝 AI 用于国内监控和自主武器遭美国政府制裁，宣布起诉      | 🔴 重大  |
| 3 月 1 日  | OpenAI 与美国战争部达成 AI 部署协议，划定三条红线                       | 🔴 重大  |
| 3 月 3 日  | 阿里千问团队开源 Qwen3.5 小模型系列（0.8B/2B/4B/9B）                    | 🟠 重要  |
| 3 月 4 日  | OpenAI 发布 GPT-5.3 Instant，优化交互体验                               | 🟠 重要  |
| 3 月 6 日  | OpenAI 发布 GPT-5.4，整合推理、代码、Agent 及计算机操控                 | 🔴 重大  |
| 3 月 10 日 | Anthropic 为 Claude Code 推出 Code Review 自动化审查功能                | 🟠 重要  |
| 3 月 11 日 | 谷歌发布 Gemini Embedding 2 原生多模态嵌入模型                          | 🟡 一般  |
| 3 月 12 日 | 英伟达发布 Nemotron 3 Super（120B 参数，1M 上下文）                     | 🟠 重要  |
| 3 月 14 日 | Claude 正式开放 100 万 token 上下文，取消阶梯定价                       | 🔴 重大  |
| 3 月 17 日 | **英伟达 GTC 大会**：Vera Rubin 平台、Groq 3 LPX、DLSS 5、Nemotron 联盟 | 🔴 重大  |
| 3 月 18 日 | OpenAI 发布 GPT-5.4 mini 与 nano 模型                                   | 🟠 重要  |
| 3 月 19 日 | MiniMax 发布 M2.7 模型，实现自我进化                                    | 🟠 重要  |
| 3 月 19 日 | 小米发布 MiMo 系列三款模型（V2-Pro/V2-Omni/V2-TTS）                     | 🟠 重要  |
| 3 月 20 日 | Cursor 发布 Composer 2 模型（基于 Kimi K2.5）                           | 🟠 重要  |
| 3 月 21 日 | Cursor 承认 Composer 2 基于 Kimi K2.5，月之暗面确认授权合作             | 🟡 一般  |
| 3 月 24 日 | Claude 桌面端上线 Computer Use 功能（限 macOS）                         | 🟠 重要  |
| 3 月 25 日 | OpenAI 官方宣布关闭 Sora 应用                                           | 🔴 重大  |
| 3 月 25 日 | LiteLLM 遭遇供应链攻击                                                  | 🟠 重要  |
| 3 月 27 日 | 谷歌发布 Gemini 3.1 Flash Live，支持 90 种语言                          | 🟠 重要  |
| 3 月 28 日 | **Anthropic 胜诉**，联邦法官裁定国防部禁用决定涉嫌非法报复              | 🔴 重大  |
| 3 月 28 日 | Anthropic 泄露未发布模型 Claude Mythos 信息                             | 🟠 重要  |
| 3 月 31 日 | 阿里千问发布 Qwen3.5-Omni 全模态系列模型                                | 🔴 重大  |
| 3 月 31 日 | 阿里千问上线 Qwen3.6 Plus Preview 模型                                  | 🟠 重要  |

---

## 2. 模型发布与技术进展

### 2.1 大语言模型

#### OpenAI

| 模型            | 发布时间   | 核心特性                                                          | 定价                     |
| --------------- | ---------- | ----------------------------------------------------------------- | ------------------------ |
| GPT-5.3 Instant | 3 月 4 日  | 减少拒答和说教，联网幻觉率降低 26.8%                              | -                        |
| **GPT-5.4**     | 3 月 6 日  | 整合推理/代码/Agent/计算机操控，1M 上下文，OSWorld-Verified 75.0% | 输入$2.5/M，输出$15/M    |
| GPT-5.4 Pro     | 3 月 6 日  | 旗舰版本                                                          | 输入$30/M，输出$180/M    |
| GPT-5.4 mini    | 3 月 18 日 | 速度提升 2 倍，性能逼近旗舰                                       | 输入$0.75/M，输出$4.50/M |
| GPT-5.4 nano    | 3 月 18 日 | 最小最轻量，专注分类与数据提取                                    | 输入$0.20/M，输出$1.25/M |

#### Google/DeepMind

| 模型                      | 发布时间   | 核心特性                                            |
| ------------------------- | ---------- | --------------------------------------------------- |
| Gemini 3.1 Flash-Lite     | 3 月 4 日  | 速度最快，输出速度比 2.5 Flash 快 45%               |
| Gemini Embedding 2        | 3 月 11 日 | 首个原生多模态 Embedding，支持文本/图像/音视频/文档 |
| **Gemini 3.1 Flash Live** | 3 月 27 日 | 支持 90+ 语言，对话上下文扩展至前代两倍             |
| Lyria 3 Pro               | 3 月 26 日 | 音乐生成，最长 3 分钟专业音轨                       |

#### Anthropic

| 更新                     | 时间          | 内容                                                        |
| ------------------------ | ------------- | ----------------------------------------------------------- |
| Claude 1M 上下文         | 3 月 14 日    | Opus 4.6/Sonnet 4.6 正式开放 100 万 token，取消长上下文溢价 |
| Claude Code Auto Mode    | 3 月 25 日    | 支持安全权限自主决策                                        |
| Claude Code Computer Use | 3 月 24/31 日 | macOS 平台支持鼠标键盘操控电脑                              |
| Claude Mythos（泄露）    | 3 月 28 日    | Opus 之上的第四档，网络能力极强，仅向安全防御机构开放       |

#### 阿里千问

| 模型                 | 时间       | 特性                                                     |
| -------------------- | ---------- | -------------------------------------------------------- |
| Qwen3.5 小模型系列   | 3 月 3 日  | 0.8B/2B/4B/9B 四款，原生多模态，262K 上下文              |
| Qwen3.5-Max-Preview  | 3 月 20 日 | LM Arena 1464 分，全球第六、国内第一                     |
| **Qwen3.5-Omni**     | 3 月 31 日 | 全模态（文本/图片/音频/音视频），256K 上下文，113 种语种 |
| Qwen3.6 Plus Preview | 3 月 31 日 | 1M 上下文，更强推理和 Agent 行为                         |

#### 智谱

| 模型        | 时间       | 特性                                               |
| ----------- | ---------- | -------------------------------------------------- |
| GLM-5-Turbo | 3 月 16 日 | 专为 Agent 优化，200K 上下文，ZClawBench 第一梯队  |
| GLM-5.1     | 3 月 28 日 | 处理长周期任务的新一代编程 Agent，4 月上旬正式发布 |

#### MiniMax

| 模型          | 时间       | 特性                                     |
| ------------- | ---------- | ---------------------------------------- |
| M2.7          | 3 月 19 日 | 自我进化，SWE-Pro 56.22%，接近 Opus 水平 |
| M2.7 开源计划 | 3 月 23 日 | 确认两周内开源权重                       |
| M3（预告）    | 3 月 23 日 | 将支持视觉功能                           |

#### 其他重要模型

| 公司         | 模型                 | 时间       | 特性                                             |
| ------------ | -------------------- | ---------- | ------------------------------------------------ |
| 小米         | MiMo V2-Pro/Omni/TTS | 3 月 19 日 | Pro:1T 总参数/42B 激活/1M 上下文                 |
| Mistral AI   | Mistral Small 4      | 3 月 17 日 | 119B 总参数，256K 上下文，Apache 2.0 开源        |
| Mistral AI   | Leanstral            | 3 月 17 日 | 首个 Lean 4 开源代码 Agent                       |
| 英伟达       | Nemotron 3 Super     | 3 月 12 日 | 120B 总参数/12B 激活，1M 上下文，吞吐量提升 5 倍 |
| 阶跃星辰     | Step 3.5 Flash       | 3 月 3 日  | 196B 总参数/11B 激活，256K 上下文                |
| 快手 KwaiKAT | KAT-Coder-Pro V2     | 3 月 28 日 | Agentic Coding 模型，针对 OpenClaw 优化          |

### 2.2 多模态与音视频模型

| 公司     | 模型                   | 时间       | 类型         | 特性                             |
| -------- | ---------------------- | ---------- | ------------ | -------------------------------- |
| 阿里通义 | Fun-CosyVoice 3.5      | 3 月 3 日  | 语音         | 生僻字读错率从 15.2% 降至 5.3%   |
| 阿里通义 | Fun-AudioGen-VD        | 3 月 3 日  | 音频生成     | 人物 + 场景音频                  |
| 阿里通义 | PrismAudio             | 3 月 25 日 | 视频生成音频 | ICLR 2026 收录，强化学习+CoT     |
| 阿里通义 | Fun-CineForge          | 3 月 17 日 | 多模态配音   | 影视级多场景配音                 |
| 腾讯     | Covo-Audio-Chat        | 3 月 17 日 | 语音         | 7B 参数，原生全双工              |
| 腾讯     | LeVo 2                 | 3 月 11 日 | 音乐         | 4 分半全曲生成，对标 Suno v5     |
| MiniMax  | Music 2.5+             | 3 月 5 日  | 音乐         | 纯音乐创作，中国乐器优化         |
| 小红书   | FireRed-OCR            | 3 月 3 日  | OCR          | OmniDocBench 92.94% 准确率       |
| 小红书   | FireRed-Image-Edit-1.1 | 3 月 10 日 | 图像编辑     | 角色身份保持 SOTA                |
| 美团龙猫 | LongCat-Next           | 3 月 26 日 | 多模态       | 68.5B 参数，DiNA 范式            |
| 美团龙猫 | LongCat-AudioDiT       | 3 月 31 日 | TTS          | 1B/3.5B，波形潜空间扩散          |
| Luma AI  | Uni-1                  | 3 月 24 日 | 多模态       | 推理视觉同步，RISEBench SOTA     |
| 爱诗科技 | PixVerse V6            | 3 月 31 日 | 视频         | 1080P 电影级控制                 |
| 昆仑万维 | SkyReels V4            | 3 月 20 日 | 视频         | Artificial Analysis 文生视频第一 |
| Meta     | SAM 3.1                | 3 月 28 日 | 图像分割     | 单次追踪 16 个目标               |

### 2.3 技术突破

| 技术             | 机构                  | 时间       | 描述                                                                       |
| ---------------- | --------------------- | ---------- | -------------------------------------------------------------------------- |
| **AttnRes**      | 月之暗面              | 3 月 17 日 | 替代 Transformer 标准残差连接，Block AttnRes 内存复杂度从 O(Ld) 降至 O(Nd) |
| **TurboQuant**   | Google Research       | 3 月 26 日 | KV 缓存量化至 3-bit 零精度损失，内存降低 6 倍，H100 上 8 倍加速            |
| **Groundsource** | Google Research       | 3 月 14 日 | 将新闻转化为结构化数据，构建 260 万条洪水事件数据集                        |
| **CUDA Agent**   | 字节 + 清华           | 3 月 3 日  | 强化学习生成 CUDA Kernel，KernelBench 几何平均加速 2.11 倍                 |
| **AgeMem**       | 阿里 + 武大           | 3 月 8 日  | 记忆管理嵌入 Agent 决策流程，强化学习端到端训练                            |
| **Self-Flow**    | Black Forest Labs+MIT | 3 月 5 日  | 自监督流匹配多模态生成，跨模态收敛速度提升 2.8 倍                          |
| **Mamba-3**      | Together AI+CMU       | 3 月 19 日 | 多输入多输出架构，推理效率优化                                             |

---

## 3. 开发生态与工具链

### 3.1 OpenClaw 生态爆发

3 月是 OpenClaw（"龙虾"）生态的爆发月，多家厂商推出基于 OpenClaw 的产品：

| 产品            | 公司     | 时间             | 特性                                  |
| --------------- | -------- | ---------------- | ------------------------------------- |
| QClaw           | 腾讯     | 3 月 13/20/21 日 | 微信入口，免配置，打通五大平台        |
| WorkBuddy       | 腾讯     | 3 月 10 日       | AI 原生桌面 Agent，兼容 OpenClaw 技能 |
| StepClaw        | 阶跃星辰 | 3 月 13/20 日    | 云端 Agent 服务，5 万免费名额         |
| ArkClaw         | 火山引擎 | 3 月 10 日       | 云上 SaaS 版，7×24 小时在线           |
| JVS Claw        | 阿里云   | 3 月 14/26 日    | 移动 App，12GB 内存云端 Linux 环境    |
| AutoClaw        | 智谱     | 3 月 11 日       | 本地一键部署，Pony-Alpha-2 模型       |
| GLM-Claw        | 智谱     | 3 月 22 日       | 成长型 AI 生命体，多 Agent 并行       |
| MaxClaw         | MiniMax  | 3 月 3/10 日     | 移动端，支持多 Agent 协作             |
| Loomy           | 讯飞     | 3 月 18 日       | 桌面助理，目录级隔离安全              |
| 红手指 Operator | 百度     | 3 月 13 日       | 手机端应用                            |
| PadClaw         | 联想     | 3 月 13 日       | 小新/YOGA 平板首发                    |
| NemoClaw        | 英伟达   | 3 月 17 日       | 企业级开源平台，安全与隐私控制        |

**OpenClaw 版本更新**：

- v2026.3.1 (3 月 3 日)：OpenAI WebSocket，Claude 4.6 自适应思考
- v2026.3.7 (3 月 9 日)：ACP 绑定，Discord threads 支持
- v2026.3.8 (3 月 10 日)：用户识别，备份命令
- v2026.3.12 (3 月 14 日)：Dashboard v2，/fast 模式
- v2026.3.13 (3 月 15 日)：实时 Chrome 会话附加
- v2026.3.22/3.23 (3 月 24 日)：ClawHub 插件市场，修复 UI 缺失
- v2026.3.24 (3 月 26 日)：Teams/Slack 支持
- v2026.3.28 (3 月 30 日)：插件审批，xAI 集成

### 3.2 编程 Agent 工具

#### Claude Code

| 功能                     | 时间          | 描述                              |
| ------------------------ | ------------- | --------------------------------- |
| Remote Control           | 3 月 1 日     | Pro 用户支持终端会话转移至手机    |
| Voice mode               | 3 月 4/13 日  | 按住空格键语音输入，仅支持英文    |
| /loop 命令               | 3 月 8 日     | 会话内周期性任务，最长 3 天       |
| /btw 命令                | 3 月 11 日    | 后台任务对话，不写入主记录        |
| Code Review              | 3 月 10 日    | 多 Agent 并行审查 PR，20 分钟完成 |
| Auto Mode                | 3 月 25 日    | 安全权限自主决策，Team 计划开放   |
| Computer Use             | 3 月 24/31 日 | macOS 平台鼠标键盘操控            |
| Channels                 | 3 月 21 日    | 手机远程操控，IM 插件             |
| Cloud Auto-fix           | 3 月 27 日    | PR 自动化修复                     |
| GitHub Enterprise Server | 3 月 31 日    | 支持自托管仓库                    |

#### Codex (OpenAI)

| 更新                    | 时间          | 描述                                      |
| ----------------------- | ------------- | ----------------------------------------- |
| Windows 应用发布        | 3 月 5 日     | Microsoft Store 下载，原生 Agent 沙盒开源 |
| GPT-5.4 上线            | 3 月 6 日     | 新增 fast 模式，1.5 倍速度                |
| Automations             | 3 月 14/20 日 | 仓库简报、Issue 分类自动化                |
| Subagent 机制           | 3 月 17 日    | 并行任务处理                              |
| Plugins                 | 3 月 27 日    | 技能与工具打包，Slack/Figma 集成          |
| Codex for Students      | 3 月 21 日    | 美加大学生$100 额度                       |
| Codex-only Plan（传闻） | 3 月 30 日    | 专属低价订阅计划                          |

#### Cursor

| 更新        | 时间          | 描述                                |
| ----------- | ------------- | ----------------------------------- |
| 2.6 版本    | 3 月 4 日     | MCP 应用，渲染 Figma/Amplitude 界面 |
| Automations | 3 月 6 日     | 云端 Agent，GitHub PR 等事件触发    |
| CursorBench | 3 月 13 日    | 混合评测体系，解决数据污染问题      |
| Composer 2  | 3 月 20/27 日 | 基于 Kimi K2.5，实时 RL，5 小时迭代 |
| Glass 界面  | 3 月 20 日    | 早期 Alpha 版新界面                 |

#### 其他工具

| 工具                | 公司          | 时间       | 特性                                    |
| ------------------- | ------------- | ---------- | --------------------------------------- |
| Junie CLI           | JetBrains     | 3 月 10 日 | Beta 测试，多厂商模型支持               |
| Air                 | JetBrains     | 3 月 11 日 | 多 Agent 并行，Docker/Git Worktree 隔离 |
| Z Code V0.22.1      | 智谱          | 3 月 15 日 | 浅色主题，OpenCode 接入                 |
| TRAE IDE            | -             | 3 月 20 日 | 登陆 Linux，三大系统兼容                |
| Hermes Agent v0.4.0 | Nous Research | 3 月 26 日 | Multi Agent Profiles，OpenAI 兼容 API   |
| Cline Kanban        | Cline         | 3 月 27 日 | 开源多 Agent 编排，git worktrees 隔离   |

### 3.3 Coding Plan 订阅服务

多家厂商推出面向 AI 编程的订阅服务：

| 服务                   | 公司          | 价格                        | 模型                          |
| ---------------------- | ------------- | --------------------------- | ----------------------------- |
| Coding Plan            | 腾讯云        | Lite 首月¥7.9/Pro 首月¥39.9 | 混元/智谱/Kimi/MiniMax        |
| GLM Coding Plan        | 智谱          | 多档位                      | GLM-5/GLM-5-Turbo/GLM-5.1     |
| Coding Plan            | 讯飞星辰 MaaS | 入门¥3.9/专业¥7.9/高效¥39.9 | GLM-5/MiniMax-M2.5 等         |
| Token Plan             | MiniMax       | 多档位                      | M2.7 + 全模态模型             |
| Step Plan              | 阶跃星辰      | ¥25/49/99/349               | Step 3.5 Flash                |
| JoyBuilder Coding Plan | 京东云        | Lite¥7.9/Pro¥39.9           | Kimi-K2.5/GLM-5/DeepSeek-V3.2 |

---

## 4. 产品应用与商业化

### 4.1 AI 硬件

| 产品            | 公司   | 时间       | 价格            | 特性                                 |
| --------------- | ------ | ---------- | --------------- | ------------------------------------ |
| 千问 AI 眼镜    | 阿里   | 3 月 3 日  | G1 系列¥1997 起 | 40g，3K 视频，多模态交互             |
| DGX Station     | 英伟达 | 3 月 17 日 | -               | GB300 芯片，748GB 显存，20 Petaflops |
| Arc Pro B70/B65 | 英特尔 | 3 月 26 日 | B70 $949        | 32GB 显存，367/197 TOPS              |

### 4.2 桌面/移动 Agent

| 产品                | 公司       | 时间          | 平台          | 特性                         |
| ------------------- | ---------- | ------------- | ------------- | ---------------------------- |
| Manus My Computer   | Meta       | 3 月 17 日    | macOS/Windows | 本地命令行操作，GPU 训练     |
| Perplexity Computer | Perplexity | 3 月 12/19 日 | iOS/Android   | 跨设备同步                   |
| Comet Enterprise    | Perplexity | 3 月 18 日    | 企业浏览器    | 集成 CrowdStrike Falcon      |
| QClaw               | 腾讯       | 3 月 21 日    | 全平台        | 微信入口，免邀请码           |
| 小云雀短剧 Agent    | 字节       | 3 月 20 日    | -             | Seedance 2.0，全流程自动制作 |

### 4.3 企业应用

| 产品                   | 公司      | 时间       | 特性                              |
| ---------------------- | --------- | ---------- | --------------------------------- |
| 悟空平台               | 阿里      | 3 月 18 日 | 企业级 AI 原生工作平台，内置钉钉  |
| DingTalk Workspace CLI | 钉钉      | 3 月 28 日 | 开源，11 业务域，19 Agent Skills  |
| wecom-cli              | 企业微信  | 3 月 31 日 | 开源，7 业务品类，12 Agent Skills |
| lark-cli               | 飞书      | 3 月 29 日 | 开源，11 业务域，19 Agent Skills  |
| Claude Marketplace     | Anthropic | 3 月 7 日  | 企业级，整合计费                  |
| Copilot Cowork         | 微软      | 3 月 9 日  | 自主任务执行，Work IQ 驱动        |
| Copilot Health         | 微软      | 3 月 13 日 | 健康数据整合，50+ 设备连接        |

### 4.4 其他产品更新

| 产品                       | 公司      | 时间         | 更新                                |
| -------------------------- | --------- | ------------ | ----------------------------------- |
| ChatGPT for Excel          | OpenAI    | 3 月 7 日    | GPT-5.4 Thinking 驱动，金融数据集成 |
| NotebookLM Cinematic Video | Google    | 3 月 5/16 日 | 电影级视频概览，向 Pro 用户开放     |
| Google Maps 升级           | Google    | 3 月 13 日   | Ask Maps + Immersive Navigation     |
| Adobe Photoshop AI         | Adobe     | 3 月 11 日   | Web/移动端 Beta，自然语言指令       |
| Gamma Imagine              | Gamma     | 3 月 18 日   | AI 原生视觉创作                     |
| Figma Canvas for Agents    | Figma     | 3 月 26 日   | AI Agent 直接读写文件               |
| WordPress MCP              | WordPress | 3 月 22 日   | AI Agent 内容写入权限               |

---

## 5. 核心公司技术路线对比分析

### 5.1 模型战略对比

| 维度           | OpenAI       | Anthropic         | Google       | 阿里千问       | 智谱       | MiniMax    |
| -------------- | ------------ | ----------------- | ------------ | -------------- | ---------- | ---------- |
| **旗舰模型**   | GPT-5.4      | Claude Opus 4.6   | Gemini 3     | Qwen3.5-Omni   | GLM-5.1    | M2.7       |
| **上下文**     | 1M           | 1M                | -            | 256K-1M        | 200K       | -          |
| **开源策略**   | 封闭         | 封闭              | 部分开源     | **全面开源**   | 部分开源   | 承诺开源   |
| **多模态**     | 原生集成     | 逐步增强          | 原生多模态   | **全模态统一** | 文本为主   | 全模态     |
| **Agent 能力** | Computer Use | Code/Computer Use | Agent 生态   | Agent 优化     | Agent 专用 | 自我进化   |
| **定价策略**   | 分层清晰     | 取消长文溢价      | 成本效益优先 | 免费 + 商用    | 订阅制     | Token 统一 |

### 5.2 技术路线差异

#### OpenAI：全能整合路线

- **策略**：将推理、代码、Agent、计算机操控整合到单一模型
- **优势**：用户体验统一，生态完整
- **风险**：模型复杂度极高，训练成本巨大
- **关键动作**：
  - 关闭 Sora 应用，集中算力研发下一代旗舰（SPUD）
  - 收购 Astral（uv/Ruff 开发者），强化 Codex 生态
  - 与 AWS 合作进军政府市场

#### Anthropic：安全优先路线

- **策略**：坚持 AI 安全红线，拒绝军事监控应用
- **优势**：获得公众信任，用户增长迅猛（日增百万）
- **风险**：失去政府合同，面临资金压力
- **关键动作**：
  - 起诉美国政府 17 个机构
  - 胜诉后加速 IPO 进程（Q4 筹资 600 亿美元）
  - 发布 Claude Mythos（仅向安全防御机构开放）

#### Google：生态整合路线

- **策略**：将 AI 深度整合到搜索、Workspace、Android 等全产品线
- **优势**：用户基数庞大，数据丰富
- **风险**：产品碎片化，体验不一致
- **关键动作**：
  - Gemini 3.1 Flash Live 支持 90+ 语言
  - Search Live 扩展至 200+ 国家
  - 完成收购 Wiz（云安全）

#### 阿里千问：开源领先路线

- **策略**：通过开源建立开发者生态，同时推进商业化
- **优势**：全球开发者活跃度高，品牌影响力强
- **风险**：核心团队离职风波（林俊旸等）
- **关键动作**：
  - 统一品牌为"千问"
  - 发布 Qwen3.5-Omni 全模态模型
  - 成立 Token Hub 事业群整合 AI 资源

#### 智谱：Agent 专用路线

- **策略**：专为 Agent 场景优化模型（GLM-5-Turbo）
- **优势**：垂直场景性能优异
- **风险**：通用能力相对较弱
- **关键动作**：
  - 推出 GLM-Claw 成长型 AI 生命体
  - 向老用户提供续订和回退窗口

#### MiniMax：自我进化路线

- **策略**：模型能够自行构建复杂 Agent 系统
- **优势**：M2.7 在 SWE-Pro 接近 Opus 水平
- **风险**：算力受限，高峰期限流
- **关键动作**：
  - 确认 M2.7 权重两周内开源
  - M3 将支持视觉功能

### 5.3 人才流动

| 人员          | 原公司    | 新去向                      | 时间       | 影响                                    |
| ------------- | --------- | --------------------------- | ---------- | --------------------------------------- |
| 林俊旸        | 阿里 Qwen | 离职休息                    | 3 月 4 日  | Qwen 团队动荡，CEO 吴泳铭内部信稳定军心 |
| 郁博文        | 阿里 Qwen | 字节 Seed（传闻）           | 3 月 13 日 | 后训练负责人流失                        |
| Max Schwarzer | OpenAI    | Anthropic                   | 3 月 4 日  | o1/o3/GPT-5 后训练负责人                |
| 郭达雅        | DeepSeek  | 接触大厂（传闻）            | 3 月 21 日 | DeepSeek-R1 核心作者                    |
| Dreamer 团队  | 独立      | Meta Superintelligence Labs | 3 月 25 日 | AI Agent 开发技术授权                   |

---

## 6. 行业动态与资本动向

### 6.1 重大事件

#### Anthropic vs 美国政府

- **3 月 1 日**：Anthropic 因拒绝 AI 用于国内监控和自主武器遭制裁
- **3 月 2 日**：美军在空袭伊朗行动中仍使用 Claude
- **3 月 6 日**：五角大楼正式将 Anthropic 列为供应链风险
- **3 月 9 日**：Anthropic 起诉 17 个联邦机构
- **3 月 28 日**：**Anthropic 胜诉**，法官裁定禁用决定涉嫌非法报复
- **影响**：Anthropic 日增用户超百万，加速 IPO 进程

#### OpenAI 军方合作

- **3 月 1 日**：与战争部达成协议，部署于机密网络
- **红线**：禁止国内监控、自主武器、高风险自动化决策
- **3 月 20 日**：与 AWS 签约，通过 AWS 向政府提供服务
- **用户反应**：ChatGPT 美区卸载量激增 295%，差评飙升 775%

#### 阿里 Qwen 团队离职风波

- **3 月 4 日**：负责人林俊旸及多名核心骨干离职
- **原因**：传闻算力资源分配、DAU 考核、管理层变动
- **3 月 6 日**：CEO 吴泳铭内部信确认离职，强调保持开源策略
- **后续**：阿里确认持续开源 Qwen 及 Wan 新模型

### 6.2 融资与并购

| 公司                      | 金额            | 估值     | 时间          | 用途                           |
| ------------------------- | --------------- | -------- | ------------- | ------------------------------ |
| **Nscale**                | $20 亿 C 轮     | $146 亿  | 3 月 6 日     | AI 基础设施，最早今年 IPO      |
| **Dify**                  | $3000 万 Pre-A  | -        | 3 月 11 日    | 开源 Agent 平台                |
| **Thinking Machines Lab** | Nvidia 战略投资 | >$120 亿 | 3 月 11 日    | 1GW Vera Rubin 系统部署        |
| **AMI Labs**              | $10.3 亿种子轮  | $35 亿   | 3 月 11 日    | Yann LeCun 创立，JEPA 世界模型 |
| **Replit**                | $4 亿           | $90 亿   | 3 月 12 日    | Agent 4 发布                   |
| **Mistral AI**            | $8.3 亿债务融资 | -        | 3 月 30 日    | 13800 块 GB300 GPU             |
| **月之暗面**              | 寻求$10 亿      | $180 亿  | 3 月 16/27 日 | 考虑香港 IPO                   |
| **Nebius + Meta**         | $270 亿协议     | -        | 3 月 17 日    | 5 年期 AI 基础设施             |

#### OpenAI 收购

| 目标      | 时间       | 目的                              |
| --------- | ---------- | --------------------------------- |
| Promptfoo | 3 月 10 日 | AI 安全测试，整合进 Frontier 平台 |
| Astral    | 3 月 20 日 | uv/Ruff 开发者，强化 Codex 生态   |

### 6.3 安全与合规

| 事件                     | 时间       | 影响                                     |
| ------------------------ | ---------- | ---------------------------------------- |
| LiteLLM 供应链攻击       | 3 月 25 日 | 1.82.7/1.82.8 版本植入恶意代码，窃取凭证 |
| GitHub 投毒攻击          | 3 月 30 日 | 20 万垃圾 Issue 污染 WSL 等项目          |
| Google API 密钥泄露风险  | 3 月 1 日  | 旧密钥自动获得 Gemini 访问权限           |
| SkillHub Prompt 注入风险 | 3 月 14 日 | Fenz AI 发现 Token 消耗放大 10-40%       |
| OpenAI Safety Bug Bounty | 3 月 26 日 | 聚焦 Agent 风险、信息泄露、账户完整性    |

### 6.4 政策与监管

| 事件                    | 时间       | 内容                                                   |
| ----------------------- | ---------- | ------------------------------------------------------ |
| 美国 AI 立法框架        | 3 月 22 日 | 六大领域：儿童保护、电网、知识产权、审查、创新、劳动力 |
| 中国 Token 命名         | 3 月 25 日 | 国家数据局局长明确"Token"中文为"词元"                  |
| 美国 AI 芯片出口管制    | 3 月 6 日  | 草案要求 Nvidia/AMD 全球出货需美政府批准               |
| 央视 3·15 曝光 GEO 投毒 | 3 月 16 日 | AI 搜索操纵黑产，2 小时即可污染 AI 推荐                |
| 美国最高法院 AI 版权    | 3 月 4 日  | 拒绝受理，维持纯 AI 生成作品无版权                     |

---

## 7. 月度趋势与洞察

### 7.1 核心趋势

#### 趋势一：Agent 成为竞争焦点

- **表现**：所有主流模型都在强化 Agent 能力（工具调用、计算机操控、长周期任务）
- **标志事件**：
  - OpenAI GPT-5.4 整合计算机操控
  - Claude Code Computer Use 上线
  - OpenClaw 生态爆发（15+ 产品）
  - 林俊旸发文：认知模式从"推理思维"转向"Agentic Thinking"
- **洞察**：2026 年是 AI Agent 元年，模型竞争从"谁能回答问题"转向"谁能完成任务"

#### 趋势二：上下文长度军备竞赛

- **表现**：1M 上下文成为旗舰标配
- **关键节点**：
  - Claude 1M 上下文取消溢价（3 月 14 日）
  - GPT-5.4 支持 1M（3 月 6 日）
  - Nemotron 3 Super 1M 上下文（3 月 12 日）
  - Qwen3.6 Plus Preview 1M 上下文（3 月 31 日）
  - MiMo V2-Pro 1M 上下文（3 月 19 日）
- **洞察**：长上下文从"卖点"变为"标配"，竞争焦点转向长上下文下的准确性

#### 趋势三：开源与闭源路线分化

- **开源阵营**：阿里千问、智谱、MiniMax、美团龙猫、阶跃星辰
- **闭源阵营**：OpenAI、Anthropic、Google（部分开源）
- **标志事件**：
  - Cursor Composer 2 基于 Kimi K2.5 引发争议（3 月 20 日）
  - 智谱/小米确认继续开源（3 月 21 日）
  - 阿里确认持续开源 Qwen/Wan（3 月 23 日）
  - MiniMax 确认 M2.7 两周内开源（3 月 23 日）
- **洞察**：中国厂商普遍选择开源建立生态，美国头部厂商保持闭源

#### 趋势四：AI 安全成为核心议题

- **表现**：安全从"附加功能"变为"核心竞争力"
- **标志事件**：
  - Anthropic 因安全红线与政府对峙并胜诉
  - OpenAI 发布 Safety Bug Bounty
  - Claude Mythos 仅向安全防御机构开放
  - LiteLLM 供应链攻击警示
- **洞察**：AI 安全能力将成为企业采购的关键决策因素

#### 趋势五：多模态向全模态演进

- **表现**：从"图文理解"到"文本 + 图片 + 音频 + 视频"统一处理
- **代表模型**：
  - Qwen3.5-Omni（3 月 31 日）
  - Gemini Embedding 2（3 月 11 日）
  - LongCat-Next（3 月 26 日）
  - Uni-1（3 月 24 日）
- **洞察**：全模态模型将重塑内容创作、客服、教育等场景

### 7.2 技术洞察

#### 洞察一：强化学习成为模型进化核心

- **证据**：
  - Cursor Composer 2 实时 RL，5 小时迭代
  - MiniMax M2.7 自我进化
  - CUDA Agent 强化学习生成 Kernel
  - AgeMem 强化学习端到端训练
- **趋势**：RL 从"后训练手段"变为"持续进化机制"

#### 洞察二：混合架构成为效率关键

- **证据**：
  - Nemotron 3 Super：Mamba-2 + MoE
  - Olmo Hybrid 7B：Transformer + 线性递归
  - Qwen3.5：Gated Delta Networks + 稀疏 MoE
  - Mamba-3：多输入多输出架构
- **趋势**：纯 Transformer 架构面临效率瓶颈，混合架构成为主流

#### 洞察三：量化与压缩技术突破

- **证据**：
  - TurboQuant：3-bit 零精度损失
  - Nemotron 3 Nano 4B：边缘端优化
  - Unsloth Studio：显存降低 70%
- **趋势**：端侧部署成为可能，AI 民主化加速

### 7.3 市场洞察

#### 洞察一：Coding Plan 订阅模式验证成功

- **证据**：腾讯云、智谱、讯飞、京东云、MiniMax、阶跃星辰均推出类似服务
- **价格区间**：首月¥3.9-39.9，常规¥20-349/月
- **趋势**：AI 编程从"按 Token 计费"转向"订阅制"，降低使用门槛

#### 洞察二：OpenClaw 成为中国 AI 生态基础设施

- **证据**：15+ 厂商基于 OpenClaw 推出产品，覆盖云/端/移动
- **趋势**：OpenClaw 可能成为中国版"AI 操作系统"，类似 Android 角色

#### 洞察三：政府市场成为新战场

- **证据**：
  - OpenAI 与 AWS 合作进军美国政府
  - Anthropic 与政府对抗后胜诉
  - 美国发布国家 AI 立法框架
- **趋势**：AI 公司需要在"商业利益"与"安全原则"间找到平衡

### 7.4 风险提示

1. **供应链安全风险**：LiteLLM 攻击事件警示开源依赖风险
2. **人才流失风险**：阿里 Qwen、DeepSeek 核心人员离职
3. **地缘政治风险**：美国 AI 芯片出口管制可能影响全球供应链
4. **安全滥用风险**：Claude Mythos 网络能力极强，需严格控制
5. **版权争议风险**：Cursor Composer 2 基于 Kimi 引发开源合规讨论

---

## 附录：重要链接汇总

### 模型发布

- [GPT-5.4 官方博客](https://openai.com/index/introducing-gpt-5-4/)
- [Qwen3.5-Omni 博客](https://qwen.ai/blog?id=qwen3.5-omni)
- [Claude 1M 上下文公告](https://claude.com/blog/1m-context-ga)

### 技术报告

- [Cursor Composer 2 技术报告](https://cursor.com/resources/Composer2.pdf)
- [AttnRes 论文](https://github.com/MoonshotAI/Attention-Residuals)
- [TurboQuant 博客](https://research.google/blog/turboquant-redefining-ai-efficiency-with-extreme-compression/)

### 安全与政策

- [Anthropic 诉讼文件](https://storage.courtlistener.com/recap/gov.uscourts.cand.465515/gov.uscourts.cand.465515.134.0.pdf)
- [美国 AI 立法框架](https://www.whitehouse.gov/articles/2026/03/president-donald-j-trump-unveils-national-ai-legislative-framework/)
- [OpenAI Model Spec](https://model-spec.openai.com/)

---

_本报告基于AI公开新闻整理，内容仅供参考。部分信息可能存在 AI 辅助创作导致的幻觉和错误，请以官方信息为准。_
