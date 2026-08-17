# Changelog

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
