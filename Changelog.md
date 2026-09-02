# Changelog

## 2026.09.02

### Added / Changed

- `killport`: New Python3 implementation (stdlib-only). Finds listening processes via `lsof`/`ss` with a `netstat` fallback; supports killing containers via `docker`/`podman`, signal control, `--dry-run`, `--no-fail`, and `--mode`.
- `timestamp-to-date`: Added `timestamp-to-date` script; accepts a bare Unix timestamp and optional `--timezone` (IANA) and prints a `date`-style output.
- `load-zoxide-from-zsh-history`: Improved robustness and logging; replaced bare `except` handlers and switched to module logger. Linted with `ruff`.

## 2026.8.18

### Changed

- `newscript`: Rewritten from Ruby to Python 3. Eliminates `optimist` gem dependency. Modernized Python template output. Added `--dry-run` flag. Uses `pathlib` and `os.chmod` instead of shelling out. Templates stored as extensible dictionary.

- `yaml2json`: Rewritten from bash wrapper to standalone Python 3 script. Uses `yaml.safe_load`. Added `--indent` and `--compact` flags. `yaml-to-json` is now a symlink to `yaml2json`.

- `json-to-yaml`: Rewritten from bash wrapper to standalone Python 3 script. Added `--flow` flag. `json2yaml` is now a symlink to `json-to-yaml`.

- `jsondiff`: Rewritten from bash to pure Python 3. Uses `json` + `difflib` instead of external `diff`. Added `--no-sort-keys` and `--context` flags.

- `pjson`: Rewritten from bash wrapper to standalone Python 3 script. Accepts files, raw JSON strings, or stdin. Added `--indent` and `--no-sort-keys` flags.

## 2026.8.17

### Fixed

- `http-reflect`: Ported from Python 2 `BaseHTTPServer` to Python 3 `http.server`. Script was completely non-functional on Python 3.

### Changed

- **All Python scripts**: Modernized to Python 3.10+ best practices:
  - Added `argparse` with `--help` support to all scripts.
  - Added type hints and Google-style docstrings to all public functions.
  - Replaced `%` string formatting with f-strings.
  - Structured all scripts with `main()` → `if __name__ == "__main__"` pattern.
  - All scripts pass `ruff check` and `ruff format` cleanly.

- `http-reflect`: Added `--port`, `--bind`, `--log-level` flags. Added `self.end_headers()` calls (responses were previously malformed). Uses `logging` for request display. Graceful `Ctrl-C` shutdown.

- `ramdisk`: Replaced `subprocess.check_output` with `subprocess.run` and `CalledProcessError` handling. Uses argparse mutually exclusive group for `--megabytes`/`--gigabytes`. Removed global mutable state. Added `--log-level` flag.

- `what`: Replaced `optparse` with `argparse`. Replaced hand-rolled `memoize` with `functools.lru_cache`. Eliminated global `get_options()` mutation. Replaced `subprocess.Popen` with `subprocess.run`.

- `whap`: Replaced `os.system()` (shell injection risk) with `subprocess.run()`. Added `--log-level` flag. Removed dead directory-walking code.

- `diff-summary`: Wrapped logic in `main()`. Retained `fileinput` for stdin/file compatibility.

- `icorrupt`: Replaced 110-line hardcoded diacritics list with `chr()` range generation. Added `--intensity` and `--seed` flags. Supports stdin input. Removed unused `add_a_diacritic()`.

- `iflip`: Accepts multiple words on the command line. Supports stdin input. Refactored `fliptext()` to return a string.

- `urldecode`/`urlencode`: Added stdin fallback when no argument provided. Added error handling for missing input.

- `yesterday`: Added `--format` flag for custom date format. Removed dead `typestring()` function and unused `appscript` import.
