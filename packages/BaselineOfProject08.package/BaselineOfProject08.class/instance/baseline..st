baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [
                spec package: 'Graphics' with: [ spec repository: 'http://source.squeak.org/trunk'].
                spec package: 'JSON' with: [ spec repository: 'http://www.squeaksource.com/JSON'].
                spec configuration: 'FFI' with: [ spec repository:      'http://www.squeaksource.com/MetacelloRepository'].
                spec package: 'Applescript-Core' with: [ spec repository: 'http://www.squeaksource.com/Applescript'].
                spec configuration: 'ExternalWebBrowser' with: [ spec repository: 'http://www.squeaksource.com/MetacelloRepository'].
                spec baseline: 'Project12' with: [
                  spec
                    repository: 'github://HPI-SWA-Teaching/Morphic-Testing-Framework:master/packages';
                    loads: #(default)].
                spec baseline: 'Widgets' with: [
                  spec
                    repository: 'github://marceltaeumel/widgets:master/repository';
                    loads: #(full)].
                spec package: 'Project08-Core' with: [
                  spec requires: #('libraries')];
                package: 'Project08-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('Project08-Core');
                group: 'libraries' with: #('JSON' 'Widgets' 'FFI' 'Applescript-Core' 'ExternalWebBrowser' 'Graphics');
                group: 'Tests' with: #('Project08-Tests' 'Project12');
                group: 'TravisCI' with: #('Tests') ]