# HTTPX Authorization Header Redirect Assignment

## Overview

This assignment focuses on fixing the Authorization header handling during HTTP redirects in the httpx Python library.

## Difficulty Justification

**Difficulty Level: Medium**

This task is classified as Medium because:

1. **Scope**: Touches exactly 2 files (`httpx/_client.py` and `httpx/_utils.py`)
2. **Complexity**: Requires understanding of:
   - HTTP redirect flow and status codes
   - Security implications of credential leakage
   - URL parsing and port normalization
3. **Time Estimate**: Solvable in 1.5-4 hours for a developer familiar with HTTP clients
4. **Real Engineering**: Based on actual GitHub issue #1850 and PR #2074
5. **Not Trivial**: Requires adding a new utility function and conditional logic

## Contents

| File | Description |
|------|-------------|
| `classification.md` | Language, difficulty, and category |
| `description.md` | Problem specification |
| `Github-setup.md` | Repository and commit information |
| `Dockerfile` | Development environment setup |
| `Test.patch` | Reproduction test cases |
| `Solution.patch` | Implementation fix |

## Usage

1. Clone httpx and checkout base commit (see Github-setup.md)
2. Copy submission files into the repo
3. Build Docker: `docker build -t httpx-assignment .`
4. Run: `docker run -it httpx-assignment`
5. Apply Test.patch → run `./test.sh new` → tests FAIL
6. Apply Solution.patch → run `./test.sh new` → tests PASS
