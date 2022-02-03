{
  description = ''csvql.'';
  inputs.src-csvql-2_0v.flake = false;
  inputs.src-csvql-2_0v.type = "github";
  inputs.src-csvql-2_0v.owner = "Bennyelg";
  inputs.src-csvql-2_0v.repo = "csvql";
  inputs.src-csvql-2_0v.ref = "refs/tags/2.0v";
  
  outputs = { self, nixpkgs, src-csvql-2_0v, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvql-2_0v;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csvql-2_0v"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}