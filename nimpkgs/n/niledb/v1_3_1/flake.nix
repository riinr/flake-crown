{
  description = ''Key/Value storage into a fast file-hash'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-niledb-v1_3_1.flake = false;
  inputs.src-niledb-v1_3_1.owner = "JeffersonLab";
  inputs.src-niledb-v1_3_1.ref   = "refs/tags/v1.3.1";
  inputs.src-niledb-v1_3_1.repo  = "niledb";
  inputs.src-niledb-v1_3_1.type  = "github";
  
  inputs."serializetools".dir   = "nimpkgs/s/serializetools";
  inputs."serializetools".owner = "riinr";
  inputs."serializetools".ref   = "flake-pinning";
  inputs."serializetools".repo  = "flake-nimble";
  inputs."serializetools".type  = "github";
  inputs."serializetools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serializetools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-niledb-v1_3_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-niledb-v1_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}