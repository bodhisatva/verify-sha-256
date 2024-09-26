#!/usr/bin/env python3

import click
import os
from click import progressbar
from hashlib import sha256

YELLOW='\033[33m'
RED='\033[31m'
DEFAULT='\033[0m'

fill_char = click.style("#", "yellow")

def read_file(total_size: int, target_file: str) -> str:
  block_size: int = 8192
  hash_object = sha256()

  with open(target_file, 'rb') as file, progressbar(length=total_size, label="Calculating shasum:", fill_char=fill_char) as bar:
    while chunk := file.read(block_size):
      hash_object.update(chunk)
      bar.update(len(chunk))
  
  return hash_object.hexdigest()

@click.command()
@click.option('--source-shasum' , '-s', prompt='Source shasum', help='Source shasum')
@click.option('--target-file', '-t', prompt='Target file', help="File to be verified")

def main(source_shasum: str, target_file: str) -> None:
  total_size: int = os.path.getsize(target_file)
  target_file_shasum: str = read_file(total_size, target_file)
  hash_is_match: bool = target_file_shasum == source_shasum

  if hash_is_match:
    print(f"\nSource shasum: {source_shasum}")
    print(f"Target shasum: {target_file_shasum}")
    print(f'\nSHA-256 checksum verification successful: {YELLOW}Hash is a match{DEFAULT}\n')
  else:
    print(f"\nSource shasum: {source_shasum}")
    print(f"Target shasum: {target_file_shasum}")
    print(f'\nSHA-256 checksum verification failed: {RED}The hash does not match.{DEFAULT}\n')

if __name__ ==  '__main__':
  main()
