{
  description = ''The core types and functions of the SciNim ecosystem'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-scinim-v0_2_2.flake = false;
  inputs.src-scinim-v0_2_2.ref   = "refs/tags/v0.2.2";
  inputs.src-scinim-v0_2_2.owner = "SciNim";
  inputs.src-scinim-v0_2_2.repo  = "scinim";
  inputs.src-scinim-v0_2_2.type  = "github";
  
  inputs."fusion".owner = "nim-nix-pkgs";
  inputs."fusion".ref   = "master";
  inputs."fusion".repo  = "fusion";
  inputs."fusion".dir   = "v1_1";
  inputs."fusion".type  = "github";
  inputs."fusion".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer".owner = "nim-nix-pkgs";
  inputs."arraymancer".ref   = "master";
  inputs."arraymancer".repo  = "arraymancer";
  inputs."arraymancer".dir   = "v0_7_13";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polynumeric".owner = "nim-nix-pkgs";
  inputs."polynumeric".ref   = "master";
  inputs."polynumeric".repo  = "polynumeric";
  inputs."polynumeric".dir   = "v0_2_1";
  inputs."polynumeric".type  = "github";
  inputs."polynumeric".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polynumeric".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpy".owner = "nim-nix-pkgs";
  inputs."nimpy".ref   = "master";
  inputs."nimpy".repo  = "nimpy";
  inputs."nimpy".dir   = "master";
  inputs."nimpy".type  = "github";
  inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-scinim-v0_2_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-scinim-v0_2_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}