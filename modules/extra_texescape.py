# encoding: utf-8
import sphinx.util.texescape as te

replacements = ur'''
    ✓ \ding{51}
    ✗ \ding{55}
    ⁰ \ensuremath{^{0}}
    ¹ \ensuremath{^{1}}
    ² \ensuremath{^{2}}
    ³ \ensuremath{^{3}}
    ₀ \ensuremath{_{0}}
    ₁ \ensuremath{_{1}}
    ₂ \ensuremath{_{2}}
    ₃ \ensuremath{_{3}}
    ♥ \ensuremath{\heartsuit}
    ♣ \ensuremath{\clubsuit}
    ♦ \ensuremath{\diamondsuit}
    ♠ \ensuremath{\spadesuit}
    ┌ \textSFi
    ┬ \textSFvi
    ┐ \textSFiii
    ├ \textSFviii
    ┼ \textSFv
    ┤ \textSFix
    └ \textSFii
    ┴ \textSFvii
    ┘ \textSFiv
    ─ \textSFx
    │ \textSFxi
    ┝ \textSFxxxvi
    ┿ \textSFliv
    ┥ \textSFxix
    Δ D
    ━ \textSFxliii
    ░ \textshade
    ↵ \Pisymbol{psy}{191}
    ± \ensuremath{\pm}
    − \ensuremath{-}
    ⌈ \ensuremath{\lceil}
    ⌉ \ensuremath{\rceil}
    ⌊ \ensuremath{\lfloor}
    ⌋ \ensuremath{\rfloor}
'''

def setup(app):
    replacement_list = [
        tuple(line.strip().split())
        for line in replacements.strip().splitlines()
    ]

    te.tex_replacements += replacement_list
    te.init()
