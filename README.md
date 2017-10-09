ncsu_aspace_utilities
===================================

A plugin for ArchivesSpace providing a variety of enhancements to core functionality.


# Installation

1. Either:
- Clone to the 'plugins' directory in ArchivesSpace, or
- Download the project ZIP, unzip to plugins directory and rename 'ncsu_aspace_utilities'
2. Add 'ncsu_aspace_utilities' to the list of plugins to load in `config/config.rb':


# Utilites

## API Utility

Facilitate interaction with the backend via AJAX requests initiated in Javascript. Requests are passed to a controller that validates permissions and interacts with the backend using the JSONModel::HTTP module, so user credentials and session tokens do not need to be handled in Javascript.

Provides 2 routes that can be used to GET and POST JSON data.

### GET

Just add `/api` to the beginning of the backend REST endpoint URI. For example:

```
/repositories/1/resources/123
```

becomes

```
/api/repositories/1/resources/123
```

Additional query parameters can be included in the URI as usual, e.g.:

```
/api/repositories/1/resources/123?resolve[]=subjects
```

### POST

URIs are formulated the same way as they are for GET. JSON data to be passed to the backed should be included with the key 'json'. Here is a sample implemenation using JQuery.post:


```
var postData = { title: "This is a new title" }
$.post( "/api/repositories/1/resources/123", { json: postData } );
```

### More info

[ArchivesSpace REST API documentation](http://archivesspace.github.io/archivesspace/doc/file.API.html)


## Delete button context

Changes the label on the 'Delete' button in the record toolbar to indicate the type of record being deleted.
This addresses an issue where selecting a record in the tree pane sometimes did not update the record pane,
which has resulted in resource records (and all children) being accidentally deleted when the user only meant to delete a component (archival_object) record.


## Display component URI

Add the archival_object URI to the data displayed in the record pane in 'show' mode.

NOTE TO PLUGIN MAINTANERS: This feature overrides core template partials:

```
frontend/views/accessions/show.html.erb
frontend/views/archival_objects/_show_inline.html.erb
frontend/views/digital_objects/_show_inline.html.erb
frontend/views/resources/_show_inline.html.erb
```

When new versions of ArchivesSpace are released, the overridden partials should be compared against the orginal versions in [ArchivesSpace master](https://github.com/archivesspace/archivesspace) to ensure that new core functionality is not affected.


