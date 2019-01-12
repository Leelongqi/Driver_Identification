<!DOCTYPE html>
<!-- saved from url=(0047)https://pandao.github.io/editor.md/#Heading%204 -->
<html lang="zh" class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" style="overflow: hidden;"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Cache-Control" content="no-siteapp">
		<meta name="renderer" content="webkit">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta name="keywords" content="Editor.md">
        <meta name="description" content="Editor.md: a simple online markdown editor.">
	    <meta name="author" content="pandao, pandao@vip.qq.com">
        <title>Editor.md - 开源在线 Markdown 编辑器</title>
        <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" type="text/css" href="./README_files/planeui.min.css">
        <link rel="stylesheet" href="./README_files/editormd.min.css">
        <link rel="stylesheet" type="text/css" href="./README_files/index.css">
    <link type="text/css" rel="stylesheet" href="./README_files/codemirror.min.css"><link type="text/css" rel="stylesheet" href="./README_files/dialog.css"><link type="text/css" rel="stylesheet" href="./README_files/matchesonscrollbar.css"><link type="text/css" rel="stylesheet" href="./README_files/foldgutter.css"><script id="-lib-codemirror-codemirror-min" type="text/javascript" src="./README_files/codemirror.min.js.download"></script><script id="-lib-codemirror-modes-min" type="text/javascript" src="./README_files/modes.min.js.download"></script><script id="-lib-codemirror-addons-min" type="text/javascript" src="./README_files/addons.min.js.download"></script><script id="-lib-marked-min" type="text/javascript" src="./README_files/marked.min.js.download"></script><script id="-lib-prettify-min" type="text/javascript" src="./README_files/prettify.min.js.download"></script><script id="-lib-raphael-min" type="text/javascript" src="./README_files/raphael.min.js.download"></script><script id="-lib-underscore-min" type="text/javascript" src="./README_files/underscore.min.js.download"></script><script id="-lib-flowchart-min" type="text/javascript" src="./README_files/flowchart.min.js.download"></script><script id="-lib-jquery-flowchart-min" type="text/javascript" src="./README_files/jquery.flowchart.min.js.download"></script><script id="-lib-sequence-diagram-min" type="text/javascript" src="./README_files/sequence-diagram.min.js.download"></script><link type="text/css" rel="stylesheet" href="./README_files/katex.min.css"><script id="-cdnjs-cloudflare-com-ajax-libs-KaTeX-0-3-0-katex-min" type="text/javascript" src="./README_files/katex.min.js.download"></script></head>
    <body style="overflow: hidden;">
        <a name="top"></a>
        <a href="https://pandao.github.io/editor.md/#top" class="fa fa-arrow-circle-up fa-3x pui-text-blue-400" id="go-to-top" style="display: none;"></a>
        <div class="pui-layout">
            <header class="pui-bg-blue page-header">
                <div class="pui-layout pui-layout-fixed pui-layout-fixed-1200 pui-layout-fixed-1360">
                    <h1 class="pui-text-center pui-text-xxxxxl page-title animated zoomInDown">
                        <a href="https://pandao.github.io/editor.md/index.html" class="pui-text-white">
                            <i class="editormd-logo editormd-logo-2x"></i><strong>Editor.md</strong>
                        </a>
                    </h1>
                    <p class="pui-text-center pui-text-xl animated zoomInDown">开源在线 Markdown 编辑器</p>
                    <div class="pui-text-center page-menu animated zoomInDown">
                        <ul class="pui-menu pui-menu-inline pui-menu-radius">
                            <li>
                                <a href="https://pandao.github.io/editor.md/#download"><i class="fa fa-cloud-download"></i> 下载安装</a>
                            </li>
                            <li>
                                <a href="https://pandao.github.io/editor.md/examples/index.html" target="_blank"><i class="fa fa-flask"></i> 使用示例 <i class="pui-arrow-down"></i></a>
                                <ul class="pui-menu pui-menu-dropdown pui-z-depth-2">
                                    <li>
                                        <a href="https://pandao.github.io/editor.md/examples/simple.html" target="_blank">简单示例</a>
                                    </li>
                                    <li>
                                        <a href="https://pandao.github.io/editor.md/examples/full.html" target="_blank">完整示例</a>
                                    </li>
                                    <li>
                                        <a href="https://pandao.github.io/editor.md/examples/html-preview-markdown-to-html.html" target="_blank">Markdown To HTML</a>
                                    </li>
                                    <li>
                                        <a href="https://pandao.github.io/editor.md/examples/form-get-value.html" target="_blank">表单取值</a>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="javascript:;" target="_blank">Markdown Extras</a>
                                        <ul class="pui-menu pui-menu-dropdown pui-z-depth-2">
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/toc.html" target="_blank">ToC (Table of Contents)</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/task-lists.html" target="_blank">GFM task lists</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/emoji.html" target="_blank">Emoji</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/@links.html" target="_blank">@链接</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/katex.html" target="_blank">TeX 科学公式 (基于 KaTeX)</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/flowchart.html" target="_blank">流程图 (FlowChart)</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/sequence-diagram.html" target="_blank">时序图 (Sequence diagram)</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/html-tags-decode.html" target="_blank">识别和解析 HTML 标签</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="javascript:;" target="_blank">自定义 Editor.md</a>
                                        <ul class="pui-menu pui-menu-dropdown pui-z-depth-2">
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/define-plugin.html" target="_blank">自定义插件</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/themes.html" target="_blank">自定义编辑器样式主题</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/custom-toolbar.html" target="_blank">自定义工具栏</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/custom-keyboard-shortcuts.html" target="_blank">自定义键盘快捷键</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/change-mode.html" target="_blank">变身为代码编辑器 (Change mode)</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/manually-load-modules.html" target="_blank">手动加载依赖模块文件</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/multi-editormd.html" target="_blank">多个 Editor.md 并存</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/readonly.html" target="_blank">只读模式</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/code-fold.html" target="_blank">代码折叠功能</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/sync-scrolling.html" target="_blank">设置双向、单向同步滚动</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/external-use.html" target="_blank">外部使用工具栏的操作方法和对话框</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/multi-languages.html" target="_blank">多语言支持</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/auto-height.html" target="_blank">自动高度</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/dynamic-create-editormd.html" target="_blank">动态创建Editor.md</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/search-replace.html" target="_blank">搜索替换功能</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/set-get-replace-selection.html" target="_blank">插入字符 / 设置和获取光标位置 / 设置、获取和替换选中的文本</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="javascript:;" target="_blank">事件处理</a>
                                        <ul class="pui-menu pui-menu-dropdown pui-z-depth-2">
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/on-off.html" target="_blank">On / Off (bind/unbind)</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/onload.html" target="_blank">Onload</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/onchange.html" target="_blank">Onchange</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/onresize.html" target="_blank">Onresize</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/onfullscreen.html" target="_blank">Onfullscreen / OnfullscreenExit</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/onpreviewing-onpreviewed.html" target="_blank">Onpreviewing / Onpreviewed</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/onwatch-onunwatch.html" target="_blank">Onwatch / Onunwatch</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/onscroll-onpreviewscroll.html" target="_blank">Onscroll / Onpreviewscroll</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="javascript:;" target="_blank">图片上传</a>
                                        <ul class="pui-menu pui-menu-dropdown pui-z-depth-2">
                                            <li>
                                                <a href="http://www.ipandao.com/editor.md/examples/image-upload.html" target="_blank">同域上传</a>
                                            </li>
                                            <li>
                                                <a href="http://www.ipandao.com/editor.md/examples/image-cross-domain-upload.html" target="_blank">跨域上传</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="javascript:;" target="_blank">使用 Require.js、Sea.js 和 Zepto.js</a>
                                        <ul class="pui-menu pui-menu-dropdown pui-z-depth-2">
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/use-requirejs.html" target="_blank">使用 Require.js</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/use-seajs.html" target="_blank">使用 Sea.js</a>
                                            </li>
                                            <li>
                                                <a href="https://pandao.github.io/editor.md/examples/use-zepto.html" target="_blank">使用 Zepto.js</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="https://pandao.github.io/editor.md/examples/index.html" target="_blank">更多示例...</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="https://pandao.github.io/editor.md/#dependents"><i class="fa fa-gears"></i> 依赖项目</a>
                            </li>
                            <li>
                                <a href="https://pandao.github.io/editor.md/#users"><i class="fa fa-users"></i> 主要用户</a>
                            </li>
                            <li>
                                <a href="https://pandao.github.io/editor.md/#license"><i class="fa fa-check"></i> License</a>
                            </li>
                            <li>
                                <a href="https://github.com/pandao/editor.md/blob/master/CHANGE.md" target="_blank"><i class="fa fa-refresh"></i> 更新记录</a>
                            </li>
                            <li>
                                <a href="https://github.com/pandao/editor.md/issues" target="_blank"><i class="fa fa-question-circle"></i> Issues</a>
                            </li>
                            <li>
                                <a href="https://github.com/pandao/editor.md" target="_blank"><i class="fa fa-github"></i> Github</a>
                            </li>
                            <li>
                                <a href="http://git.oschina.net/pandao/editor.md" target="_blank"><i class="fa fa-git"></i> Git@OSC</a>
                            </li>
                            <li>
                                <a href="https://pandao.github.io/editor.md/en.html"><i class="fa fa-language"></i> English</a>
                            </li>
                        </ul>
                    </div>
                    <div class="page-header-container">
                        <div class="editormd pui-z-depth-3 pui-bg-white editormd-vertical editormd-fullscreen" id="index-editormd" style="width: 1920px; height: 920px; border-radius: 0px; z-index: 120;"><textarea class="editormd-markdown-textarea" placeholder="Enjoy Markdown! coding now..." name="index-editormd-markdown-doc" style="display: none;"># 基于上海自然驾驶数据的停启事件进行司机识别
---
## 本项目成果
在2018 11th International Symposium on Computational Intelligence and Design (ISCID 2018) 发表了一篇EI论文：Driver Identification Based on Stop-and-Go Events Using Naturalistic Driving Data
---
### 数据预处理与可视化展示
- 数据描述：每两位司机驾驶同一辆车，共155个trips,大约共279w条数据记录
- 数据特征：每一条数据记录包括：车速、踏板角度、加速度、引擎速度等特征
- 数据缺失：原始收集的数据存在NULL 值，采用线性内插法（linear interpolation method）进行处理与赋值
- 可视化展示：部分数据特征随时间变化的一个样例图如下：
![]()
### 停启事件（stop-and-go）定义
- 在一次驾驶事件中，遇到交通拥堵或者红绿灯情况引起停启事件较为普遍，停启事件包括stop， waiting，go 三个阶段，其定义规则以及检测算法如下：
![]()
### 模型建立
- 采用随机森林（Random Forest）算法对司机进行训练，分类
1.训练输入：104个统计特征值（8个特征变量，每个特征变量具有13个统计特征值（MIN, MAX, MEAN, SD...）
2.训练输入：司机ID
- 识别准确率评判标准：AUC, 不同阶段的识别准确率（10-fold cross validation)如下图所示：
1.分类准确率：D1，D2
![classification1]()
2.分类准确率：D3，D4
![]()
3.分类准确率：D5，D6
![]()
###模型分析
- 前两个统计特征统计特征通过箱型图展示如下图
![]()
- 停启事件的三个阶段数据源可视化如下图
1. stop phase
![]()
2. waiting phase
![]()
3. go phase
![]()
- 基于不同数据源的模型分析
 * 模型I: acceleration and speed (AS) data
 * 模型II： acceleration and speed (AS) data **+** engine speed (ES) data
 * 模型III：acceleration and speed (AS) data+brake pedal (BP) data
 * 模型IV:  acceleration and speed (AS) data+engine speed (ES) data+brake pedal (BP) data

### 模型结果
* 四种模型的平均AUC值如下表格：
![]()
* 四种模型的灵敏度、特异度与准确率如下表格：
![]()
&gt; 结论：模型一分类准确率最低，但收集数据代价最低；模型四分类性能最高，但收集数据源代价较高
* 多数投票策略
 - 采用连续的5个事件进行测试，如果每5个事件的分类准确率都大于50%，则认为识别准确率为100%
 &gt; 结论：采用连续5个停启事件去预测司机ID, 模型I(only use speed data)能达到100%，测试结果如下图
 ![]()

</textarea><div class="CodeMirror cm-s-default CodeMirror-wrap CodeMirror-focused" style="font-size: 13px; width: 961px; margin-top: 43px; height: 878px;"><div style="overflow: hidden; position: relative; width: 3px; height: 0px; top: 595px; left: 147px;"><textarea autocorrect="off" autocapitalize="off" spellcheck="false" style="position: absolute; padding: 0px; width: 1000px; height: 1em; outline: none;" tabindex="0"></textarea></div><div class="CodeMirror-vscrollbar" cm-not-content="true" style="display: block; bottom: 0px;"><div style="min-width: 1px; height: 1276px;"></div></div><div class="CodeMirror-hscrollbar" cm-not-content="true"><div style="height: 100%; min-height: 1px; width: 0px;"></div></div><div class="CodeMirror-scrollbar-filler" cm-not-content="true"></div><div class="CodeMirror-gutter-filler" cm-not-content="true"></div><div class="CodeMirror-scroll" tabindex="-1"><div class="CodeMirror-sizer" style="margin-left: 48px; margin-bottom: -7px; border-right-width: 23px; min-height: 1273px; padding-right: 7px; padding-bottom: 0px;"><div style="position: relative; top: 0px;"><div class="CodeMirror-lines"><div style="position: relative; outline: none;"><div class="CodeMirror-measure"><pre>x</pre><div class="CodeMirror-linenumber CodeMirror-gutter-elt"><div>55</div></div></div><div class="CodeMirror-measure"><pre><span style="padding-right: 0.1px;"><span class="cm-header cm-header-3">### End</span></span></pre></div><div style="position: relative; z-index: 1;"></div><div class="CodeMirror-cursors CodeMirror-overwrite" style=""><div class="CodeMirror-cursor" style="left: 99px; top: 989px; height: 23px;">&nbsp;</div></div><div class="CodeMirror-code" style=""><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">1</div><div class="CodeMirror-gutter-elt" style="left: 38px; width: 9px;"><div class="CodeMirror-foldgutter-open CodeMirror-guttermarker-subtle"></div></div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-header cm-header-1"># 基于上海自然驾驶数据的停启事件进行司机识别</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">2</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-hr">---</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">3</div><div class="CodeMirror-gutter-elt" style="left: 38px; width: 9px;"><div class="CodeMirror-foldgutter-open CodeMirror-guttermarker-subtle"></div></div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-header cm-header-2">## 本项目成果</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">4</div><div class="CodeMirror-gutter-elt" style="left: 38px; width: 9px;"><div class="CodeMirror-foldgutter-open CodeMirror-guttermarker-subtle"></div></div></div><pre class=""><span style="padding-right: 0.1px;">在2018 11th International Symposium on Computational Intelligence and Design (ISCID 2018) 发表了一篇EI论文：Driver Identification Based on Stop-and-Go Events Using Naturalistic Driving Data</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">5</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-header cm-header-2">---</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">6</div><div class="CodeMirror-gutter-elt" style="left: 38px; width: 9px;"><div class="CodeMirror-foldgutter-open CodeMirror-guttermarker-subtle"></div></div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-header cm-header-3">### 数据预处理与可视化展示</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">7</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-variable-2">- 数据描述：每两位司机驾驶同一辆车，共155个trips,大约共279w条数据记录</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">8</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-variable-2">- 数据特征：每一条数据记录包括：车速、踏板角度、加速度、引擎速度等特征</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">9</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-variable-2">- 数据缺失：原始收集的数据存在NULL 值，采用线性内插法（linear interpolation method）进行处理与赋值</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">10</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-variable-2">- 可视化展示：部分数据特征随时间变化的一个样例图如下：</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">11</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-tag">![]</span><span class="cm-string">()</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">12</div><div class="CodeMirror-gutter-elt" style="left: 38px; width: 9px;"><div class="CodeMirror-foldgutter-open CodeMirror-guttermarker-subtle"></div></div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-header cm-header-3">### 停启事件（stop-and-go）定义</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">13</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-variable-2">- 在一次驾驶事件中，遇到交通拥堵或者红绿灯情况引起停启事件较为普遍，停启事件包括stop， waiting，go 三个阶段，其定义规则以及检测算法如下：</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">14</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-tag">![]</span><span class="cm-string">()</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">15</div><div class="CodeMirror-gutter-elt" style="left: 38px; width: 9px;"><div class="CodeMirror-foldgutter-open CodeMirror-guttermarker-subtle"></div></div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-header cm-header-3">### 模型建立</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">16</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-variable-2">- 采用随机森林（Random Forest）算法对司机进行训练，分类</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">17</div></div><pre class=""><span style="padding-right: 0.1px;">1.训练输入：104个统计特征值（8个特征变量，每个特征变量具有13个统计特征值（MIN, MAX, MEAN, SD...）</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">18</div></div><pre class=""><span style="padding-right: 0.1px;">2.训练输入：司机ID</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">19</div></div><pre class=""><span style="padding-right: 0.1px;">- 识别准确率评判标准：AUC, 不同阶段的识别准确率（10-fold cross validation)如下图所示：</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">20</div></div><pre class=""><span style="padding-right: 0.1px;">1.分类准确率：D1，D2</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">21</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-tag">![classification1]</span><span class="cm-string">()</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">22</div></div><pre class=""><span style="padding-right: 0.1px;">2.分类准确率：D3，D4</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">23</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-tag">![]</span><span class="cm-string">()</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">24</div></div><pre class=""><span style="padding-right: 0.1px;">3.分类准确率：D5，D6</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">25</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-tag">![]</span><span class="cm-string">()</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">26</div><div class="CodeMirror-gutter-elt" style="left: 38px; width: 9px;"><div class="CodeMirror-foldgutter-open CodeMirror-guttermarker-subtle"></div></div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-header cm-header-3">###模型分析</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">27</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-variable-2">- 前两个统计特征统计特征通过箱型图展示如下图</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">28</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-tag">![]</span><span class="cm-string">()</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">29</div></div><pre class=""><span style="padding-right: 0.1px;">- 停启事件的三个阶段数据源可视化如下图</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">30</div></div><pre class=""><span style="padding-right: 0.1px;">1. stop phase</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">31</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-tag">![]</span><span class="cm-string">()</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">32</div></div><pre class=""><span style="padding-right: 0.1px;">2. waiting phase</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">33</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-tag">![]</span><span class="cm-string">()</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">34</div></div><pre class=""><span style="padding-right: 0.1px;">3. go phase</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">35</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-tag">![]</span><span class="cm-string">()</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">36</div></div><pre class=""><span style="padding-right: 0.1px;">- 基于不同数据源的模型分析</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">37</div></div><pre class=""><span style="padding-right: 0.1px;"> <span class="cm-em">* 模型I: acceleration and speed (AS) data</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">38</div></div><pre class=""><span style="padding-right: 0.1px;"> <span class="cm-em">*</span> 模型II： acceleration and speed (AS) data <span class="cm-strong">**+**</span> engine speed (ES) data</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">39</div></div><pre class=""><span style="padding-right: 0.1px;"> <span class="cm-em">* 模型III：acceleration and speed (AS) data+brake pedal (BP) data</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">40</div></div><pre class=""><span style="padding-right: 0.1px;"> <span class="cm-em">*</span> 模型IV:  acceleration and speed (AS) data+engine speed (ES) data+brake pedal (BP) data</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">41</div></div><pre class=""><span style="padding-right: 0.1px;"><span cm-text="">​</span></span></pre></div><div style="position: relative;" class="CodeMirror-activeline"><div class="CodeMirror-activeline-background CodeMirror-linebackground"></div><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">42</div><div class="CodeMirror-gutter-elt" style="left: 38px; width: 9px;"><div class="CodeMirror-foldgutter-open CodeMirror-guttermarker-subtle"></div></div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-header cm-header-3">### 模型结果</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">43</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-variable-2">* 四种模型的平均AUC值如下表格：</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">44</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-tag">![]</span><span class="cm-string">()</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">45</div></div><pre class=""><span style="padding-right: 0.1px;">* 四种模型的灵敏度、特异度与准确率如下表格：</span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">46</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-tag">![]</span><span class="cm-string">()</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">47</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-quote cm-quote-1">&gt; 结论：模型一分类准确率最低，但收集数据代价最低；模型四分类性能最高，但收集数据源代价较高</span></span></pre></div><div style="position: relative;" class=""><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">48</div></div><pre class=""><span style="padding-right: 0.1px;"><span class="cm-quote cm-quote-1">* 多数投票策略</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">49</div></div><pre class=""><span style="padding-right: 0.1px;"> <span class="cm-comment">- 采用连续的5个事件进行测试，如果每5个事件的分类准确率都大于50%，则认为识别准确率为100%</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">50</div></div><pre class=""><span style="padding-right: 0.1px;"> <span class="cm-comment">&gt; 结论：采用连续5个停启事件去预测司机ID, 模型I(only use speed data)能达到100%，测试结果如下图</span></span></pre></div><div class="" style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">51</div></div><pre class=""><span style="padding-right: 0.1px;"> <span class="cm-comment">![]()</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">52</div></div><pre class=""><span style="padding-right: 0.1px;"><span cm-text="">​</span></span></pre></div><div style="position: relative;"><div class="CodeMirror-gutter-wrapper" style="left: -48px; width: 48px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 20px;">53</div></div><pre class=""><span style="padding-right: 0.1px;"><span cm-text="">​</span></span></pre></div></div></div></div></div></div><div style="position: absolute; height: 23px; width: 1px; top: 1273px;"></div><div class="CodeMirror-gutters" style="height: 1296px;"><div class="CodeMirror-gutter CodeMirror-linenumbers" style="width: 28px;"></div><div class="CodeMirror-gutter CodeMirror-foldgutter"></div></div></div></div><a href="javascript:;" class="fa fa-close editormd-preview-close-btn"></a>

<div class="editormd-preview" style="display: block; width: 960px; top: 43px; height: 878px;"><div class="markdown-body editormd-preview-container" previewcontainer="true" style="padding: 20px;"><h1 id="h1-u57FAu4E8Eu4E0Au6D77u81EAu7136u9A7Eu9A76u6570u636Eu7684u505Cu542Fu4E8Bu4EF6u8FDBu884Cu53F8u673Au8BC6u522B"><a name="基于上海自然驾驶数据的停启事件进行司机识别" class="reference-link"></a><span class="header-link octicon octicon-link"></span>基于上海自然驾驶数据的停启事件进行司机识别</h1><hr>
<h2 id="h2-u672Cu9879u76EEu6210u679C"><a name="本项目成果" class="reference-link"></a><span class="header-link octicon octicon-link"></span>本项目成果</h2><h2 id="h2--2018-11th-international-symposium-on-computational-intelligence-and-design-iscid-2018-ei-driver-identification-based-on-stop-and-go-events-using-naturalistic-driving-data"><a name="在2018 11th International Symposium on Computational Intelligence and Design (ISCID 2018) 发表了一篇EI论文：Driver Identification Based on Stop-and-Go Events Using Naturalistic Driving Data" class="reference-link"></a><span class="header-link octicon octicon-link"></span>在2018 11th International Symposium on Computational Intelligence and Design (ISCID 2018) 发表了一篇EI论文：Driver Identification Based on Stop-and-Go Events Using Naturalistic Driving Data</h2><h3 id="h3-u6570u636Eu9884u5904u7406u4E0Eu53EFu89C6u5316u5C55u793A"><a name="数据预处理与可视化展示" class="reference-link"></a><span class="header-link octicon octicon-link"></span>数据预处理与可视化展示</h3><ul>
<li>数据描述：每两位司机驾驶同一辆车，共155个trips,大约共279w条数据记录</li><li>数据特征：每一条数据记录包括：车速、踏板角度、加速度、引擎速度等特征</li><li>数据缺失：原始收集的数据存在NULL 值，采用线性内插法（linear interpolation method）进行处理与赋值</li><li>可视化展示：部分数据特征随时间变化的一个样例图如下：<br><img src="https://pandao.github.io/editor.md/" alt=""><h3 id="h3--stop-and-go-"><a name="停启事件（stop-and-go）定义" class="reference-link"></a><span class="header-link octicon octicon-link"></span>停启事件（stop-and-go）定义</h3></li><li>在一次驾驶事件中，遇到交通拥堵或者红绿灯情况引起停启事件较为普遍，停启事件包括stop， waiting，go 三个阶段，其定义规则以及检测算法如下：<br><img src="https://pandao.github.io/editor.md/" alt=""><h3 id="h3-u6A21u578Bu5EFAu7ACB"><a name="模型建立" class="reference-link"></a><span class="header-link octicon octicon-link"></span>模型建立</h3></li><li>采用随机森林（Random Forest）算法对司机进行训练，分类<br>1.训练输入：104个统计特征值（8个特征变量，每个特征变量具有13个统计特征值（MIN, MAX, MEAN, SD…）<br>2.训练输入：司机ID</li><li>识别准确率评判标准：AUC, 不同阶段的识别准确率（10-fold cross validation)如下图所示：<br>1.分类准确率：D1，D2<br><img src="https://pandao.github.io/editor.md/" alt="classification1"><br>2.分类准确率：D3，D4<br><img src="https://pandao.github.io/editor.md/" alt=""><br>3.分类准确率：D5，D6<br><img src="https://pandao.github.io/editor.md/" alt=""><h3 id="h3-u6A21u578Bu5206u6790"><a name="模型分析" class="reference-link"></a><span class="header-link octicon octicon-link"></span>模型分析</h3></li><li>前两个统计特征统计特征通过箱型图展示如下图<br><img src="https://pandao.github.io/editor.md/" alt=""></li><li>停启事件的三个阶段数据源可视化如下图</li></ul>
<ol>
<li>stop phase<br><img src="https://pandao.github.io/editor.md/" alt=""></li><li>waiting phase<br><img src="https://pandao.github.io/editor.md/" alt=""></li><li>go phase<br><img src="https://pandao.github.io/editor.md/" alt=""></li></ol>
<ul>
<li>基于不同数据源的模型分析<ul>
<li>模型I: acceleration and speed (AS) data</li><li>模型II： acceleration and speed (AS) data <strong>+</strong> engine speed (ES) data</li><li>模型III：acceleration and speed (AS) data+brake pedal (BP) data</li><li>模型IV:  acceleration and speed (AS) data+engine speed (ES) data+brake pedal (BP) data</li></ul>
</li></ul>
<h3 id="h3-u6A21u578Bu7ED3u679C"><a name="模型结果" class="reference-link"></a><span class="header-link octicon octicon-link"></span>模型结果</h3><ul>
<li>四种模型的平均AUC值如下表格：<br><img src="https://pandao.github.io/editor.md/" alt=""></li><li>四种模型的灵敏度、特异度与准确率如下表格：<br><img src="https://pandao.github.io/editor.md/" alt=""><blockquote>
<p>结论：模型一分类准确率最低，但收集数据代价最低；模型四分类性能最高，但收集数据源代价较高</p>
</blockquote>
</li><li>多数投票策略<ul>
<li>采用连续的5个事件进行测试，如果每5个事件的分类准确率都大于50%，则认为识别准确率为100%<blockquote>
<p>结论：采用连续5个停启事件去预测司机ID, 模型I(only use speed data)能达到100%，测试结果如下图<br><img src="https://pandao.github.io/editor.md/" alt=""></p>
</blockquote>
</li></ul>
</li></ul>
</div></div>
<div class="editormd-container-mask" style="display: none;"></div>
<div class="editormd-mask"></div><div class="editormd-toolbar" style="display: block; position: absolute; width: 100%; left: 0px;"><div class="editormd-toolbar-container"><ul class="editormd-menu"><li><a href="javascript:;" title="撤销（Ctrl+Z）" unselectable="on"><i class="fa fa-undo" name="undo" unselectable="on"></i></a></li><li><a href="javascript:;" title="重做（Ctrl+Y）" unselectable="on"><i class="fa fa-repeat" name="redo" unselectable="on"></i></a></li><li class="divider" unselectable="on">|</li><li><a href="javascript:;" title="粗体" unselectable="on"><i class="fa fa-bold" name="bold" unselectable="on"></i></a></li><li><a href="javascript:;" title="删除线" unselectable="on"><i class="fa fa-strikethrough" name="del" unselectable="on"></i></a></li><li><a href="javascript:;" title="斜体" unselectable="on"><i class="fa fa-italic" name="italic" unselectable="on"></i></a></li><li><a href="javascript:;" title="引用" unselectable="on"><i class="fa fa-quote-left" name="quote" unselectable="on"></i></a></li><li><a href="javascript:;" title="将每个单词首字母转成大写" unselectable="on"><i class="fa" name="ucwords" style="font-size:20px;margin-top: -3px;">Aa</i></a></li><li><a href="javascript:;" title="将所选转换成大写" unselectable="on"><i class="fa fa-font" name="uppercase" unselectable="on"></i></a></li><li><a href="javascript:;" title="将所选转换成小写" unselectable="on"><i class="fa" name="lowercase" style="font-size:24px;margin-top: -10px;">a</i></a></li><li class="divider" unselectable="on">|</li><li><a href="javascript:;" title="标题1" unselectable="on"><i class="fa editormd-bold" name="h1" unselectable="on">H1</i></a></li><li><a href="javascript:;" title="标题2" unselectable="on"><i class="fa editormd-bold" name="h2" unselectable="on">H2</i></a></li><li><a href="javascript:;" title="标题3" unselectable="on"><i class="fa editormd-bold" name="h3" unselectable="on">H3</i></a></li><li><a href="javascript:;" title="标题4" unselectable="on"><i class="fa editormd-bold" name="h4" unselectable="on">H4</i></a></li><li><a href="javascript:;" title="标题5" unselectable="on"><i class="fa editormd-bold" name="h5" unselectable="on">H5</i></a></li><li><a href="javascript:;" title="标题6" unselectable="on"><i class="fa editormd-bold" name="h6" unselectable="on">H6</i></a></li><li class="divider" unselectable="on">|</li><li><a href="javascript:;" title="无序列表" unselectable="on"><i class="fa fa-list-ul" name="list-ul" unselectable="on"></i></a></li><li><a href="javascript:;" title="有序列表" unselectable="on"><i class="fa fa-list-ol" name="list-ol" unselectable="on"></i></a></li><li><a href="javascript:;" title="横线" unselectable="on"><i class="fa fa-minus" name="hr" unselectable="on"></i></a></li><li class="divider" unselectable="on">|</li><li><a href="javascript:;" title="链接" unselectable="on"><i class="fa fa-link" name="link" unselectable="on"></i></a></li><li><a href="javascript:;" title="引用链接" unselectable="on"><i class="fa fa-anchor" name="reference-link" unselectable="on"></i></a></li><li><a href="javascript:;" title="添加图片" unselectable="on"><i class="fa fa-picture-o" name="image" unselectable="on"></i></a></li><li><a href="javascript:;" title="行内代码" unselectable="on"><i class="fa fa-code" name="code" unselectable="on"></i></a></li><li><a href="javascript:;" title="预格式文本 / 代码块（缩进风格）" unselectable="on"><i class="fa fa-file-code-o" name="preformatted-text" unselectable="on"></i></a></li><li><a href="javascript:;" title="代码块（多语言风格）" unselectable="on"><i class="fa fa-file-code-o" name="code-block" unselectable="on"></i></a></li><li><a href="javascript:;" title="添加表格" unselectable="on"><i class="fa fa-table" name="table" unselectable="on"></i></a></li><li><a href="javascript:;" title="日期时间" unselectable="on"><i class="fa fa-clock-o" name="datetime" unselectable="on"></i></a></li><li><a href="javascript:;" title="Emoji表情" unselectable="on"><i class="fa fa-smile-o" name="emoji" unselectable="on"></i></a></li><li><a href="javascript:;" title="HTML实体字符" unselectable="on"><i class="fa fa-copyright" name="html-entities" unselectable="on"></i></a></li><li><a href="javascript:;" title="插入分页符" unselectable="on"><i class="fa fa-newspaper-o" name="pagebreak" unselectable="on"></i></a></li><li class="divider" unselectable="on">|</li><li><a href="javascript:;" title="跳转到行" unselectable="on"><i class="fa fa-terminal" name="goto-line" unselectable="on"></i></a></li><li><a href="javascript:;" title="关闭实时预览" unselectable="on"><i class="fa fa-eye-slash" name="watch" unselectable="on"></i></a></li><li><a href="javascript:;" title="全窗口预览HTML（按 Shift + ESC还原）" unselectable="on"><i class="fa fa-desktop" name="preview" unselectable="on"></i></a></li><li><a href="javascript:;" title="全屏（按ESC还原）" unselectable="on" class="active"><i class="fa fa-arrows-alt" name="fullscreen" unselectable="on"></i></a></li><li><a href="javascript:;" title="清空" unselectable="on"><i class="fa fa-eraser" name="clear" unselectable="on"></i></a></li><li><a href="javascript:;" title="搜索" unselectable="on"><i class="fa fa-search" name="search" unselectable="on"></i></a></li><li class="divider" unselectable="on">|</li><li><a href="javascript:;" title="使用帮助" unselectable="on"><i class="fa fa-question-circle" name="help" unselectable="on"></i></a></li><li><a href="javascript:;" title="关于Editor.md" unselectable="on"><i class="fa fa-info-circle" name="info" unselectable="on"></i></a></li></ul></div></div></div>                        
                    </div>
                </div>
            </header>
            <div class="pui-grid pui-layout pui-layout-fixed pui-layout-fixed-1200 page-content">
                <div class="pui-row">
                    <div class="pui-grid-xs-12 pui-grid-sm-4 pui-grid-md-4">
                        <a name="download"></a>
                        <div class="pui-card pui-card-simple">
                            <div class="pui-card-title">
                                <h1>下载和安装</h1>
                            </div>
                            <div class="pui-card-box">
                                <p>最新版本： v1.5.0，更新于 2015-06-09</p>
                                <p><a href="https://github.com/pandao/editor.md/archive/master.zip" class="pui-btn pui-btn-secondary"><i class="fa fa-lg fa-github"></i> Github下载</a></p>
                                <br>
                                <p><img src="./README_files/editor.md.svg"> <img src="./README_files/editor.md(1).svg"></p>
                                <br>
                                <p>或者通过 Bower 安装：</p>
                                <p><code>bower install editor.md</code></p>
                                <p><img src="./README_files/editor.md(2).svg"></p>
                                <br>
                                <p><strong class="pui-text-md">更新日志：</strong></p>
                                <p><a href="https://github.com/pandao/editor.md/blob/master/CHANGE.md" class="pui-link" target="_blank">CHANGES</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="pui-grid-xs-12 pui-grid-sm-4 pui-grid-md-4">                        
                        <a name="dependents"></a>
                        <div class="pui-card pui-card-simple">
                            <div class="pui-card-title">
                                <h1>依赖项目</h1>
                            </div>
                            <div class="pui-card-box">
                                <p>Editor.md 的诞生依赖于以下开源项目：</p>
                                <ul>
                                    <li>
                                        <a href="http://codemirror.net/" title="CodeMirror" target="_blank">CodeMirror</a>
                                    </li>
                                    <li>
                                        <a href="https://github.com/chjj/marked" title="marked" target="_blank">marked</a>
                                    </li>
                                    <li>
                                        <a href="http://jquery.com/" title="jQuery" target="_blank">jQuery</a>
                                    </li>
                                    <li>
                                        <a href="http://fontawesome.io/" title="FontAwesome" target="_blank">FontAwesome</a>
                                    </li>
                                    <li>
                                        <a href="https://github.com/sindresorhus/github-markdown-css" title="github-markdown.css" target="_blank">github-markdown.css</a>
                                    </li>
                                    <li>
                                        <a href="http://khan.github.io/KaTeX/" title="KaTeX" target="_blank">KaTeX</a>
                                    </li>
                                    <li>
                                        <a href="http://raphaeljs.com/" title="Rephael.js" target="_blank">Rephael.js</a>
                                    </li>
                                    <li>
                                        <a href="http://code.google.com/p/google-code-prettify/" title="prettify.js" target="_blank">prettify.js</a>
                                    </li>
                                    <li>
                                        <a href="http://adrai.github.io/flowchart.js/" title="flowchart.js" target="_blank">flowchart.js</a>
                                    </li>
                                    <li>
                                        <a href="http://bramp.github.io/js-sequence-diagrams/" title="sequence-diagram.js" target="_blank">sequence-diagram.js</a>
                                    </li>
                                    <li>
                                        <a href="https://github.com/pandao/prefixes.scss" title="Prefixes.scss" target="_blank">Prefixes.scss</a>
                                    </li>
                                </ul>
                                <br>
                                <p>开发构建使用到的项目及工具：</p>
                                <ul>
                                    <li>
                                        <a href="https://github.com/adobe/brackets/" title="Adobe Brackets" target="_blank">Brackets（推荐使用）</a>
                                    </li>
                                    <li>
                                        <a href="http://sass-lang.com/" title="Sass/Scss" target="_blank">Sass/Scss</a>
                                    </li>
                                    <li>
                                        <a href="http://gulpjs.com/" title="Gulp.js" target="_blank">Gulp.js</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pui-grid-xs-12 pui-grid-sm-4 pui-grid-md-4">                
                        <a name="license"></a>
                        <div class="pui-card pui-card-simple">
                            <div class="pui-card-title">
                                <h1>开源协议</h1>
                            </div>
                            <div class="pui-card-box">
                                <p>Editor.md 建立在众多优秀的开源组件基础之上，遵循和使用 <a href="https://github.com/pandao/editor.md/blob/master/LICENSE" class="pui-link" target="_blank">MIT License</a> 开源协议，无论个人还是公司，都可以免费自由使用。</p>
                                <br>
                                <p><a href="https://github.com/pandao/editor.md/issues/new" class="pui-btn pui-btn-secondary" target="_blank" title="提交Bug或建议"><i class="fa fa-lg fa-github"></i> 提交 Bug 或建议</a></p>
                                <p><img src="./README_files/editor.md(3).svg"></p>
                                <div class="github-buttons">
                                    <p>关注和贡献代码：</p>
                                    <p><iframe src="./README_files/github-btn.html" frameborder="0" scrolling="0" width="160px" height="30px"></iframe></p>
                                    <p><iframe src="./README_files/github-btn(1).html" frameborder="0" scrolling="0" width="160px" height="30px"></iframe></p>
                                    <p><iframe src="./README_files/github-btn(2).html" frameborder="0" scrolling="0" width="160px" height="30px"></iframe>
</p>
                                </div>
                            </div>
                        </div>                        
                    </div>
                </div>
            </div>
            <hr class="pui-hr pui-layout-fixed pui-layout-fixed-1200">
            <div class="pui-grid pui-layout pui-layout-fixed pui-layout-fixed-1200 page-content">
                <div class="pui-row">
                    <div class="pui-grid-xs-12">
                        <a name="users"></a>
                        <div class="pui-card pui-card-simple">
                            <div class="pui-card-title">
                                <h1 class="pui-text-center">主要用户</h1>
                            </div>
                            <div class="pui-card-box">
                                <ul class="pui-menu pui-menu-inline case-list">
                                    <li>
                                        <a href="http://www.youdao.com/" target="_blank" title="网易有道">
                                            <img src="./README_files/youdao.jpg" alt="网易有道">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="http://www.yy.com/" target="_blank" title="YY.com">
                                            <img src="./README_files/yy.jpg" alt="YY.com">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="http://www.jumei.com/" target="_blank" title="聚美优品">
                                            <img src="./README_files/jumei.jpg" alt="聚美优品">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="http://www.9you.com/" target="_blank" title="久游网">
                                            <img src="./README_files/9you.jpg" alt="久游网">
                                        </a>
                                    </li>
                                </ul>
                                <ul class="pui-menu pui-menu-inline case-list">
                                    <li>
                                        <a href="http://www.csdn.net/" target="_blank" title="CSDN 全球最大中文IT社区">
                                            <img src="./README_files/csdn.jpg" alt="CSDN 全球最大中文IT社区">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="http://golangtc.com/" target="_blank" title="Golang 中国社区">
                                            <img src="./README_files/golangtc.jpg" alt="Golang 中国社区">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="http://edn.egret.com/cn/" target="_blank" title="白鹭引擎 - Egret Engine-免费开源HTML5游戏引擎">
                                            <img src="./README_files/egret-engine.jpg" alt="白鹭引擎 - Egret Engine-免费开源HTML5游戏引擎">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="http://www.12581258.com/" target="_blank" title="全球通健康俱乐部">
                                            <img src="./README_files/gotone.jpg" alt="全球通健康俱乐部">
                                        </a>
                                    </li>
                                </ul>
                                <ul class="pui-menu pui-menu-inline case-list">
                                    <li>
                                        <a href="http://compoze.coding.io/" target="_blank" title="Compoze  是一种乐谱编写语言, 通过文本符号在线编写出可播放的五线谱和吉他谱">
                                            <img src="./README_files/compoze.jpg" alt="Compoze">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="http://bbs.pkbigdata.com/" target="_blank" title="DataCastle 大数据竞赛社区">
                                            <img src="./README_files/datacastle.jpg" alt="DataCastle 大数据竞赛社区">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="http://jfbbs.tomoya.cn/" target="_blank" title="JFinal 社区，一款使用 JFinal 框架开发的开源 Java 社区程序">
                                            <img src="./README_files/jfinal.jpg" alt="Final 社区">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://github.com/igordonshaw/inote" target="_blank" title="iNote 是一款用 Golang 开发的开源，免费，简洁的单页博客">
                                            <img src="./README_files/inote.jpg" alt="iNote">
                                        </a>
                                    </li>
                                </ul>
                                <br>
                                <p class="pui-text-center">Editor.md 被广泛地应用于论坛社区、API 文档、开发文档、帮助文档、Wiki、资讯文章等多种应用场景。</p>
                                <p class="pui-text-center"><a href="mailto:editor.md@ipandao.com" class="pui-text-blue"><i class="fa fa-envelope-o"></i> 联系我们</a> editor.md@ipandao.com</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr class="pui-hr pui-layout-fixed pui-layout-fixed-1200">
            <footer class="pui-layout pui-layout-fixed pui-layout-fixed-1200 page-footer pui-clear">
                <h1 class="pui-text-lg pui-right pui-text-center">
                    <p>
                        <img src="./README_files/editormd-logo-64x64.png">
                        <span class="pui-block pui-text-gray pui-text-normal">Editor.md</span>
                    </p>
                </h1>
                <p>Copyright © 2015 <a href="https://github.com/pandao/editor.md" class="pui-link" target="_blank">Editor.md</a>, <a href="https://github.com/pandao/editor.md/blob/master/LICENSE" class="pui-link" target="_blank">MIT license.</a></p>
                <p>Design &amp; Develop By: <a href="https://github.com/pandao" class="pui-link" target="_blank">Pandao</a>
                 <a href="https://github.com/pandao" target="_blank"><i class="fa fa-github fa-lg"></i></a>
                 <a href="https://twitter.com/ipandao" target="_blank"><i class="fa fa-twitter fa-lg pui-text-blue"></i></a>
                 <a href="http://weibo.com/ipandao" target="_blank"><i class="fa fa-weibo fa-lg pui-text-red"></i></a>&nbsp;&nbsp; 
                 <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1254310986'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/stat.php%3Fid%3D1254310986%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1254310986"><a href="https://www.cnzz.com/stat/website.php?web_id=1254310986" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./README_files/pic.gif"></a></span><script src="./README_files/stat.php" type="text/javascript"></script><script src="./README_files/core.php" charset="utf-8" type="text/javascript"></script>
                </p>
            </footer>
        </div>
        
        <script src="./README_files/jquery.min.js.download"></script>

        <!--[if lt IE 9]>
        <script type="text/javascript" src="../dist/js/planeui.patch.ie8.min.js"></script>
        <![endif]-->

        <!--[if lt IE 10]>
        <script type="text/javascript" src="../dist/js/planeui.patch.ie9.min.js"></script>
        <![endif]-->

        <script type="text/javascript" src="./README_files/planeui.js.download"></script>
        <script src="./README_files/editormd.min.js.download"></script>   
        <script src="./README_files/index.js.download"></script>
    

<i title="Raphaël Colour Picker" style="display: none; color: white;"></i></body></html>