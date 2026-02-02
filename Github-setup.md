# GitHub Repository Setup

## Repository Information

- **Repository**: https://github.com/encode/httpx
- **Stars**: 15,000+
- **License**: BSD-3-Clause
- **Primary Language**: Python
- **Base Commit**: `14a1704be507cf435fa84da75c249c2ecd1c3981`

- **Issue Reference**: https://github.com/encode/httpx/issues/1850

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/encode/httpx.git
   cd httpx
   ```

2. Checkout the base commit:
   ```bash
   git checkout 4f8068a7ade1f4d10403e325ed2354109df1724f
   ```

3. Copy Dockerfile and patches into the repo directory

4. Build Docker environment:
   ```bash
   docker build -t httpx-assignment .
   docker run -it httpx-assignment
   ```

5. Apply patches and test:
   ```bash
   git apply Test.patch
   ./test.sh new    # Should FAIL
   git apply Solution.patch
   ./test.sh new    # Should PASS
   ```
