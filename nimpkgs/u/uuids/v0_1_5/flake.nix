{
  description = ''UUID library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-uuids-v0_1_5.flake = false;
  inputs.src-uuids-v0_1_5.ref   = "refs/tags/v0.1.5";
  inputs.src-uuids-v0_1_5.owner = "pragmagic";
  inputs.src-uuids-v0_1_5.repo  = "uuids";
  inputs.src-uuids-v0_1_5.type  = "github";
  
  inputs."isaac".owner = "nim-nix-pkgs";
  inputs."isaac".ref   = "master";
  inputs."isaac".repo  = "isaac";
  inputs."isaac".dir   = "v0_1_3";
  inputs."isaac".type  = "github";
  inputs."isaac".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isaac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-uuids-v0_1_5"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-uuids-v0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}