{
  description = ''UUID library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-uuids-v0_1_10.flake = false;
  inputs.src-uuids-v0_1_10.owner = "pragmagic";
  inputs.src-uuids-v0_1_10.ref   = "refs/tags/v0.1.10";
  inputs.src-uuids-v0_1_10.repo  = "uuids";
  inputs.src-uuids-v0_1_10.type  = "github";
  
  inputs."isaac".dir   = "nimpkgs/i/isaac";
  inputs."isaac".owner = "riinr";
  inputs."isaac".ref   = "flake-pinning";
  inputs."isaac".repo  = "flake-nimble";
  inputs."isaac".type  = "github";
  inputs."isaac".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isaac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-uuids-v0_1_10"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-uuids-v0_1_10";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}