# CLAUDE.md

This file provides guidance to Claude Code when working with this repository.

## Project: Agents (Obsidian Plugin)

An Obsidian community plugin (ID: `agents`) that launches AI agents from your vault. Right-click any file or folder to open a terminal with context. macOS only.

- Plugin ID: `agents` (no "obsidian" in ID/name — required by community plugin validator)
- Entry point: `src/main.ts`
- Build: `make build` (runs tsc + esbuild)
- Dev: `make dev` (watch mode)
- Install to vault: `make install`
- Release: `make bump-patch` / `make bump-minor` / `make bump-major` (bumps version, commits, tags, pushes — triggers GitHub Actions release)
- If version was already bumped manually: `make release` (just pushes commit + tag)

## Maintenance

README.md must be kept up to date with any significant project changes.
