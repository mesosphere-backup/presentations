# Presentations
Slide decks from presentations given around the world. Slides are served up on
[http://mesosphere.github.io/presentations](http://mesosphere.github.io/presentations).

Additional slide decks which can be copied and modified from their Google
Slides source can also be found in a public [Google Drive
folder](https://drive.google.com/drive/u/1/folders/0B2NZScv1BP0HWHZkZE5iNXZILUk).

## Adding a presentation
Adding a new presentation?

  1. Clone the repo and add your files to a new topic branch. Use the format
`yyyy-mm-dd-presentation-name` for the folder, e.g.
`2015-07-22-cassandra-meetup`.
  2. Update the top-level `index.html` by running
  `./make_index.sh > index.html`.
  3. Commit your changes to your branch.
  4. Open a pull request from your branch into gh-pages. Once merged, this will
  publish your presentation to [http://mesosphere.github.io/presentations](http://mesosphere.github.io/presentations).
