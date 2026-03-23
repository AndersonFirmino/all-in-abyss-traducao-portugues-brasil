# All in Abyss: Judge the Fake — PT-BR Translation Patch

**Complete Brazilian Portuguese fan translation — 9,999 strings translated.**

Made for fun by [Awesome Fox Music](https://steamcommunity.com/id/awesomefox/).

> **Note to the developer:** This is a non-commercial fan translation project. No game code, assets, sprites, music, or executables are included — only modified text bundles. The game must be purchased on Steam to use this patch. I made this purely because I wanted to play the game in my native language. Thank you for making such an amazing game!

---

## About

Full fan translation of **[All in Abyss: Judge the Fake](https://store.steampowered.com/app/2731550/All_in_Abyss_Judge_the_Fake/)** into Brazilian Portuguese (PT-BR).

I made this translation just for fun — I love this game and wanted to play it in my language. It's a fan project, no profit involved.

- Faithful to the original tone — no censorship, no filters
- Each character's personality preserved
- All chapters, battles, menus, items and cutscenes translated

> **Heads up:** This translation may still have errors and could use some review. If you find something off, open an issue or send a PR and I'll fix it!

---

## What's translated

| Content | Strings | Status |
|---------|---------|--------|
| Menus, UI & System | 663 | ✅ |
| Items & Descriptions | 642 | ✅ |
| Character Names | 99 | ✅ |
| Battle Text | 258 | ✅ |
| Enemy Dialogue | 194 | ✅ |
| Location Names | 44 | ✅ |
| Staff Roll | 168 | ✅ |
| **Story Dialogue (Ch. 1-5)** | **7,849** | ✅ |
| Templates | 5 | ✅ |
| **Total** | **9,922** | ✅ |

### Chapters

| # | Arc | Status |
|---|-----|--------|
| 1 | Ulu — The Witch of Sweets | ✅ |
| 2 | Yuragi — The Witch of Quietus | ✅ |
| 3 | Lancille — The Labor Camp | ✅ |
| 4 | Yukimiya — The WCW Group | ✅ |
| 5 | Abyss — The Final Confrontation | ✅ |

---

## Installation

### Requirements
- **[All in Abyss: Judge the Fake](https://store.steampowered.com/app/2731550/All_in_Abyss_Judge_the_Fake/)** purchased on Steam

### Easy way (Recommended)

1. Download this repo (Code → Download ZIP) and extract it
2. Run **`install.bat`**
3. Open the game **through Steam**
4. Select **English** in the language menu
5. Done — everything shows up in PT-BR!

> The installer auto-detects the game folder, backs up the originals, and copies the translated files.

### Manual installation

If the installer can't find your game, copy the files manually:

1. Copy the 2 `.bundle` files from `bundles/` to:
   ```
   [Steam]\steamapps\common\All in Abyss\All in Abyss_Data\StreamingAssets\aa\StandaloneWindows64\
   ```

2. Copy `bundles/catalog.bundle` to:
   ```
   [Steam]\steamapps\common\All in Abyss\All in Abyss_Data\StreamingAssets\aa\
   ```

3. Open the game through Steam and select **English**

### Uninstall

- Run **`uninstall.bat`**, or
- On Steam: right-click the game → Properties → Installed Files → **Verify integrity of game files**

---

## How it works

The translation replaces the English text slot in the game's text assets. That's why you select "English" in the language menu to see PT-BR.

- Audio stays in Japanese (same as original)
- No game files are removed — only text files are replaced
- If the game gets an update, you may need to reapply the patch

> **Tip:** Disable auto-updates on Steam to prevent your files from being overwritten.

---

## Files

```
├── README.md            ← You are here
├── install.bat          ← Auto installer
├── uninstall.bat        ← Removes the translation
└── bundles/
    ├── 058520d...bundle ← GameText (UI, items, system, staff roll)
    ├── 09b47f4...bundle ← TalkText (all dialogue)
    └── catalog.bundle   ← Patched asset catalog
```

---

## Contributing

Found a translation error? Weird text? Something that doesn't make sense?

- Open an **issue** describing the problem
- Or send a **PR** with the fix

All help is welcome!

---

## Technical notes

- Engine: Unity 2022.3.51f1 with Addressables
- Extraction: UnityPy 1.25.0
- CRC patch: AddressablesTools v2pr1
- Text structure: 5-language arrays `[JP, EN, CN_S, CN_T, KR]` — index `[1]` replaced with PT-BR

---

## Credits

**PT-BR Translation by [Awesome Fox Music](https://steamcommunity.com/id/awesomefox/)**

*Find me on Spotify and Soundcloud as Awesome Fox Music — the bet is worth it. ( ^^v )*

---

## Disclaimer

This is an unofficial fan translation project. All rights to **All in Abyss: Judge the Fake** belong to their respective developers. This patch contains only modified text data — no proprietary game content (sprites, music, code, executables) is included or distributed. A legitimate copy of the game is required to use this translation.
