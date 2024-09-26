# verify-sha-256

<br />
  <p align="center">
    <img width="559" alt="shell-cover" src="https://github.com/user-attachments/assets/c2c2f9b6-ec23-4ed5-a871-6ccd3ae47bfa">

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

<br/>
  <p align="center">
    <img width="563" alt="python-cover" src="https://github.com/user-attachments/assets/1867a98e-70f5-4581-8350-f9ed2a1a9d49">
  </p>
<br/>

- Python 3.8 or higher
- `pip` (Python package installer)

1. **Clone the repository**:

```bash
git clone https://github.com/bodhisatva/verify-sha-256
cd python-shasum
```

2. **Create a virtual environment**:

```bash
python3 -m venv <venv_name>
source venv/bin/activate
```

3. **Install dependencies**

```bash
python3 -m pip install -r requirements.txt
```

#### Execute script:

Ensure the script has execute permissions:

```bash
chmod +x verify-shasum.py
```

```bash
./verify-shasum.py --source-shasum <source_shasum> --target-file <path/to/target-file>
```

or

```bash
./verify-shasum.py -s <source_shasum> -t <path/to/target-file>
```

or

```bash
./verify-shasum.py
```

and provide information for the prompts.

To run the script globally, add the file to `/usr/local/bin` and then:

```bash
verify-shasum.py
```
