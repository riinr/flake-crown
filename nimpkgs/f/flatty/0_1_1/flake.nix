{
  description = ''Serializer and tools for flat binary files.'';
  inputs.src-flatty-0_1_1.flake = false;
  inputs.src-flatty-0_1_1.type = "github";
  inputs.src-flatty-0_1_1.owner = "treeform";
  inputs.src-flatty-0_1_1.repo = "flatty";
  inputs.src-flatty-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-flatty-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flatty-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-flatty-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}