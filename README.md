# verify-sha-256
<br />
  <p align="center">
    <img width="415" alt="Screenshot 2024-09-20 at 21 56 27" src="https://github.com/user-attachments/assets/2d3791fd-ae08-4b13-b8af-cebda40f3d89" style="border-radius: 20px;"> 
  </p>
<br />

A Bash script to verify the SHA-256 checksum of a file. It compares the provided checksum with the calculated checksum of the file.

## Usage

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
