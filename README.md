# Heidelberg Lean Game

This is a repo for the [Heidelberg Lean Game](https://adam.math.hhu.de/#/g/matematiflo/heidelbergleangame), to be used on the [Lean Game Server](https://adam.math.hhu.de).

The official instructions to build such a repo are available at the [lean4game](https://github.com/leanprover-community/lean4game/) repository:

- [Creating a new game](https://github.com/leanprover-community/lean4game/blob/main/doc/create_game.md)
- [Updating an existing game](https://github.com/leanprover-community/lean4game/blob/main/doc/update_game.md)
- [Running a game locally](https://github.com/leanprover-community/lean4game/blob/main/doc/running_locally.md)

## Quick start to using this repo locally

- Make sure you have [Lean](https://lean-lang.org) and [node.js](https://nodejs.org/en) installed on your machine.
- Clone this repo and run the following commands:
  - `lake update -R`
  - `lake build`
- Make sure you have also cloned the [lean4game](https://github.com/leanprover-community/lean4game/) repo (in the same parent folder as `HeidelbergLeanGame`).
- Run the following commands:
  - `cd ../lean4game`
  - `npm install`
  - `npm start`
- Open your browser and go to `http://localhost:3000/#/g/local/HeidelbergLeanGame`.

If you update the files of the game, run `lake build` again (if the web server is running, just reload your browser tab top see the updated version). This will also work if you are working on a branch of your repo that is not the main branch.
