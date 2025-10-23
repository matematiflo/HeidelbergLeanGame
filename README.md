# Heidelberg Lean Game

This is a repo for the [Heidelberg Lean Game](https://adam.math.hhu.de/#/g/matematiflo/heidelbergleangame), to be used on the [Lean Game Server](https://adam.math.hhu.de).

The official instructions to build such a repo are available at the [lean4game](https://github.com/leanprover-community/lean4game/) repository:

- [Creating a new game](https://github.com/leanprover-community/lean4game/blob/main/doc/create_game.md)
- [Updating an existing game](https://github.com/leanprover-community/lean4game/blob/main/doc/update_game.md)
- [Running a game locally](https://github.com/leanprover-community/lean4game/blob/main/doc/running_locally.md)

## Quick start to using this repo locally

- Make sure you have [Lean](https://lean-lang.org) and [node.js](https://nodejs.org/en) installed on your machine.
- Clone this repo, go to the folder where you cloned it, and and run the following commands:

  - `lake update -R`
  - `lake build`

- Make sure you have also cloned the [lean4game](https://github.com/leanprover-community/lean4game/) repo (in the *same parent folder* as `HeidelbergLeanGame`).
- Go to the `lean4game` folder and run the following commands:

  - `npm install`
  - `npm start`

- Open your browser and go to `http://localhost:3000/#/g/local/HeidelbergLeanGame`.

If you update the files of the game, run `lake build` again (if the web server is running, just reload your browser tab top see the updated version). This will also work if you are working on a branch of your repo that is not the main branch.

## Publishing the game on the Lean Game Server

If you want to make your own game available online, check out the [official instructions](https://github.com/leanprover-community/lean4game/blob/main/doc/publish_game.md).

The steps are the following:

### GitHub action

In the GitHub repo, go to the GitHub Actions tab and make sure that the *build the game and save artifact* action has run properly (you must push/merge to the main branch for that).

![Screenshot of *build the game and save artifact* action](img/PublishScreenshot%20-%201.png)

### Check out the build report

Click on this to check out the build report:

![Screenshot showing where to click to go to the next step](img/PublishScreenshot%20-%202.png)

### Trigger the import and check out the link

Open the *What's next?* part of the report.

![Screenshot showing where to click to publish the game on the Lean Game server](img/PublishScreenshot%20-%203.png)

You see two links with your (actual) user name in it.

![Screenshot showing where to click to publish the game on the Lean Game server](img/PublishScreenshot%20-%204.png)

The first link triggers the import of the game to the Lean Game Server (it takes a few minutes and shows a brief activity log). The second link takes you to the published version.
