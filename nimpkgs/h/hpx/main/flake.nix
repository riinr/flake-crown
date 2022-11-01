{
  description = ''nim-hpx a STE||AR HPX wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hpx-main.flake = false;
  inputs.src-hpx-main.ref   = "refs/heads/main";
  inputs.src-hpx-main.owner = "ct-clmsn";
  inputs.src-hpx-main.repo  = "nim-hpx";
  inputs.src-hpx-main.type  = "github";
  
  inputs."cppstl".owner = "nim-nix-pkgs";
  inputs."cppstl".ref   = "master";
  inputs."cppstl".repo  = "cppstl";
  inputs."cppstl".dir   = "v0_6_0";
  inputs."cppstl".type  = "github";
  inputs."cppstl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony".owner = "nim-nix-pkgs";
  inputs."jsony".ref   = "master";
  inputs."jsony".repo  = "jsony";
  inputs."jsony".dir   = "1_1_3";
  inputs."jsony".type  = "github";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hpx-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-hpx-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}