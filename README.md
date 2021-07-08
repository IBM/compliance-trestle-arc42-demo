# compliance-trestle-arc42-demo

This demonstration is designed to show how trestle author can be used on architectural template to enforce consistency within an organisation.

## Instructions on using this demo

## How this demo was setup

- `trestle init` was run inside the repository

- OSCAL model directories, unnecessary for this demo, were removed (see [issue to resolve](https://github.com/IBM/compliance-trestle/issues/352))

- `trestle author docs setup -tn arc42-single` was run to setup for the single file architecture template

  - The [arc42 github template](https://github.com/arc42/arc42-template/blob/master/dist/arc42-template-EN-plain-gitHubMarkdown.zip) was downloaded
  - The template file was copied to the [template file](.trestle/author/arc42-single/template.md)
  - The template was customized by 'commenting out' where the template provided exemplar headings (exemplar headings can not be enforced with trestle author).
  - `trestle author docs create-sample -tn arc42-single`
  - `trestle author docs validate -tn arc42-single` was called for testing the template / instance
  - The sample was customized to something semi-meaningful.
  - `trestle author docs validate -tn arc42-single` was called

- `trestle author folders setup -tn arc42-multidoc` was run to setup for multiple file setups

  - The [arc42 github template](https://github.com/arc42/arc42-template/blob/master/dist/arc42-template-EN-plain-gitHubMarkdownMP.zip) was downloaded.
  - The template file was copied to the [template file](.trestle/author/arc42-single/template.md)

## 
