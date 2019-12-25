# `dotfiles`: startup and maintenance scripts for my personal infrastructure

These files describe my personal infrastructure. They should allow for
reproducible infrastructure with any machine that satisfies the listed
pre-requisites.

## Purpose

These dotfiles were originally created due to issues with my personal desktop.
Occasionally, I would need to blow away the operating system due to issues with
the device drivers for the NVIDIA GPU, and conflicts between the open-source
`nouveau` drivers (which run graphics really well) with the closed-source NVIDIA
drivers (which expose the CUDA interface that I got the desktop for).

The dotfiles are intended to make setup from a vanilla base install of the
operating system to be as simple as possible, in order to make iterating on
driver updates as cheap as possible.

## Overview

### Philosophy

-   **Invest in things that don't change**: A quote from Jeff Bezos:

    > I very frequently get the question: "What's going to change in the next 10
    > years?" And that is a very interesting question; it's a very common one. I
    > almost never get the question: "What's not going to change in the next 10
    > years?" And I submit to you that that second question is actually the more
    > important of the two -- because you can build a business strategy around
    > the things that are stable in time. ... [I]n our retail business, we know
    > that customers want low prices, and I know that's going to be true 10
    > years from now. They want fast delivery; they want vast selection.

    > It's impossible to imagine a future 10 years from now where a customer
    > comes up and says, "Jeff, I love Amazon; I just wish the prices were a
    > little higher." "I love Amazon; I just wish you'd deliver a little more
    > slowly." Impossible.

    > And so the effort we put into those things, spinning those things up, we
    > know the energy we put into it today will still be paying off dividends
    > for our customers 10 years from now. When you have something that you know
    > is true, even over the long term, you can afford to put a lot of energy
    > into it.

    Tangent to this philosophy is building out a personal infrastructure that
    holds steady with time. Oftentimes, this means investing into open-source,
    well-maintained or "finished" tooling, even if that means a steeper learning
    curve. The less frequently I update my `dotfiles`, the more I will consider
    this effort a success.

-   **Explicit is better than implicit**: A [discussion on Hacker News around
    reproducible Dockerfiles](https://news.ycombinator.com/item?id=20031730)
    gives insight around implicit vs. explicit dependency management:

    > > The first version is to lock down every dependency as tightly as you can
    > to avoid accidentally breaking something...The second version is upgrade
    > early, upgrade often...Google is an excellent example of a company that
    > does this.

    > This is misleading. My understanding of Google's internal build systems is
    > that they ruthlessly lock down the version of every single dependency, up
    > to and including the compiler binary itself. They then provide tooling on
    > top of that to make it easier to upgrade those locked down versions
    > regularly.

    > The core problem is that when your codebase gets to the kind of scale that
    > Google's has, if you can't reproduce the entire universe of your
    > dependencies, there is no way any historical commit of anything will ever
    > build. That makes it difficult to do basic things like maintain release
    > branches or bisect bugs.

    > > if you want to lock down version numbers for a specific release, have an
    > automated tool supply the right ones for you. And make it trivial to
    > upgrade early, and upgrade often.

    > This part sounds like a more accurate description of what Google and
    > others do, yes.

## What's Included

### Tooling Matrix;

#### System-Specific Tooling

-   **Version Control System**: [`git`](https://github.com/git/git)

-   **System Resource Monitor**: [`gtop`](https://github.com/aksakalli/gtop)

-   **GPU-specific System Resource Monitor**:
    [`nvtop`](https://github.com/Syllo/nvtop)

#### Language-Specific Tooling

Aspect/Language | Markdown | Python | JavaScript | Golang | Haskell | Ruby | Shell (bash)
---|---|---|---|---|---|---|---
Linting | [`markdownlint`](https://github.com/DavidAnson/markdownlint) | [`pylint`](https://github.com/PyCQA/pylint) | [`eslint`](https://github.com/eslint/eslint) | N/A | N/A | N/A | [`shellcheck`](https://github.com/koalaman/shellcheck)
Versioning | N/A | [`conda`](https://github.com/conda/conda) | [`n`](https://github.com/tj/n) | N/A | N/A | N/A | N/A
Package Management | N/A | [`conda`](https://github.com/conda/conda) | [`yarn`](https://github.com/yarnpkg/yarn) | N/A | N/A | N/A | N/A
Dependency Upgrade Management | N/A | [`pyup`](https://github.com/pyupio/pyup) | N/A | N/A | N/A | N/A | N/A
Package Archive Search | N/A | [`PyPI`](https://pypi.org/) | N/A | N/A | [`Hoogle`](https://hoogle.haskell.org/) | N/A | N/A
Unit testing | N/A | [`pytest`](https://github.com/pytest-dev/pytest) | N/A | N/A | [`hspec`](https://hackage.haskell.org/package/hspec) | N/A | N/A
Integration testing | N/A | [`pytest`](https://github.com/pytest-dev/pytest) | N/A | N/A | N/A | N/A | N/A
Test Coverage | N/A | [`pytest-cov`](https://github.com/pytest-dev/pytest-cov) | N/A | N/A | N/A | N/A | N/A
Test Parallelization | N/A | [`pytest-xdist`](https://github.com/pytest-dev/pytest-xdist) | N/A | N/A | N/A | N/A | N/A
Property-based / Generative Testing | N/A | [`hypothesis`](https://github.com/HypothesisWorks/hypothesis) | N/A | N/A | [`quickcheck`](https://hackage.haskell.org/package/QuickCheck) | N/A | N/A
Documentation Generator | N/A | [`sphinx`](https://github.com/sphinx-doc/sphinx/) | N/A | N/A | N/A | N/A | N/A

#### Miscellaneous Tooling

-   **Link Checker (to prevent [link
    rot](https://en.wikipedia.org/wiki/Link_rot))**:
    [`linkchecker`](https://github.com/filiph/linkcheck)

-   **Model Checker**: [`Z3`](https://github.com/Z3Prover/z3) or
    [`TLA+`](https://github.com/tlaplus/tlaplus)

-   **Concolic Testing**: [`angr`](https://github.com/angr/angr)

-   **Markdown Table of Contents Generator**:
    [`doctoc`](https://github.com/thlorenz/doctoc)

## What's Not Included

-   **Device Configuration**: This includes:

    -   Monitor configuration: What orientation your monitors are in, how many
        monitors you have, trackpad speed, scroll orientation, etc.
