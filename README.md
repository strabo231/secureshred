# LogMaster - Smart Log File Analyzer

Stop grep-ing through logs! LogMaster analyzes, filters, and visualizes logs in seconds.

## Why LogMaster?

**The Problem:** Finding issues in logs is painful
- `grep` through GBs of logs
- Miss important errors
- No statistics
- Hard to spot patterns
- Difficult to share findings

**The Solution:** Smart log analysis
- Instant error detection
- Statistics at a glance
- Smart filtering
- Generate reports
- Follow logs with filters

## Installation

```bash
curl -sSL https://raw.githubusercontent.com/strabo231/logmaster/main/install.sh | bash
```

## Quick Start

```bash
# Analyze log file
logmaster analyze app.log

# Show only errors
logmaster errors app.log

# Follow log with filter
logmaster tail app.log -f --filter "ERROR"

# Generate statistics
logmaster stats access.log

# Search for pattern
logmaster search app.log "database"
```

## Commands

```
analyze <file>     Full analysis
errors <file>      Show only errors
warnings <file>    Show only warnings
tail <file>        Smart tail with filters
stats <file>       Generate statistics
search <file>      Search for pattern
report <file>      Generate HTML report
```

## Features

📊 **Smart analysis** - Errors, warnings, patterns  
🔍 **Advanced filtering** - By level, time, pattern  
📈 **Statistics** - Error rates, top errors, timelines  
🎯 **Multi-format** - Apache, Nginx, JSON, syslog, app logs  
⚡ **Fast** - Handle GB-sized logs  
📝 **Reports** - Generate HTML summaries  
🔴 **Live monitoring** - Tail with smart filters  

## Usage

**Analyze log:**
```bash
logmaster analyze app.log
```
```
═══════════════════════════════════════════════════════════════
                  LOG FILE ANALYSIS
═══════════════════════════════════════════════════════════════

File: app.log
Size: 45MB
Lines: 156,234
Format: app

Log Levels:
  ERROR:   234
  WARNING: 1,456
  INFO:    154,544

Top Errors:
  89 × Database connection timeout
  42 × API rate limit exceeded
  38 × Invalid JWT token
```

**Show errors:**
```bash
logmaster errors app.log --last 1h
```

**Tail with filter:**
```bash
logmaster tail app.log -f --filter "ERROR"
```
Real-time error monitoring!

**Statistics:**
```bash
logmaster stats access.log
```
```
Overview:
  Total lines:  1,234,567
  Errors:       234 (0.02%)
  Warnings:     1,456 (0.12%)

Top 5 IPs:
  12,345 192.168.1.100
   8,901 192.168.1.101
   5,678 192.168.1.102

Status Codes:
  1,123,456 200
     98,765 404
     12,346 500
```

**Search:**
```bash
logmaster search app.log "timeout"
```

**Generate report:**
```bash
logmaster report app.log --output report.html
```

## Supported Formats

**Application logs:**
```
[2024-12-15 10:23:45] ERROR: Database connection failed
[2024-12-15 10:23:46] WARN: Slow query detected
```

**Access logs (Apache/Nginx):**
```
192.168.1.1 - - [15/Dec/2024:10:23:45] "GET /api HTTP/1.1" 200
```

**JSON logs:**
```json
{"timestamp":"2024-12-15T10:23:45Z","level":"ERROR","msg":"Failed"}
```

**Syslog:**
```
Dec 15 10:23:45 server app[1234]: Error message
```

## Use Cases

**Debugging:**
```bash
# Find all errors in last hour
logmaster errors app.log --last 1h

# Search for specific issue
logmaster search app.log "OutOfMemoryError"
```

**Monitoring:**
```bash
# Watch for errors in real-time
logmaster tail app.log -f --filter "ERROR"
```

**Analysis:**
```bash
# Get statistics
logmaster stats app.log

# Generate report for team
logmaster report app.log
```

**Production Troubleshooting:**
```bash
# Quick overview
logmaster analyze production.log

# Top errors
logmaster errors production.log | head -20
```

## Requirements

- Bash 4.0+
- Standard Unix tools (grep, awk, sort)

## License

MIT License

## Author

Sean - [@strabo231](https://github.com/strabo231)

---

**Analyze logs. Find bugs. Ship faster.** 📊
