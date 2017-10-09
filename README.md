ncsu_display_uri_plugin
===================================

A plugin for ArchivesSpace that adds the URI to the data displayed in the record pane in 'show' mode for resources, archival objects, digital objects, and accessions.

NOTE TO PLUGIN MAINTANERS: This feature overrides core template partials:

```
frontend/views/accessions/show.html.erb
frontend/views/archival_objects/_show_inline.html.erb
frontend/views/digital_objects/_show_inline.html.erb
frontend/views/resources/_show_inline.html.erb
```

When new versions of ArchivesSpace are released, the overridden partials should be compared against the orginal versions in [ArchivesSpace master](https://github.com/archivesspace/archivesspace) to ensure that new core functionality is not affected.

