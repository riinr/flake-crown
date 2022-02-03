{
  description = ''A wrapper of the ORX 2.5D game engine'';
  inputs.src-norx-master.flake = false;
  inputs.src-norx-master.type = "github";
  inputs.src-norx-master.owner = "gokr";
  inputs.src-norx-master.repo = "norx";
  inputs.src-norx-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-norx-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}