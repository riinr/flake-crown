{
  description = ''Manage CSV files'';
  inputs.src-csvtools-0_2_1.flake = false;
  inputs.src-csvtools-0_2_1.type = "github";
  inputs.src-csvtools-0_2_1.owner = "andreaferretti";
  inputs.src-csvtools-0_2_1.repo = "csvtools";
  inputs.src-csvtools-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-csvtools-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvtools-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csvtools-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}