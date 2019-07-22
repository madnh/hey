# Hey

Simple script folder for projects. Scripts can call from anywhere inside project.

## Usage

**Step 1.** Add `scripts/` folder to `$PATH`. 

**Step 2. (Optional)** Can use `direnv` to load `.envrc` file.

**Step 3.** Call script with actions: `hey foo`, `hey debug`

## Scripts folder tree

```
.
├── README.md              -----> This file
├── scripts/               -----> Script files here
│   ├── _banner.txt
│   ├── _colors.sh
│   ├── _functions.sh
│   ├── _icons.sh
│   ├── _usage.txt
│   │
│   ├── bar.func.sh         ───┐
│   ├── debug.func.sh          │
│   ├── foo.func.sh            │
│   ├── help.func.sh        ───┴> Function files
│   │
│   └── hey                 ----> You can change this file name
│
└── sub
    └── folder              ----> A sub-folder
        └── README.md
```