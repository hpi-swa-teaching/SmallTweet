baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec baseline: 'Widgets' with: [
                spec
                    repository: 'github://marceltaeumel/widgets:master/repository';
                    loads: #(full)].
            spec
                package: 'FFI-Pools' with: 
                    [ spec
                            repository: 'http://source.squeak.org/FFI/';
                        yourself ];
                package: 'FFI-Kernel' with: 
                    [ spec
                            repository: 'http://source.squeak.org/FFI/';
                        yourself ];
                package: 'Project08-Core' with: [
                    spec requires: #('libraries')];
                package: 'Project08-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('Project08-Core');
                group: 'libraries' with: #('Widgets' 'FFI-Pools' 'FFI-Kernel');
                group: 'Tests' with: #('Project08-Tests');
                group: 'TravisCI' with: #('Tests') ]