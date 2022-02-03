{
  description = ''Shiny bindings to the JACK Audio Connection Kit.'';
  inputs.src-jack-master.flake = false;
  inputs.src-jack-master.type = "github";
  inputs.src-jack-master.owner = "Skrylar";
  inputs.src-jack-master.repo = "nim-jack";
  inputs.src-jack-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-jack-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jack-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jack-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}