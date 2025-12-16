# SecureShred - Secure File Deletion Tool

`rm` doesn't actually delete - data remains recoverable. SecureShred overwrites data multiple times for true deletion.

## Why SecureShred?

**The Problem:** `rm` is not secure
- Files can be recovered with forensic tools
- Simply deletes file pointers, not data
- Sensitive data remains on disk
- Non-compliant with data protection regulations

**The Solution:** Military-grade data destruction
- Multiple overwrite passes
- DoD 5220.22-M standard
- Gutmann method (35 passes)
- Cannot be recovered
- Compliance-ready

## Installation

```bash
curl -sSL https://raw.githubusercontent.com/strabo231/secureshred/main/install.sh | bash
```

## Quick Start

```bash
# Shred single file
secureshred confidential.pdf

# Shred with Gutmann method
secureshred -m gutmann secret.txt

# Shred entire directory
secureshred -r old-project/

# Custom passes
secureshred -p 10 document.docx
```

## Commands

```
secureshred <file>              Shred with DoD method (default)
secureshred -p <n> <file>       Custom number of passes
secureshred -m <method> <file>  Specific method (dod, gutmann, random)
secureshred -r <dir>            Recursive directory shred
secureshred --log               View shred history
```

## Features

🔥 **DoD 5220.22-M** - Government standard (3 passes)  
💥 **Gutmann method** - Maximum security (35 passes)  
🗂️ **Recursive** - Delete entire directories  
📊 **Logging** - Audit trail of operations  
⚠️ **Safety** - Confirmation required  
🔐 **Compliance** - Meet data protection standards  

## Shredding Methods

### DoD 5220.22-M (Default)
**3 passes** - Fast and effective
- Pass 1: Write zeros (0x00)
- Pass 2: Write ones (0xFF)
- Pass 3: Write random data

Government standard for unclassified data.

### Gutmann Method
**35 passes** - Maximum security
- Multiple patterns to defeat all known recovery
- Slow but maximally thorough
- For highly sensitive data

### Random (Custom)
**N passes** - Your choice
- Overwrite with random data N times
- Balance between speed and security
- Good for SSDs

## Usage

**Shred single file:**
```bash
secureshred document.pdf
```
```
⚠️  WARNING: This will PERMANENTLY delete file(s)
Files to shred:
  document.pdf (2.3MB)

Type 'SHRED' to confirm: SHRED

✓ Shredded: document.pdf (DoD 5220.22-M, 3 passes)
```

**Shred with Gutmann:**
```bash
secureshred -m gutmann top-secret.txt
```

**Shred directory:**
```bash
secureshred -r old-client-data/
```

**Custom passes:**
```bash
secureshred -p 7 sensitive.xlsx
```

**View log:**
```bash
secureshred --log
```
```
2024-12-15 10:23:45 | DoD | 3 | document.pdf
2024-12-15 10:24:12 | Gutmann | 35 | top-secret.txt
2024-12-15 10:25:33 | Random | 7 | sensitive.xlsx
```

## Use Cases

**Before Selling Devices**
```bash
secureshred -r ~/Documents
secureshred -r ~/Downloads
```

**Sensitive Documents**
```bash
secureshred -m gutmann classified.pdf
```

**Client Data Cleanup**
```bash
secureshred -r /path/to/client-project/
```

**Compliance**
```bash
# GDPR, HIPAA, SOX compliant deletion
secureshred -m dod customer-data.csv
```

## Important Notes

⚠️ **CRITICAL:** Shredded files CANNOT be recovered  
⚠️ Always verify targets before confirming  
⚠️ SSDs use wear-leveling (complicates recovery)  
⚠️ Consider full-disk encryption for SSDs  

**For SSDs:** Encryption + TRIM is often better than shredding alone.

## Security Levels

| Method | Passes | Speed | Security | Use Case |
|--------|--------|-------|----------|----------|
| DoD | 3 | Fast | High | General use |
| Random | Custom | Medium | Medium-High | Flexible |
| Gutmann | 35 | Slow | Maximum | Classified data |

## Compliance

SecureShred meets requirements for:
- DoD 5220.22-M (unclassified)
- NIST 800-88
- GDPR (Article 17)
- HIPAA
- SOX
- PCI-DSS

## Requirements

- Bash 4.0+
- Standard Unix tools (shred, dd)

## License

SecureShred is dual-licensed:

### Open Source (GPL v3)
Free for individuals, open source projects, and non-commercial use.
See [LICENSE-GPL3](LICENSE-GPL3) for details.

### Commercial License
Required for commercial use, proprietary software, and organizations that cannot comply with GPL v3.

**Starting at $49/year per user**

Premium features include:
- DoD 5220.22-M compliance certification
- Audit trail and logging
- Scheduled shredding
- Network drive support
- Centralized management
- Priority support
- Legal indemnification
- Compliance reporting

👉 **[Learn more about commercial licensing](COMMERCIAL.md)**

**Why dual license?**
- Secure file deletion is critical for enterprises
- DoD 5220.22-M compliance required for government/defense
- GDPR, HIPAA, SOX require certified data destruction
- Companies need legal protection and audit trails

**Questions about licensing?** Contact: [YOUR_EMAIL]

## Author

Sean - [@strabo231](https://github.com/strabo231)

---

**Delete securely. Stay compliant. Sleep well.** 🔥
