# Kilo 编辑器

Kilo 是一个轻量级文本编辑器，代码少于 1000 行（使用 cloc 统计）。

## 功能特性

### 基础功能
- **文件打开与编辑** - 打开、查看和编辑文本文件
- **保存文件** - Ctrl+S 保存修改
- **退出** - Ctrl+Q 退出（有未保存修改时需多次确认）
- **文本搜索** - Ctrl+F 搜索功能，支持 ESC 退出和方向键导航
- **语法高亮** - C/C++ 语法高亮支持

### 编辑功能
- 字符插入与删除
- 行插入（Enter键）
- 光标移动（方向键）
- 翻页（Page Up/Page Down）
- Home/End 键支持

## 编译与使用

### Linux/macOS
```bash
make
./kilo <filename>
```

### Windows
```cmd
# 使用 gcc (MinGW)
make kilo-win
kilo-win.exe <filename>

# 或使用 MSVC
make kilo-win-msvc
kilo-win.exe <filename>
```

### 快捷键

| 快捷键 | 功能 |
|--------|------|
| Ctrl+S | 保存文件 |
| Ctrl+Q | 退出（有修改时需多次确认） |
| Ctrl+F | 搜索文本 |
| 方向键 | 移动光标 |
| Page Up/Page Down | 翻页 |
| Home/End | 移动到行首/行尾 |
| Backspace | 删除字符 |
| Delete | 删除字符 |
| Enter | 换行 |
| Tab | 插入制表符 |

## 项目结构

```
kilo/
├── kilo.c          # 原版 (Unix-like)
├── kilo-win.c      # Windows 兼容版
├── Makefile        # 构建脚本
└── README.md       # 本文件
```

## 本项目改进

### Windows 支持
- Windows Console API 实现，替代 termios
- 使用 ReadConsoleInput 处理键盘输入
- Windows 控制台 VT100 支持
- 支持 MSVC 和 MinGW 编译
- 退出时自动清屏

### 跨平台兼容性
- 统一的条件编译架构
- 保持原有的 Unix-like 支持
- 行结束符处理（LF / CRLF）

### 代码改进
- 清理了一些潜在问题
- 更好的错误处理

## 关于原版 Kilo

Kilo 不依赖任何外部库（甚至不需要 curses），直接使用标准的 VT100 终端转义序列。项目由 Salvatore Sanfilippo (antirez) 开发，使用 BSD 2-Clause 许可证发布。

原始项目：https://github.com/antirez/kilo

## 许可证

BSD 2-Clause License
