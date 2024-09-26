# verify-sha-256

<br />
  <p align="center">
    <img width="552" alt="sha-cover" src="https://github.com/user-attachments/assets/d43e87fe-8252-4db4-a81a-e06378fb6319">
  </p>
<br />

A Bash and Python script to verify the SHA-256 checksum of a file. It compares the provided checksum with the calculated checksum of the file.

## Bash Usage

Ensure the script has execute permissions:

```
chmod +x verify-shasum.sh
```

#### Execute script:

```bash
./verify-shasum.sh <source_shasum> <file_to_be_verified>
```

#### Example

```bash
./verify-shasum.sh kdd3dfs3asakdd3dfs3asakdd3dfs3asakdd3dfs3asakdd3dfs3asa example-file.txt
```

To run the script globally, add the file to `/usr/local/bin` and then:

```bash
verify-shasum.sh kdd3dfs3asakdd3dfs3asakdd3dfs3asakdd3dfs3asakdd3dfs3asa example-file.txt
```

## Python Usage

- Python 3.8 or higher
- `pip` (Python package installer)

1. **Clone the repository**:
   ```bash
   git clone https://github.com/bodhisatva/verify-sha-256
   cd python-shasum
   ```
2. Create a virtual environment:

```bash
python3 -m venv <venv_name>
source venv/bin/activate  # On Windows use `venv\Scripts\activate`
```

3. Install dependencies

```bash
python3 -m pip install -r requirements.txt
```

#### Execute script:

```bash
./verify-shasum.py --source-shasum <source_shasum> --target-file <file_to_be_verified>
```

Or

```bash
./verify-shasum.py -s <source_shasum> -t <file_to_be_verified>
```
