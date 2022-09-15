function Invoke-SnapshotPush {
    Write-Host "Invoke-SnapshotPush"
}

function Invoke-Snapshot {
    $subcommand, $args = $args;

    switch ($subcommand) {
        "push" {
            Invoke-SnapshotPush @args;
            break;
        }
        Default {
            vagrant snapshot $subcommand @args
        }
    }
}

$subcommand, $args = $args;

switch ($subcommand) {
    "snapshot" { 
        Invoke-Snapshot @args
        break;
    }
    Default {
        Write-Host "This command is not standard !";
    }
}