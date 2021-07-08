# compliance-trestle-arc42-demo

This demonstration is designed to show how trestle author can be used on architectural template to enforce consistency within an organisation.

## arc42 license:

arc42 is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/). The arc42 files in this repository have been modified for use within this demo.
If you need arc42 content please go [here](https://arc42.org/download).

## Instructions on using this demo

This repository has been setup with three trestle author tasks:

- `arc42-single` - Demonstrating use of trestle to validate the single file template
- `arc42-multidoc` - Demonstrating the use of trestle to validate a cohesive set of documents
- `arc42-single-failure` - intentionally demonstrating failure.

This demo is at two levels:

- The first is the setup instructions below. The setup instructions for these three workflows shows how to create a 'new' file(s) for editing using `trestle author {docs|folders} create sample`
- The second is the repository has been setup with travis. Travis calls `trestle author {docs|folders} validate` via a Makefile to act as a CI validation (e.g. before merging content).

## How this demo was setup

- `trestle init` was run inside the repository

- OSCAL model directories, unnecessary for this demo, were removed (see [issue to resolve](https://github.com/IBM/compliance-trestle/issues/352))

- `trestle author docs setup -tn arc42-single` was run to setup for the single file architecture template

  - The [arc42 github template](https://github.com/arc42/arc42-template/blob/master/dist/arc42-template-EN-plain-gitHubMarkdown.zip) was downloaded
  - The template file was copied to the [template file](.trestle/author/arc42-single/template.md)
  - The template was customized by 'commenting out' where the template provided exemplar headings (exemplar headings can not be enforced with trestle author).
  - `trestle author docs create-sample -tn arc42-single`
  - `trestle author docs validate -tn arc42-single` was called for testing the template / instance
  - The sample was edited.
  - `trestle author docs validate -tn arc42-single` was called to validate the setup.

- `trestle author folders setup -tn arc42-multidoc` was run to setup for multiple file setups.

  - The [arc42 github template](https://github.com/arc42/arc42-template/blob/master/dist/arc42-template-EN-plain-gitHubMarkdownMP.zip) was downloaded.
  - The template file was copied to the [template file](.trestle/author/arc42-single/template.md)
  - As with the single file content that was not appropriate for trestle author templates was commented out.
    - Note for MD format HTML comment lines must not be the last line in the file (there should be one blank line)
  - `trestle author folders create-sample -tn arc42-multidoc` to create a sample
    - Sample was edited.
  - `trestle author folders validate -tn arc42-multidoc`

- `trestle author docs setup -tn arc42-single-failure` was run to setup for the single file architecture template where it would fail validaation

  - The [arc42 github template](https://github.com/arc42/arc42-template/blob/master/dist/arc42-template-EN-plain-gitHubMarkdown.zip) was downloaded
  - The template file was copied to the [template file](.trestle/author/arc42-single/template.md)
  - The template was customized by 'commenting out' where the template provided exemplar headings (exemplar headings can not be enforced with trestle author).
  - `trestle author docs create-sample -tn arc42-single`
  - `trestle author docs validate -tn arc42-single` was called for testing the template / instance
  - The sample was edited in a way designed to intentionally break the template. E.g. a required heading in the template was removed.
  - `trestle author docs validate -tn arc42-single` was called to validate the setup and ensure a failure condition was reached.
