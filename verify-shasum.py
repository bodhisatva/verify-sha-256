#!/usr/bin/env python3

import click
from hashlib import sha256 

def hash_file(file_content) -> str:
  return sha256(file_content).hexdigest()

def read_file(source: str, file_content: bytes) -> None:
  hashed_file: str = hash_file(file_content)
  hash_is_match: bool = hashed_file == source

  if hash_is_match:
    print('Hash is a match.')
  else:
    print('The hash does not match.')

@click.command()
@click.option('--source-shasum' , '-s', prompt='Source shasum', help='Source SHA sum')
@click.option('--target-file', '-t', prompt='Target file', help="File to be verified")

def main(source_shasum: str, target_file: str) -> None:
  with open (target_file, 'rb') as file:
    file_content: bytes = file.read()
    read_file(source_shasum, file_content)

if __name__ ==  '__main__':
  main()