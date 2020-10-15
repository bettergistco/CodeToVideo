### Scripts in Isolation

You can absolutely run the scripts in isolation, in a specific order:

    c2v-highlight-code /path/to/MyProject
    c2v-text-to-images
    c2v-images-to-video MyProject

The reasons to run in isolation include:

 * developing code-to-video,
 * fine-grained editorial control over each step of the process.
 * much easier to debug when something goes wrong.
 * ability to save and/or edit the transient snapshots of the source code.
