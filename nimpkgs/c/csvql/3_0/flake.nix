{
  description = ''csvql.'';
  inputs.src-csvql-3_0.flake = false;
  inputs.src-csvql-3_0.type = "github";
  inputs.src-csvql-3_0.owner = "Bennyelg";
  inputs.src-csvql-3_0.repo = "csvql";
  inputs.src-csvql-3_0.ref = "refs/tags/3.0";
  
  outputs = { self, nixpkgs, src-csvql-3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvql-3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csvql-3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}