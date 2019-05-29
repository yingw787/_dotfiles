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

## What's Included

### Tooling Matrix

#### Language-Specific Tooling

Aspect/Language | Markdown | Python | JavaScript
---|---|---|---
Linting | [`markdownlint`](https://github.com/DavidAnson/markdownlint) | [`pylint`](https://github.com/PyCQA/pylint) | [`eslint`](https://github.com/eslint/eslint)
Versioning | N/A | [`conda`](https://github.com/conda/conda) | [`n`](https://github.com/tj/n)
Package Management | N/A | [`conda`](https://github.com/conda/conda) | [`yarn`](https://github.com/yarnpkg/yarn)
Unit testing | N/A | [`pytest`](https://github.com/pytest-dev/pytest) | N/A
Integration testing | N/A | [`pytest`](https://github.com/pytest-dev/pytest) | N/A
Test Coverage | N/A | [`pytest-cov`](https://github.com/pytest-dev/pytest-cov) | N/A
Test Parallelization | N/A | [`pytest-xdist`](https://github.com/pytest-dev/pytest-xdist) | N/A
Property-based / Generative Testing | N/A | [`hypothesis`](https://github.com/HypothesisWorks/hypothesis) | N/A
Formal Reasoning Test Frameworks| N/A | [`z3`](https://github.com/Z3Prover/z3) or [`tlaplus`](https://github.com/tlaplus/tlaplus) | N/A
Binary Analysis / Concolic Testing | N/A | [`angr`](https://github.com/angr/angr) | N/A

## What's Not Included
