{
  description = ''SuperCollider wrapper for omni.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-omnicollider-0_2_2.flake = false;
  inputs.src-omnicollider-0_2_2.owner = "vitreo12";
  inputs.src-omnicollider-0_2_2.ref   = "refs/tags/0.2.2";
  inputs.src-omnicollider-0_2_2.repo  = "omnicollider";
  inputs.src-omnicollider-0_2_2.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni".owner = "nim-nix-pkgs";
  inputs."omni".ref   = "master";
  inputs."omni".repo  = "omni";
  inputs."omni".type  = "github";
  inputs."omni".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-omnicollider-0_2_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-omnicollider-0_2_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}