# Contributing to SecureShred

Thanks for helping improve secure file deletion!

## Reporting Bugs
- Include OS and bash version
- Provide command and error
- Steps to reproduce
- **DO NOT** include sensitive file information

## Suggesting Features
- New shredding methods
- Performance improvements
- Explain the use case
- Security considerations

## Pull Requests
1. Fork repository
2. Create feature branch
3. Test thoroughly with test files ONLY
4. Follow code style
5. Update documentation

## Security
If you find a security issue:
- Report privately (don't open public issue)
- Email maintainer directly
- Allow time for fix before disclosure

## Testing
**CRITICAL:** Only test with non-important test files.
NEVER test on real data until you're absolutely certain!

Create test files:
```bash
mkdir test-shred
echo "test data" > test-shred/test.txt
secureshred test-shred/test.txt
```

## Shredding Methods
When adding new shredding methods:
- Research the standard thoroughly
- Implement all passes correctly
- Verify with disk forensics tools if possible
- Update README with method details

## License
Contributions to GPL v3 version are welcome.
Commercial features require separate agreement.
