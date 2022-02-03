{
  description = ''cross-platform file watcher with database'';
  inputs.src-watch_for_files-main.flake = false;
  inputs.src-watch_for_files-main.type = "github";
  inputs.src-watch_for_files-main.owner = "hamidb80";
  inputs.src-watch_for_files-main.repo = "watch_for_files";
  inputs.src-watch_for_files-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-watch_for_files-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-watch_for_files-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-watch_for_files-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}